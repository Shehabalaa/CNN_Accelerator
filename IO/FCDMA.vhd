LIBRARY ieee;

USE ieee.std_logic_1164.ALL;


ENTITY FCDMA IS 
	GENERIC(n: integer := 16);
	PORT(
		dataIn: IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		clk,rst,addressCounterEnable,delayedInt,doneFCRAM: IN STD_LOGIC;
		address: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		dataOut: OUT STD_LOGIC_VECTOR(5*(n)-1 DOWNTO 0);
		write: OUT STD_LOGIC
	); 
END ENTITY FCDMA;


ARCHITECTURE FCDMAArch OF FCDMA IS 

TYPE RegistersType IS ARRAY (0 TO 4) OF  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
TYPE enableType IS ARRAY (0 TO 4) OF STD_LOGIC;

SIGNAL registersIn : RegistersType;
SIGNAL registersOut: RegistersType;
SIGNAL enArray: enableType;
SIGNAL moduloCounterSignal: STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL zeros: STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL notClk, moduloRst: STD_LOGIC;

BEGIN
	notClk <= NOT clk;
	
	loop1: FOR i IN 0 TO 4
	GENERATE 

	
	fx: ENTITY work.Reg GENERIC MAP (n) PORT MAP(registersIn(i),enArray(i),clk,rst,registersOut(i));

	END GENERATE;
	
	moduloRst <= rst OR doneFCRAM;
	ModuloCounter: ENTITY work.ModuloCounter GENERIC MAP(3) PORT MAP("101",delayedInt,moduloRst,notClk,moduloCounterSignal);
	InverseMux: ENTITY work.InverseMux GENERIC MAP(n) PORT MAP(dataIn,moduloCounterSignal,delayedInt,rst,registersIn(0),registersIn(1),registersIn(2), registersIn(3), registersIn(4));
	MAR: ENTITY work.Counter2 GENERIC MAP(16) PORT MAP(addressCounterEnable,rst,clk,address);

	enArray(0) <= '1' WHEN moduloCounterSignal ="000"
	ELSE '0';
	enArray(1) <= '1' WHEN moduloCounterSignal = "001"
	ELSE '0';
	enArray(2) <= '1' WHEN moduloCounterSignal = "010"
	ELSE '0';
	enArray(3) <= '1' WHEN moduloCounterSignal = "011"
	ELSE '0';
	enArray(4) <= '1' WHEN moduloCounterSignal = "100"
	ELSE '0';
	
	dataOut <= registersOut(4)&registersOut(3)&registersOut(2)&registersOut(1)&registersOut(0) WHEN moduloCounterSignal = "101";
	write <= '1' WHEN moduloCounterSignal = "101" ELSE '0';
	zeros <= (OTHERS => '0');

END ARCHITECTURE;