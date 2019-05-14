library ieee;
use ieee.std_logic_1164.all;

-- mux2 entity

--if s = 0 then c = a
--if s = 1 then c = b

entity mux2cnn is

	generic(wordsize:integer :=32);
	port(
			a, b: in std_logic_vector(wordsize-1 downto 0);
			s: in std_logic;
			c: out std_logic_vector(wordsize-1 downto 0)
		);

end entity mux2cnn;

----------------------------------------------------------------------
-- mux2cnn architecture

architecture mux2cnnarch of mux2cnn is

begin

    c <= a when s = '0'
    else b;

end architecture;