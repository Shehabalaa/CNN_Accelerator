library ieee;
use ieee.std_logic_1164.all;
use work.types.arrayofregs16;

-- cnnadders entity

-- inputs ==> array of 25 registers to be added
-- filtertype ==> 0 for 3*3 filter and 1 for 5*5 filter
-- finalsum ==> the summation of the 25 inputs in case of 5*5 filter or the first 9 in case of 3*3 filter


entity cnnadderscnn is
  generic (wordsize : integer := 16);
  port(
      inputs: in arrayofregs16(0 to 24);
      filtertype: in std_logic;
      finalsum: out std_logic_vector(wordsize-1 downto 0)
    );

end cnnadderscnn;

------------------------------------------------------------

-- cnnadderscnn architecture

architecture cnnadderscnnarch of cnnadderscnn is

    signal sum1, sum2, sum3, sum3filter, sum4, totalsum: std_logic_vector(wordsize-1 downto 0);


    begin

        sum1map: entity work.adder8valuescnn generic map(wordsize) port map(inputs(0 to 7), sum1);
        sum2map: entity work.adder8valuescnn generic map(wordsize) port map(inputs(9 to 16), sum2);
        sum3map: entity work.adder8valuescnn generic map(wordsize) port map(inputs(17 to 24), sum3);

        sum3filtermap: entity work.nbitaddercnn generic map(wordsize) port map(sum1, inputs(8), '0', sum3filter);
        sumrestmap: entity work.nbitaddercnn generic map(wordsize) port map(sum2, sum3, '0', sum4);
        sumfinalmap: entity work.nbitaddercnn generic map(wordsize) port map(sum3filter, sum4, '0', totalsum);

        finalsummap: entity work.mux2cnn generic map(wordsize) port map(sum3filter, totalsum, filtertype, finalsum);


end architecture;