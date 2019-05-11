Library IEEE;
use ieee.std_logic_1164.all;

-- Register Entity

ENTITY FlibFlob IS

	PORT(
			D: in STD_LOGIC;
			en, clk, rst: in STD_LOGIC;
            Q: out STD_LOGIC;
            Qbar: out STD_LOGIC
		);

END ENTITY FlibFlob;

----------------------------------------------------------------------
-- Register Architecture

ARCHITECTURE FlibFlobArch of FlibFlob is

BEGIN

	PROCESS(D,clk, en, rst)
		BEGIN
			IF rst ='1' THEN
                Q <= '0';
                Qbar <= '1';
            ELSIF clk'EVENT AND clk='1' THEN
                IF en='1' THEN
                    Q <= D;
                    Qbar <= NOT D;
                END IF;
			END IF;

		END PROCESS;

END ARCHITECTURE;