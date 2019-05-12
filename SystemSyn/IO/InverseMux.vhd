LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
--use ieee.math_real.ALL;

ENTITY InverseMux IS 
	GENERIC(n: Integer :=16);
	PORT(
		
		dataIn: IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		--sel: IN STD_LOGIC_VECTOR(ceil(log2(real(n)))-1 DOWNTO 0);
		sel: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		en,rst: IN STD_LOGIC;
		dataOut1: OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		dataOut2: OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		dataOut3: OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		dataOut4: OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		dataOut5: OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)
	);
END InverseMux;


ARCHITECTURE InverseMuxArchitecture OF InverseMux IS 

SIGNAL zeros: STD_LOGIC_VECTOR (n-1 DOWNTO 0);
BEGIN
zeros <= (OTHERS => '0');
dataOut1 <= dataIn WHEN sel = "000" AND en = '1'
ELSE zeros WHEN rst = '1'
ELSE dataIn;
dataOut2 <= dataIn WHEN sel = "001" AND en = '1'
ELSE zeros WHEN rst = '1'
ELSE dataIn;
dataOut3 <= dataIn WHEN sel = "010" AND en = '1'
ELSE zeros WHEN rst = '1'
ELSE dataIn;
dataOut4 <= dataIn WHEN sel = "011" AND en = '1'
ELSE zeros WHEN rst = '1'
ELSE dataIn;
dataOut5 <= dataIn WHEN sel = "100" AND en = '1'
ELSE zeros WHEN rst = '1'
ELSE dataIn;


END InverseMuxArchitecture;