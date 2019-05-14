library ieee;
use ieee.std_logic_1164.all;

-- adder4values entity



entity adder4valuescnn is
  generic (wordsize : integer := 16);
  port(
      a, b, c, d: in std_logic_vector(wordsize-1 downto 0);
      sum: out std_logic_vector(wordsize-1 downto 0)
    );

end adder4valuescnn;

------------------------------------------------------------

-- adder4valuescnn architecture

architecture adder4valuescnnarch of adder4valuescnn is

    signal sum1, sum2: std_logic_vector(wordsize-1 downto 0);


    begin

        sum1map: entity work.nbitaddercnn generic map(wordsize) port map(a, b, '0', sum1);
        sum2map: entity work.nbitaddercnn generic map(wordsize) port map(c, d, '0', sum2);

        sumfinalmap: entity work.nbitaddercnn generic map(wordsize) port map(sum1, sum2, '0', sum);

end architecture;