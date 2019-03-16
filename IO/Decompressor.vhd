Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Decompressor Entity
-- Receives data from CPU as input, forwards it to decompressor and DMA
-- Receives input control signals
ENTITY Decompressor IS

PORT    (
		dataIn: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		clk, en, rst: IN STD_LOGIC;
		dataOut: OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);

END ENTITY;

ARCHITECTURE DecompressorArchitecture of Decompressor IS

BEGIN

	MyReg: ENTITY work.Reg	PORT MAP(dataIn, en, clk, rst, dataOut);

END ARCHITECTURE;