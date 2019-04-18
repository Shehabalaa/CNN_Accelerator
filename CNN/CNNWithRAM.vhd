LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

ENTITY CNNWithRAM IS
  GENERIC (
    filterSize: INTEGER := 8;
    windowSize: INTEGER := 16;
    numUnits: INTEGER := 5;
    numRows: INTEGER := 5;
    decoderSize: INTEGER := 3;
    weightsAddressSize: INTEGER := 12;
    windowAddressSize: INTEGER := 13
  );
  PORT(
      clk, rst, start: IN STD_LOGIC;
      finishCNN: OUT STD_LOGIC
    );

END CNNWithRAM;

------------------------------------------------------------


ARCHITECTURE CNNWithRAMArch OF CNNWithRAM IS

    SIGNAL weightsRamDataInBus: STD_LOGIC_VECTOR((filterSize * numUnits)-1 DOWNTO 0);
    SIGNAL windowRamDataInBus: STD_LOGIC_VECTOR((windowSize * numUnits)-1 DOWNTO 0);
    SIGNAL MFCWindowRam: STD_LOGIC;
    SIGNAL MFCWeightsRam: STD_LOGIC;
    SIGNAL weightsRamAddress: STD_LOGIC_VECTOR(weightsAddressSize-1 DOWNTO 0);
    SIGNAL windowRamAddress: STD_LOGIC_VECTOR(windowAddressSize-1 DOWNTO 0);
    SIGNAL weightsRamRead: STD_LOGIC;
    SIGNAL windowRamRead: STD_LOGIC;
    SIGNAL windowRamWrite: STD_LOGIC;
    SIGNAL windowRamDataOutBus: STD_LOGIC_VECTOR((windowSize * numUnits)-1 DOWNTO 0);


    BEGIN

    CNNMap: ENTITY work.CNNModule 
        GENERIC MAP (
            filterSize,
            windowSize,
            numUnits,
            numRows,
            decoderSize,
            weightsAddressSize,
            windowAddressSize
        )
        PORT MAP (
            startCNN => start,
            clk => clk,
            rst => rst,
            weightsRamDataInBus => weightsRamDataInBus,
            windowRamDataInBus => windowRamDataInBus,
            MFCWindowRam => MFCWindowRam,
            MFCWeightsRam => MFCWeightsRam,
            weightsRamAddress => weightsRamAddress,
            windowRamAddress => windowRamAddress,
            weightsRamRead => weightsRamRead,
            windowRamRead => windowRamRead,
            windowRamWrite => windowRamWrite,
            windowRamDataOutBus => windowRamDataOutBus,
            finishNetwork => finishCNN
        );

    
    weightsRam: ENTITY work.RAM 
        generic map(weightsAddressSize, filterSize, filterSize * 5)
        port map(
            clk, weightsRamRead, '0', rst,
            weightsRamAddress,
            "00000000",
            weightsRamDataInBus,
            MFCWeightsRam
        );

    windowRam: ENTITY work.RAM 
    generic map(windowAddressSize, windowSize, windowSize * 5)
    port map(
        clk, windowRamRead, windowRamWrite, rst,
        windowRamAddress,
        windowRamDataOutBus(windowSize-1 DOWNTO 0),
        windowRamDataInBus,
        MFCWindowRam
    );

END ARCHITECTURE;