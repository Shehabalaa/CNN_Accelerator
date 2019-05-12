library ieee;
use ieee.std_logic_1164.all;

-- mux2io entity

--if s = 0 then c = a
--if s = 1 then c = b

entity mux2io is

	generic(wordsize:integer :=32);
	port(
			a, b: in std_logic_vector(wordsize-1 downto 0);
			s: in std_logic;
			c: out std_logic_vector(wordsize-1 downto 0)
		);

end entity mux2io;

----------------------------------------------------------------------
-- mux2io architecture

architecture mux2ioarch of mux2io is

begin

    c <= a when s = '0'
    else b;

end architecture;