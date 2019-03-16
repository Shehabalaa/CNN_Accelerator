LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY DFF IS
	PORT(
		D: in std_logic;
		clk, rst: in std_logic;
		Q: out std_logic;
		);
END DFF;

Architecture DFFArch OF DFF IS 
BEGIN
	PROCESS(clk, rst)
		BEGIN
		IF (rst = '1') THEN 
			Q <= '0';
		ELSIF (rising_edge(clk)) THEN 
			Q <= D;
		END IF
	END PROCESS
END ARCHITECTURE