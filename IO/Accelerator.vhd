Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--This is our entire accelerator chip
ENTITY Accelerator IS

PORT    (
	  din: in std_logic_vector(15 downto 0);
		clk, rst, imageOrCNN, INTR, load, processing: in std_logic;
		doneWithPhase, busy: out std_logic;
		result: out std_logic_vector(3 downto 0);
		FCResult: in std_logic_vector(3 DOWNTO 0);
    FCDone: in std_logic
	);

END ENTITY;

ARCHITECTURE AcceleratorArch of Accelerator IS
SIGNAL imgRamWrite, doneDMAFC, doneDMACNN, doneDMAImage, CNNRamWrite, FCRamWrite, high, low: std_logic;
SIGNAL imgRamDin: std_logic_vector(15 DOWNTO 0);
SIGNAL CNNRamDin: std_logic_vector(15 DOWNTO 0);
SIGNAL CNNRamDout, imgRamDout, FCRamDin: std_logic_vector(79 DOWNTO 0);
SIGNAL FCRamDout: std_logic_vector(399 DOWNTO 0);
SIGNAL FCRamAddress: std_logic_vector(15 DOWNTO 0);
SIGNAL CNNRamAddress: std_logic_vector(12 DOWNTO 0);
SIGNAL imgRamAddress: std_logic_vector(12 DOWNTO 0);

SIGNAL doneDMAImageOld, notClk, doneDMACNNOld, doneDMAFCOld: std_logic;
BEGIN
	notClk <= NOT clk;
	high <= '1';
	low <= '0';
	IOChip: Entity work.IOChip 
			PORT MAP(din, clk, rst, imageOrCNN, INTR, load, processing, doneWithPhase, busy, doneDMAFC, 
							 doneDMACNN, doneDMAImage, imgRamWrite, CNNRamWrite, FCRamWrite, imgRamAddress, imgRamDin, 
							 CNNRamAddress, CNNRamDin, FCRamAddress, FCRamDin, result, FCResult, FCDone);
	Weights: Entity work.RAMWithDone PORT MAP(clk, low, CNNRamWrite, rst, CNNRamAddress, CNNRamDin, CNNRamDout, doneDMACNNOld);
	Image: Entity work.RAMWithDone PORT MAP(clk, low, imgRamWrite, rst, imgRamAddress, imgRamDin, imgRamDout, doneDMAImageOld);
	FC: Entity work.RAMWithDone GENERIC MAP(16, 80, 400) PORT MAP(clk, low, FCRamWrite, rst, FCRamAddress, FCRamDin, FCRamDout, doneDMAFCOld);

	imageMFCLatch: Entity work.DFF PORT MAP(doneDMAImageOld, notClk, rst, high, doneDMAImage);
	CNNMFCLatch: Entity work.DFF PORT MAP(doneDMACNNOld, notClk, rst, high, doneDMACNN);
	FCMFCLatch: Entity work.DFF PORT MAP(doneDMAFCOld, notClk, rst, high, doneDMAFC);
END ARCHITECTURE;
