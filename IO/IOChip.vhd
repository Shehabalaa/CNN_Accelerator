Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- This is the io Chip, everything belongs here
ENTITY IOChip IS

PORT    (
	  din: in std_logic_vector(15 downto 0);
		clk, rst, imageOrCNN, INTR, load, processing: in std_logic;
		donePhase, busy: out std_logic;
		doneDMAFC, doneDMACNN, doneDMAImage: in std_logic;
		imgRamWrite, CNNRamWrite, FCRamWrite: out std_logic;
		imgRamAddress: out std_logic_vector(12 DOWNTO 0);
		imgRamDin: out std_logic_vector(15 DOWNTO 0);
		CNNRamAddress: out std_logic_vector(12 DOWNTO 0);
		CNNRamDin: out std_logic_vector(15 DOWNTO 0);
		FCRamAddress: out std_logic_vector(15 DOWNTO 0);
		FCRamDin: out std_logic_vector(79 DOWNTO 0);
		result: out std_logic_vector(3 downto 0)
	);

END ENTITY;

ARCHITECTURE IOChipArchitecture of IOChip IS
signal decompZeroState,doneWithPhase, CNNCounterEnable, decompDecrementorEnable, CNNRegisterEnable, 
			 imageCounterEnable, imageRegisterEnable, toCNN, toFC,imageLoad, INTRDelayed: std_logic;
signal interfaceOutput,CNNDMADataOut, CNNDMAAddressOut,imageDMAAddressOut,imageDMADataOut: std_logic_vector(15 downto 0);
signal decompDataOut: std_logic_vector(7 downto 0);
signal decompDataIn: std_logic_vector(5 downto 0);
signal imageDMAAddress:std_logic_vector(9 downto 0);
BEGIN
io: Entity work.IO GENERIC MAP(16,4) 
					 PORT MAP(Din, doneDMAFC, doneDMACNN, doneDMAImage, INTR, clk, rst, processing, imageOrCNN, 
					 decompZeroState, doneWithPhase, CNNCounterEnable, CNNRegisterEnable, imageCounterEnable,
					 decompDecrementorEnable, imageRegisterEnable, busy, toCNN, toFC, INTRDelayed, imageLoad, interfaceOutput, result);
decompDataIn <= interfaceOutput(5 downto 0);
imageDmaAddress <= interfaceOutput(15 downto 6);

decomp: Entity work.Decompressor PORT MAP(decompDataIn,clk,decompDecrementorEnable,rst,imageLoad,INTRDelayed,
decompZeroState,decompDataOut);

imageDMA: Entity work.DMAImage PORT MAP(decompDataOut,imageDmaAddress,clk,imageCounterEnable,imageRegisterEnable,
rst,INTRDelayed,imageDMADataOut,imageDMAAddressOut);

cnnDMA: Entity work.DMACNN PORT MAP(interfaceOutput,clk,CNNCounterEnable,CNNRegisterEnable,rst,CNNDMADataOut,
CNNDMAAddressOut);

END ARCHITECTURE;
