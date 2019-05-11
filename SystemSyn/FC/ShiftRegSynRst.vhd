LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL; 

ENTITY ShiftRegSynRst IS
	GENERIC (n:INTEGER :=32);
	PORT(
	outp: INOUT STD_LOGIC_VECTOR(n DOWNTO 0);
	clk,en,rst: IN STD_LOGIC 
	);
END ShiftRegSynRst;

ARCHITECTURE ShiftRegSynRstArch OF ShiftRegSynRst IS
BEGIN
	PROCESS(clk,rst)
	BEGIN
        IF clk'EVENT AND clk='1' THEN
            IF rst='1' THEN
            outp <= (n DOWNTO 1 => '0') & '1';
            ElsIF en='1' THEN
                outp <= outp(n-1 DOWNTO 0) & '0';
            END IF;
		END IF;
	END PROCESS;
END ShiftRegSynRstArch;