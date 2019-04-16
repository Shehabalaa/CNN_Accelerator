LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE ieee.numeric_std.ALL;


-- CNNModule Entity
-- This module contains all components of the CNN


ENTITY CNNModule IS
    GENERIC (
        filterSize: INTEGER := 8;
        windowSize: INTEGER := 16;
        numUnits: INTEGER := 5;
        numRows: INTEGER := 5;
        decoderSize: INTEGER := 3;
        weightsAddressSize: INTEGER := 12;
        windowAddressSize: INTEGER := 13
    );
    PORT (
        startCNN, clk, rst, layerType, filterType: IN STD_LOGIC;
        
        -- Two Rams interface
        
        weightsRamDataInBus: IN STD_LOGIC_VECTOR((filterSize * numUnits)-1 DOWNTO 0);
        windowRamDataInBus: IN STD_LOGIC_VECTOR((windowSize * numUnits)-1 DOWNTO 0);
        MFCWindowRam: IN STD_LOGIC;
        MFCWeightsRam: IN STD_LOGIC;
        weightsRamAddress: OUT STD_LOGIC_VECTOR(weightsAddressSize-1 DOWNTO 0);
        windowRamAddress: OUT STD_LOGIC_VECTOR(windowAddressSize-1 DOWNTO 0);
        weightsRamRead: OUT STD_LOGIC;
        windowRamRead: OUT STD_LOGIC;
        windowRamWrite: OUT STD_LOGIC;
        windowRamDataOutBus: OUT STD_LOGIC_VECTOR((windowSize * numUnits)-1 DOWNTO 0);
        
        finishNetwork: OUT STD_LOGIC
    );
END CNNModule;

ARCHITECTURE CNNModuleArch OF CNNModule IS
    
    --SIGNAL startProduct: STD_LOGIC;-- From Control Unit to CNN Module to Conv the dot product operation
    SIGNAL conv,pool: STD_LOGIC; -- From Control Unit to CNN Module to Conv its operation
    SIGNAL currentPage : STD_LOGIC_VECTOR(0 DOWNTO 0);

    SIGNAL filterBus: STD_LOGIC_VECTOR((numUnits*filterSize)-1 DOWNTO 0);
    SIGNAL windowBus: STD_LOGIC_VECTOR((numUnits*windowSize)-1 DOWNTO 0);
    SIGNAL decoderRow: STD_LOGIC_VECTOR(decoderSize-1 DOWNTO 0);
    SIGNAL writePage1, writePage2, writeFilter, shift2To1, shift1To2, pageTurn, doneCores, startConv, dmaFilterFinish, dmaWindowFinish, loadOneWord, loadTwoWord: STD_LOGIC;
    SIGNAL sumOutCores: STD_LOGIC_VECTOR(windowSize-1 DOWNTO 0);

    -- DMA Signals
    SIGNAL loadLayerConfig, loadNetworkConfig, loadFilterConfig, loadBias, loadWindow, loadFilter, readNextCol: STD_LOGIC;

    -- Signals comes from DMA after reading from RAM
    SIGNAL layersNumber : STD_LOGIC_VECTOR(1 DOWNTO 0);
    SIGNAL filtersNumber : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL filterDepth : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL filterOutputSize: STD_LOGIC_VECTOR(4 DOWNTO 0);

    -- SIGNALS to Output buffer
    SIGNAL addToOutputBuffer,outputBufferEn, saveToRAM: STD_LOGIC;

    BEGIN
    
        -- CNNCores Mapping
        coresMap: ENTITY work.CNNCores GENERIC MAP(
            filterSize,
            windowSize,
            numUnits,
            numRows,
            decoderSize
        ) PORT MAP (
            filterBus, windowBus, decoderRow,
            clk, rst, writePage1, writePage2, writeFilter, shift2To1, shift1To2, pageTurn, startConv, layerType, filterType,
            doneCores, sumOutCores
        );


        startConv <= conv OR pool;

        pageTurn <= '0' WHEN currentPage = "0"
        ELSE '1';

        writePage1 <= dmaWindowFinish AND NOT pageTurn;
        writePage2 <= dmaWindowFinish AND pageTurn;
        writeFilter <= dmaFilterFinish;


        -- Control Unit Mapping
        controlUnitMap: ENTITY work.ControlUnit PORT MAP(
            clk,
            layersNumber,
            filtersNumber,
            filterDepth,
            filterOutputSize,
            startCNN,
            layerType,
            doneCores, dmaFilterFinish, dmaWindowFinish,
            rst,
            loadLayerConfig, loadNetworkConfig, loadFilterConfig,
            loadBias, loadWindow, loadFilter, conv, pool, 
            shift1To2, shift2To1, readNextCol, addToOutputBuffer, outputBufferEn, saveToRAM,
            currentPage,
            finishNetwork
        );

        loadOneWord <= loadBias or loadNetworkConfig or loadFilterConfig;
        loadTwoWord <= loadLayerConfig;

        -- DMA Mapping
        DMAControllerMap: ENTITY work.ControlUnit GENERIC MAP(
            weightsAddressSize, 
            windowAddressSize, 
            filterSize, 
            windowSize, 
            numUnits
            ) PORT MAP (
            clk => clk,
            reset => rst,

            -- internal buses
            weightsInternalBus => filterBus,
            windowInternalBus => windowBus,
            
            -- Two Rams interface
            weightsRamAddress => weightsRamAddress,
            windowRamAddress => windowRamAddress,
            weightsRamDataInBus => weightsRamDataInBus
            windowRamDataInBus => windowRamDataInBus,  
            weightsRamRead => weightsRamRead,  
            windowRamRead => windowRamRead,  
            windowRamWrite => windowRamWrite,  
            windowRamDataOutBus => windowRamDataOutBus,  
            MFCWindowRam => MFCWindowRam,  
            MFCWeightsRam => MFCWeightsRam,  

            -- input cnt signals
            loadNextFilter => loadFilter,
            loadNextWindow => loadWindow,
            loadNextRow => readNextCol,
            loadOneWord => loadOneWord,
            loadTwoWord => loadTwoWord
            layerFinished =>  
            write =>  

            -- CONFIG
            weightsSize => 
            inputSize =>  
            outputSize =>  
            windowRamBaseAddress1, windowRamBaseAddress2 =>  
            filterRamBaseAddress =>  
            
            -- o.p cnt signals
            windowReadOne =>  
            windowReadFinal =>  

            weightsReadOne =>  
            weightsReadFinal =>  

            writeDoneAll =>  
            writeDoneOne =>  
            
            filterAluNumber =>  
            windowAluNumber =>  
        );


END ARCHITECTURE; 