Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Decompressor Entity
-- Receives data from CPU as input, forwards it to decompressor and DMA
-- Receives input control signals
ENTITY Decompressor IS

PORT    (
		dataIn: IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		clk, en, rst,imageLoad,intrDelayed: IN STD_LOGIC;
		zeroState: OUT STD_LOGIC;
		dataOut: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);

END ENTITY;

ARCHITECTURE DecompressorArchitecture of Decompressor IS
component DownCounterAsyncLoad IS
	GENERIC (n: integer :=16);
	PORT(
		loadData: in std_logic_vector(n - 1 downto 0);
		en, load, rst, clk: in std_logic;
		counterOutput: out std_logic_vector(n - 1 downto 0)
	);
end component;
signal countOut: STD_LOGIC_VECTOR(5 downto 0);
signal registerIn: STD_LOGIC_VECTOR(7 downto 0);
BEGIN
	Counter: DownCounterAsyncLoad GENERIC MAP(n=>6) PORT MAP(loadData => dataIn, clk =>clk, 	en=>en,rst => rst,load => intrDelayed, counterOutput => countOut);
	registerIN <= "00000001";
	zeroState <= NOT(countOut(0) or countOut(1) or countOut(2) or countOut(3) or countOut(4) or countOut(5));
	MyReg: ENTITY work.Reg	PORT MAP(registerIn, imageLoad, clk, rst, dataOut);

END ARCHITECTURE;