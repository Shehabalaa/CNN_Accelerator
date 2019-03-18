LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL; 

ENTITY ShiftReg2ValuesRight IS
	GENERIC (n:INTEGER :=32);
	PORT(
	inp: IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	outp: INOUT STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	clk,en,rst,load: IN STD_LOGIC 
	);
END ShiftReg2ValuesRight;

ARCHITECTURE ShiftReg2ValuesRightArch OF ShiftReg2ValuesRight IS
BEGIN
	PROCESS(clk,rst)
	BEGIN
		IF rst='1' THEN
			outp <= (n-1 DOWNTO 0 => '0');
	ELSIF load = '1' THEN
	      outp <= inp;
        ELSIF clk'EVENT AND clk='1' THEN
            IF en='1' THEN
                outp <= outp(n-1) & outp(n-1) & outp(n-1 DOWNTO 2);
            END IF;
		END IF;
	END PROCESS;
END ARCHITECTURE;
