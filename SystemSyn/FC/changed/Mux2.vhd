library ieee;
use ieee.std_logic_1164.all;

-- mux2fc entity

--if s = 0 then c = a
--if s = 1 then c = b

entity mux2fc is

	generic(wordsize:integer :=32);
	port(
			a, b: in std_logic_vector(wordsize-1 downto 0);
			s: in std_logic;
			c: out std_logic_vector(wordsize-1 downto 0)
		);

end entity mux2fc;

----------------------------------------------------------------------
-- mux2fc architecture

architecture mux2fcarch of mux2fc is

begin

    c <= a when s = '0'
    else b;

end architecture;