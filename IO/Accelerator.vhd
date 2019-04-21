Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--This is our entire accelerator chip
ENTITY Accelerator IS

PORT    (
	  din: in std_logic_vector(15 downto 0);
		clk, rst, imageOrCNN, INTR, load, processing: in std_logic;
		doneWithPhase, busy: out std_logic;
		result: out std_logic_vector(3 downto 0)
	);

END ENTITY;

ARCHITECTURE AcceleratorArch of Accelerator IS
SIGNAL imgRamWrite, doneDMAFC, doneDMACNN, doneDMAImage, CNNRamWrite, FCRamWrite, high, low: std_logic;
SIGNAL imgRamDin: std_logic_vector(15 DOWNTO 0);
SIGNAL CNNRamDin: std_logic_vector(15 DOWNTO 0);
SIGNAL CNNRamDout, imgRamDout: std_logic_vector(79 DOWNTO 0);
SIGNAL FCRamDin, FCRamDout: std_logic_vector(79 DOWNTO 0);
SIGNAL FCRamAddress: std_logic_vector(15 DOWNTO 0);
SIGNAL CNNRamAddress: std_logic_vector(12 DOWNTO 0);
SIGNAL imgRamAddress: std_logic_vector(12 DOWNTO 0);
BEGIN
	high <= '1';
	low <= '0';
	IOChip: Entity work.IOChip 
			PORT MAP(din, clk, rst, imageOrCNN, INTR, load, processing, doneWithPhase, busy, doneDMAFC, 
							 doneDMACNN, doneDMAImage, imgRamWrite, CNNRamWrite, FCRamWrite, imgRamAddress, imgRamDin, 
							 CNNRamAddress, CNNRamDin, FCRamAddress, FCRamDin, result);
	Weights: Entity work.RAMWithDone PORT MAP(clk, low, CNNRamWrite, rst, CNNRamAddress, CNNRamDin, CNNRamDout, doneDMACNN);
	Image: Entity work.RAMWithDone PORT MAP(clk, low, imgRamWrite, rst, imgRamAddress, imgRamDin, imgRamDout, doneDMAImage);
	FC: Entity work.Ram PORT MAP(clk, FCRamWrite, rst, FCRamAddress, FCRamDin, FCRamDout, doneDMAFC);
END ARCHITECTURE;
