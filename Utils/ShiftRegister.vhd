LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL; 

ENTITY ShiftReg IS
	GENERIC (n:INteger :=32);
	PORT(
	outp: OUT STD_LOGIC_VECTOR(n DOWNTO 0);
	clk,en,rst: IN STD_LOGIC
	);
END ShiftReg;

ARCHITECTURE ShiftRegArch OF ShiftReg IS
    SIGNAL shIFt : STD_LOGIC_VECTOR(n DOWNTO 0);
BEGIN
	PROCESS(clk,rst)
	BEGIN
		IF rst = '1' OR FALLING_EDGE(en) THEN outp <= (n DOWNTO 1 => '0') & '1';
		ELSIF en ='1' AND RISING_EDGE(clk) THEN outp <= outp(n-1 DOWNTO 0) & '0';
		END IF;
	END PROCESS;
END ShiftRegArch;