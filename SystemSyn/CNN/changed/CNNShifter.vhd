library ieee;
use ieee.std_logic_1164.all;

-- cnnshifter entity

-- this entity shits input right 3 or 5 depending on the filter size

-- a ==> input to be shifted
-- filtersize ==> size of the filter (0 for size 3 and 1 for size 5)
-- shiftedout ==> value after shifting

entity cnnshiftercnn is
  generic (wordsize : integer := 16);
  port(
      a: in std_logic_vector(wordsize - 1 downto 0);
      filtersize: in std_logic;
      shiftedout: out std_logic_vector(wordsize - 1 downto 0)
    );

end cnnshiftercnn;

------------------------------------------------------------

-- cnnshiftercnn architecture

architecture cnnshiftercnnarch of cnnshiftercnn is


    begin
        -- todo: take care of the sign ya samir
        shiftedout <= a(wordsize-1)&a(wordsize-1)&a(wordsize-1) & a(wordsize-1 downto 3) when filtersize = '0'
        else a(wordsize-1)&a(wordsize-1)&a(wordsize-1)&a(wordsize-1)&a(wordsize-1) & a(wordsize-1 downto 5);

end architecture;