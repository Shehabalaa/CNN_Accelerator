Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- This is the io Chip, everything belongs here
ENTITY IOChip IS

PORT(
		clk, rst, imageOrCNN, INTR, load, processing: in std_logic;
		done: out std_logic;
		din: in std_logic_vector(15 downto 0);
		dout: out std_logic_vector(3 downto 0)
	);

END ENTITY;

ARCHITECTURE IOChipArch of IOChip IS
SIGNAL doneDMAFC, doneDMACNN, doneDMAImage, doneDecomp, decompZeroState, 
			 doneWithPhase, CNNCounterEnable, decompDecrementorEnable, CNNRegisterEnable, 
			 imageDmaAddress, imageCounterEnable,imageRegisterEnable,toCNN, toFC,imageLoad, 
			 INTRDelayed, decompDataIn: std_logic;
SIGNAL interfaceOutput: std_logic_vector(15 downto 0);
SIGNAL imageDMADataOut, imageDMAAddressOut: std_logic_vector(15 downto 0);
SIGNAL CNNDMADataOut, CNNDMAAddressOut: std_logic_vector(15 downto 0);
SIGNAL decompDataOut: std_logic_vector(7 downto 0);

BEGIN
io: Entity work.IO GENERIC MAP(16,4) PORT MAP(Din, doneDMAFC, doneDMACNN, doneDMAImage, doneDecomp, INTR, clk, rst, processing, imageOrCNN,decompZeroState,doneWithPhase, CNNCounterEnable,CNNRegisterEnable,decompDecrementorEnable,imageLoad,imageCounterEnable,imageRegisterEnable, busy, toCNN, toFC, INTRDelayed,interfaceOutput,dout)
decompDataIn <= interfaceOutput(5 downto 0);
imageDmaAddress <= interfaceOutput(15 downto 6);

decomp: Entity work.Decompressor PORT MAP(decompDataIn,clk,decompDecrementorEnable,rst,imageLoad,INTRDelayed,
decompZeroState, decompDataOut);

imageDMA: Entity work.DMAImage PORT MAP(decompDataOut,imageDmaAddress,clk,imageCounerEnable,imageRegisterEnable,rst,INTRDelayed,imageDMADataOut,
imageDMAAddressOut);

cnnDMA: Entity work.DMACNN(interfaceOutput,clk,CNNCounterEnable,CNNRegisterEnable,rst,CNNDMADataOut,
CNNDMAAddressOut);

END ARCHITECTURE;

