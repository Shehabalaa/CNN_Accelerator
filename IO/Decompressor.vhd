Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Decompressor Entity
-- Receives data from Multiplexer then sends it to the DMA.
ENTITY Decompressor IS

PORT    (
		dataIn: IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		clk, en, rst, imageLoad, intrDelayed: IN STD_LOGIC;
		zeroState: OUT STD_LOGIC;
		dataOut: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);

END ENTITY;

ARCHITECTURE DecompressorArchitecture of Decompressor IS
signal countOut: STD_LOGIC_VECTOR(5 downto 0);
signal registerIn: STD_LOGIC_VECTOR(7 downto 0);
BEGIN
	Counter: Entity work.DownCounterAsyncLoad GENERIC MAP(n=>6) PORT MAP(loadData => dataIn, clk =>clk, 	en=>en,rst => rst,load => intrDelayed, counterOutput => countOut);
	registerIN <= "00000001";
	zeroState <= NOT(countOut(0) OR countOut(1) OR countOut(2) OR countOut(3) OR countOut(4) OR countOut(5));
	MyReg: ENTITY work.Reg	GENERIC MAP(8) PORT MAP(registerIn, imageLoad, clk, rst, dataOut);

END ARCHITECTURE;
