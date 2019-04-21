Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- This is the io Chip, everything belongs here
ENTITY IOChip IS

PORT    (
	  din: in std_logic_vector(15 downto 0);
		clk, rst, imageOrCNN, INTR, load, processing: in std_logic;
		doneWithPhase, busy: out std_logic;
		doneDMAFC, doneDMACNN, doneDMAImage: in std_logic;
		imgRamWrite, CNNRamWrite, FCRamWrite: inout std_logic;
		imageDMAAddressOut: out std_logic_vector(12 DOWNTO 0);
		imageDMADataOut: out std_logic_vector(15 DOWNTO 0);
		CNNDMAAddressOut: out std_logic_vector(12 DOWNTO 0);
		CNNDMADataOut: out std_logic_vector(15 DOWNTO 0);
		FCRamAddress: out std_logic_vector(15 DOWNTO 0);
		FCRamDin: out std_logic_vector(79 DOWNTO 0);
		result: out std_logic_vector(3 downto 0)
	);

END ENTITY;

ARCHITECTURE IOChipArchitecture of IOChip IS
signal decompZeroState, CNNCounterEnable, decompDecrementorEnable, CNNRegisterEnable, imageCounterEnable, 
			 imageRegisterEnable, FCCounterEnable, FCRegisterEnable, toCNN, toFC,imageLoad, INTRDelayed: std_logic;
signal interfaceOutput: std_logic_vector(15 downto 0);
signal decompDataOut: std_logic_vector(7 downto 0);
signal decompDataIn: std_logic_vector(5 downto 0);
signal imageDMAAddress:std_logic_vector(9 downto 0);
BEGIN
io: Entity work.IO GENERIC MAP(16,4) 
					 PORT MAP(Din, doneDMAFC, doneDMACNN, doneDMAImage, INTR, load, clk, rst, processing, imageOrCNN, 
					 decompZeroState, doneWithPhase, CNNCounterEnable, imageCounterEnable, FCCounterEnable,
					 decompDecrementorEnable, busy, toCNN, toFC, INTRDelayed, imageLoad, imageRegisterEnable, CNNRegisterEnable, 
					 FCRegisterEnable, imgRamWrite, CNNRamWrite, FCRamWrite, interfaceOutput, result);
decompDataIn <= interfaceOutput(5 downto 0);
imageDmaAddress <= interfaceOutput(15 downto 6);

decomp: Entity work.Decompressor1 PORT MAP(decompDataIn,clk,decompDecrementorEnable,rst,imageLoad,INTRDelayed,
decompZeroState,decompDataOut);

imageDMA: Entity work.DMAImage PORT MAP(decompDataOut,imageDmaAddress,clk,imageCounterEnable,imageRegisterEnable,
rst,INTRDelayed,imageDMADataOut,imageDMAAddressOut);

cnnDMA: Entity work.DMACNN PORT MAP(interfaceOutput,clk,CNNCounterEnable,CNNRegisterEnable,rst,CNNDMADataOut,
CNNDMAAddressOut);

END ARCHITECTURE;