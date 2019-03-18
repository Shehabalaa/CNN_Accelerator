Library IEEE;
use ieee.std_logic_1164.all;

-- Register Entity with asynchronous parallel load

ENTITY RegWithLoad IS

	Generic(wordSize:integer :=32);
	PORT(
			D: in STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0);
			en, clk, rst, load: in STD_LOGIC;
			Q: out STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0)
		);

END ENTITY RegWithLoad;

----------------------------------------------------------------------
-- Register Architecture

ARCHITECTURE RegWithLoadArch of RegWithLoad is

BEGIN

	PROCESS(clk, en, rst, load)
		BEGIN
			IF rst = '1' THEN
				Q <= (others=>'0');
			ELSIF load = '1' AND en = '1' THEN
				Q <= D;
      ELSIF rising_edge(clk) AND en = '1' THEN
				Q <= D;
			END IF;

		END PROCESS;

END ARCHITECTURE;