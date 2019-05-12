Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- CNN DMA receives address and data and sends it to RAM after counting over it.
ENTITY DMACNN IS

PORT    (
		dataIn: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		clk, enableCNNCounter,enableCNNRegister,rst: IN STD_LOGIC;
		dataOut: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		addressOut: OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
	);

END ENTITY;

ARCHITECTURE DMACNN of DMACNN IS
BEGIN
	addressCounter: Entity work.IOCounter5 GENERIC MAP(12) PORT MAP(enableCNNCounter, rst, clk, addressOut);
	MyReg: ENTITY work.Reg	GENERIC MAP(16) PORT MAP(dataIn, enableCNNRegister, clk, rst, dataOut);

END ARCHITECTURE;
