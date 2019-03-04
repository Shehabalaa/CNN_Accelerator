LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL; 

ENTITY ShiftReg IS
	GENERIC (n:INteger :=32);
	PORT(
	outp: INOUT STD_LOGIC_VECTOR(n DOWNTO 0);
	clk,en,rst1,rst2: IN STD_LOGIC -- if you want to use this entity pult rst2 to '0' and deal with rst1 as normal rst
	);
END ShiftReg;

ARCHITECTURE ShiftRegArch OF ShiftReg IS
BEGIN
	PROCESS(clk,rst1,rst2)
	BEGIN
		IF rst1='1' THEN
			outp <= (n DOWNTO 1 => '0') & '1';
        ELSIF rst2'EVENT AND rst2='1' THEN 
            outp <= (n DOWNTO 1 => '0') & '1';
        ELSIF clk'EVENT AND clk='1' THEN
            IF en='1' THEN
                outp <= outp(n-1 DOWNTO 0) & '0';
            END IF;
		END IF;
	END PROCESS;
END ShiftRegArch;