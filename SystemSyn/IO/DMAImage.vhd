Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Image DMA receives address and data and sends it to RAM after counting over it.
ENTITY DMAImage IS

PORT    (
		dataIn: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		addressIn: IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		clk, enableImageCounter,enableImageRegister,rst,intrDelayed: IN STD_LOGIC;
		dataOut: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		addressOut: OUT STD_LOGIC_VECTOR(12 DOWNTO 0)
	);

END ENTITY;

ARCHITECTURE DMAImage of DMAImage IS
signal addressCounterIn: STD_LOGIC_VECTOR(12 downto 0);
signal registerIn: STD_LOGIC_VECTOR(15 downto 0);
BEGIN
	addressCounterIn <= "000" & addressIn;
-- Address Counter needs enable
	addressCounter: Entity work.UpCounterSyncLoad GENERIC MAP(13) PORT MAP(addressCounterIn, enableImageCounter, intrDelayed , rst, clk, addressOut);
	registerIn <= dataIn & "00000000";
	MyReg: ENTITY work.Reg	GENERIC MAP(16) PORT MAP(registerIn, enableImageRegister, clk, rst, dataOut);

END ARCHITECTURE;
