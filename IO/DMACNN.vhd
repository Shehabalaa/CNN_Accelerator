Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- CNN DMA receives address and data and sends it to RAM after counting over it.
ENTITY DMACNN IS

PORT    (
		dataIn: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		clk, enableCNNCounter,enableCNNRegister,rst: IN STD_LOGIC;
		dataOut: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		addressOut: OUT STD_LOGIC_VECTOR(12 DOWNTO 0)
	);

END ENTITY;

ARCHITECTURE DMACNN of DMACNN IS
signal addressCounterIn: STD_LOGIC_VECTOR(12 downto 0);
BEGIN
	addressCounterIn <= "0000000000000";
	addressCounter: Entity work.UpCounterAsyncLoad GENERIC MAP(13) PORT MAP(addressCounterIn, enableCNNCounter, '0' , rst, clk, addressOut);
	MyReg: ENTITY work.Reg	GENERIC MAP(16) PORT MAP(dataIn, enableCNNRegister, clk, rst, dataOut);

END ARCHITECTURE;
