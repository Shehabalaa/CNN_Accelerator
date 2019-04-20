<<<<<<< HEAD
Library IEEE;
use ieee.std_logic_1164.all;

-- Register Entity

ENTITY Reg IS

	Generic(wordSize:integer :=32);
	PORT(
			D: in STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0);
			en, clk, rst: in STD_LOGIC;
			Q: out STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0)
		);

END ENTITY Reg;

----------------------------------------------------------------------
-- Register Architecture

ARCHITECTURE RegArch of Reg is

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

||||||| merged common ancestors
Library IEEE;
use ieee.std_logic_1164.all;

-- Register Entity

ENTITY Reg IS

		Generic(wordSize:integer :=32);
	PORT(
			D: in STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0);
			en, clk, rst: in STD_LOGIC;
			Q: out STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0)
		);

END ENTITY Reg;

----------------------------------------------------------------------
-- Register Architecture

ARCHITECTURE RegArch of Reg is

BEGIN

	PROCESS(D,clk, en, rst)
		BEGIN
			IF rst ='1' THEN
				Q <= (others=>'0');
			ELSIF rising_edge(clk) AND en='1' THEN
				Q <= D;
			END IF;

		END PROCESS;

=======
Library IEEE;
use ieee.std_logic_1164.all;

-- Register Entity

ENTITY Reg IS

	Generic(wordSize:integer :=32);
	PORT(
			D: in STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0);
			en, clk, rst: in STD_LOGIC;
            Q: out STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0);
            Qbar: out STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0)
		);

END ENTITY Reg;

----------------------------------------------------------------------
-- Register Architecture

ARCHITECTURE RegArch of Reg is

BEGIN

	PROCESS(D,clk, en, rst)
		BEGIN
			IF rst ='1' THEN
                Q <= (others=>'0');
                Qbar <= (others=>'1');
            ELSIF clk'EVENT AND clk='1' THEN
                IF en='1' THEN
                    Q <= D;
                    Qbar <= NOT D;
                END IF;
			END IF;

		END PROCESS;

>>>>>>> 7ceb2789c68532f5df989f5c599d245d1c2af938
END ARCHITECTURE;