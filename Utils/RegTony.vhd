Library IEEE;
use ieee.std_logic_1164.all;

-- Register Entity

ENTITY RegTony IS

	Generic(wordSize:integer :=32);
	PORT(
			D: in STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0);
			load: in STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0);
			en, clk, rst: in STD_LOGIC;
            Q: out STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0);
            Qbar: out STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0)
		);

END ENTITY RegTony;

----------------------------------------------------------------------
-- Register Architecture

ARCHITECTURE RegTonyArch of RegTony is

BEGIN

	PROCESS(D,clk, en, rst)
		BEGIN
			IF rst ='1' THEN
                Q <= load;
                Qbar <= (others=>'1');
            ELSIF clk'EVENT AND clk='1' THEN
                IF en='1' THEN
                    Q <= D;
                    Qbar <= NOT D;
                END IF;
			END IF;

		END PROCESS;

END ARCHITECTURE;