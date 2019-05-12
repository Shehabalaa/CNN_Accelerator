library ieee;
use ieee.std_logic_1164.all;
use work.types.arrayofregs16;

-- adder8valuescnn entity



entity adder8valuescnn is
  generic (wordsize : integer := 16);
  port(
      inputs: in arrayofregs16(0 to 7);
      sum: out std_logic_vector(wordsize-1 downto 0)
    );

end adder8valuescnn;

------------------------------------------------------------

-- adder8valuescnn architecture

architecture adder8valuescnnarch of adder8valuescnn is

    signal sum1, sum2: std_logic_vector(wordsize-1 downto 0);


    begin

        sum1map: entity work.adder4valuescnn generic map(wordsize) port map(inputs(0), inputs(1), inputs(2), inputs(3), sum1);
        sum2map: entity work.adder4valuescnn generic map(wordsize) port map(inputs(4), inputs(5), inputs(6), inputs(7), sum2);

        sumfinalmap: entity work.nbitaddercnn generic map(wordsize) port map(sum1, sum2, '0', sum);

end architecture;