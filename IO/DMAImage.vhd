Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Image DMA receives address and data and sends it to RAM after counting over it.
ENTITY DMAImage IS

PORT    (
		dataIn: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		addressIn: IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		clk, enableImageCounter,enableImageRegister,rst,intrDelayed: IN STD_LOGIC;
		dataOut: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		addressOut: OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);

END ENTITY;

ARCHITECTURE DMAImageArchitecture of DMAImage IS
component Counter IS

    GENERIC (n: integer :=2);

    PORT(
        load: in std_logic_vector(n-1 downto 0);
        reset, clk, isLoad: in std_logic;
        count: out std_logic_vector(n-1 downto 0)
    );

END component;
signal addressCounterIn: STD_LOGIC_VECTOR(15 downto 0);
signal registerIn: STD_LOGIC_VECTOR(15 downto 0);
BEGIN
	addressCounterIn <= "000000" & addressIn;
-- Address Counter needs enable
	addressCounter: Counter GENERIC MAP(16) PORT MAP(reset => rst, clk => clk, isLoad => intrDelayed, load => addressCounterIn, count => addressOut);
	registerIn <= "00000000" & dataIn;
	MyReg: ENTITY work.Reg	PORT MAP(registerIn, enableImageRegister, clk, rst, dataOut);

END ARCHITECTURE;
