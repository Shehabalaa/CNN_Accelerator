library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;

-- decoder entity

entity decodercnn is
        generic (wordsize : integer := 3); --wordsize : number of selection lines
    port(
            t : in std_logic_vector(wordsize-1  downto 0); 
            en:in std_logic;
            decoded : out std_logic_vector((2**wordsize)-1 downto 0)
        );

end decodercnn;

----------------------------------------------------------------------
-- decodercnn architecture

architecture decodercnnarch of decodercnn is

    begin
     

        loop1: for i in 0 to (2**wordsize -1)
            generate
                
                decoded(i) <= '1' when i = to_integer(unsigned(t)) and en = '1'
                else '0';

            end generate;


end decodercnnarch;
