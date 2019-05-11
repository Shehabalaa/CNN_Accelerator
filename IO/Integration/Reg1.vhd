Library IEEE;
use ieee.std_logic_1164.all;

-- Reg1ister Entity

ENTITY Reg1 IS

	Generic(wordSize:integer :=16);
	PORT(
			D: in STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0);
			en, clk, rst: in STD_LOGIC;
			Q: out STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0)
		);

END ENTITY Reg1;

----------------------------------------------------------------------
-- Reg1ister Architecture

ARCHITECTURE Reg1Arch of Reg1 is

BEGIN

	PROCESS(D,clk, en, rst)
		BEGIN
			IF rst ='1' THEN
				Q <= (others=>'0');
            ELSIF clk'EVENT AND clk='1' THEN
                IF en='1' THEN
                    Q <= D;
                END IF;
			END IF;

		END PROCESS;

END ARCHITECTURE;