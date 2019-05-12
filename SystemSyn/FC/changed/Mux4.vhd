library ieee;
use ieee.std_logic_1164.all;

-- mux4fc entity

--if s = 00 then z = a
--if s = 01 then z = b
--if s = 10 then z = c
--if s = 11 then z = d

entity mux4fc is

	generic(wordsize:integer :=32);
	port(
			a, b, c, d: in std_logic_vector(wordsize-1 downto 0);
			s: in std_logic_vector(1 downto 0);
			z: out std_logic_vector(wordsize-1 downto 0)
		);

end entity mux4fc;

----------------------------------------------------------------------
-- mux4fc architecture

architecture mux4fcarch of mux4fc is

begin

    z <= a when s = "00"
    else b when s = "01"
    else c when s = "10"
    else d when s = "11";

end architecture;