Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--This is our entire accelerator chip
ENTITY Accelerator IS

PORT    (
	  din: in std_logic_vector(15 downto 0);
		clk, rst, imageOrCNN, INTR, load, processing: in std_logic;
		doneWithPhase, busy: out std_logic;
		result: out std_logic_vector(3 downto 0);
		FCResult: inout std_logic_vector(3 DOWNTO 0);
		ChipDone: inout std_logic
	);

END ENTITY;

ARCHITECTURE AcceleratorArch of Accelerator IS
SIGNAL imgRamWrite, doneDMAFC, doneDMACNN, doneDMAImage, CNNRamWrite, FCRamWrite, high, low, toCNN, toFC: std_logic;
SIGNAL imgRamDin: std_logic_vector(15 DOWNTO 0);
SIGNAL CNNRamDin: std_logic_vector(15 DOWNTO 0);
SIGNAL CNNRamDout: std_logic_vector(39 DOWNTO 0);
SIGNAL imgRamDout, FCRamDin: std_logic_vector(79 DOWNTO 0);
SIGNAL FCRamDout: std_logic_vector(399 DOWNTO 0);
SIGNAL FCRamAddress: std_logic_vector(15 DOWNTO 0);
SIGNAL CNNRamAddress: std_logic_vector(11 DOWNTO 0);
SIGNAL imgRamAddress: std_logic_vector(12 DOWNTO 0);
SIGNAL CNNReadRamAddress: std_logic_vector(11 DOWNTO 0);
SIGNAL imgReadRamAddress: std_logic_vector(12 DOWNTO 0);
SIGNAL CNNReadMFC, ImageReadMFC, finishRamWeights: std_logic;
SIGNAL doneDMAImageOld, notClk, doneDMACNNOld, doneDMAFCOld, 
			 weightsRamRead, windowRamWrite, windowRamRead, finishNetwork, finalImgRead: std_logic;
SIGNAL finalImgRamWrite, readRamNeorons, readRamWeights: std_logic;
SIGNAL windowRamDataOutBus, finalImgRamDin: std_logic_vector(15 DOWNTO 0);
SIGNAL windowRamAddressWrite: std_logic_vector(12 DOWNTO 0);
SIGNAL finalImgRamWriteAddress: std_logic_vector(12 DOWNTO 0);
SIGNAL defaultAddressNeorons: std_logic_vector (12 DOWNTO 0) ;
SIGNAL dmaAddRamNeorons : std_logic_vector (12 DOWNTO 0) ;
SIGNAL finalImgReadRamAddress : std_logic_vector (12 DOWNTO 0) ;
SIGNAL dmaAddRamWeights : std_logic_vector (15 DOWNTO 0) ;
BEGIN
	finalImgRamWrite <= imgRamWrite OR windowRamWrite;
	finalImgRamDin <= windowRamDataOutBus WHEN windowRamWrite = '1' AND imgRamWrite = '0'
										ELSE imgRamDin WHEN imgRamWrite = '1' AND windowRamWrite = '0'
										ELSE (others => '0');
	finalImgRamWriteAddress <= windowRamAddressWrite WHEN windowRamWrite = '1' AND imgRamWrite = '0'
										ELSE imgRamAddress WHEN imgRamWrite = '1' AND windowRamWrite = '0'
										ELSE (others => '0');

	finalImgReadRamAddress <= imgReadRamAddress WHEN windowRamRead = '1' AND readRamNeorons = '0'
										ELSE dmaAddRamNeorons WHEN readRamNeorons = '1' AND windowRamRead = '0'
										ELSE (others => '0');
	finalImgRead <= windowRamRead OR readRamNeorons;
	
	notClk <= NOT clk;
	high <= '1';
	low <= '0';
	IOChip: Entity work.IOChip 
			PORT MAP(din, clk, rst, imageOrCNN, INTR, load, processing, doneWithPhase, busy, doneDMAFC, 
							 doneDMACNN, doneDMAImage, imgRamWrite, CNNRamWrite, FCRamWrite, imgRamAddress, imgRamDin, 
							 CNNRamAddress, CNNRamDin, FCRamAddress, FCRamDin, result, FCResult, ChipDone, toCNN, toFC);
	Weights: Entity work.CNNRam PORT MAP(clk, weightsRamRead, CNNRamWrite, rst, CNNReadRamAddress, CNNRamAddress, 
																			CNNRamDin, CNNRamDout, CNNReadMFC, doneDMACNNOld);
	Image: Entity work.ImageRam PORT MAP(clk, finalImgRead, finalImgRamWrite, rst, finalImgReadRamAddress , finalImgRamWriteAddress, 
																			finalImgRamDin, imgRamDout, ImageReadMFC, doneDMAImageOld);
	FC: Entity work.FCRam GENERIC MAP(16, 80, 400) 
			PORT MAP(clk, readRamWeights, FCRamWrite, rst, dmaAddRamWeights, FCRamAddress, FCRamDin, FCRamDout, finishRamWeights, doneDMAFCOld);

	imageMFCLatch: Entity work.IODFF PORT MAP(doneDMAImageOld, notClk, rst, high, doneDMAImage);
	CNNMFCLatch: Entity work.IODFF PORT MAP(doneDMACNNOld, notClk, rst, high, doneDMACNN);
	FCMFCLatch: Entity work.IODFF PORT MAP(doneDMAFCOld, notClk, rst, high, doneDMAFC);

	CNNModule: Entity work.CNNModule_8_16_5_5_3_12_13 
			 PORT MAP(startCNN => toCNN, clk => clk, rst => rst, weightsRamDataInBus => CNNRamDout, 
			 windowRamDataInBus => imgRamDout, MFCWindowRam => ImageReadMFC, MFCWeightsRam => CNNReadMFC, 
			 MFCWrite => doneDMAImageOld, weightsRamAddress => CNNReadRamAddress, windowRamAddressRead => imgReadRamAddress,
			 windowRamAddressWrite => windowRamAddressWrite, weightsRamRead => weightsRamRead, windowRamRead => windowRamRead,
			 windowRamWrite => windowRamWrite, windowRamDataOutBus => windowRamDataOutBus, finishNetwork => finishNetwork);

	FCENT: Entity work.FcMain 
				 PORT MAP(cnnDone => finishNetwork, ioDone => toFC, clk => notClk, reset => rst, 
				 defaultAddressNeorons => defaultAddressNeorons, dmaAddRamNeorons => dmaAddRamNeorons, 
				 readRamNeorons => readRamNeorons, finishRamNeorons => ImageReadMFC, dataOutRamNeorons => imgRamDout,
				 dmaAddRamWeights => dmaAddRamWeights, readRamWeights => readRamWeights, finishRamWeights => finishRamWeights,
				 dataOutRamWeights => FCRamDout(79 DOWNTO 0), fcDone => ChipDone, MAXPrediction => FCResult);
END ARCHITECTURE;
