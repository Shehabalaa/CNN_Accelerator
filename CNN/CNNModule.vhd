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
        startCNN, clk, rst: IN STD_LOGIC;
        
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
    SIGNAL conv,pool, layerType, filterType: STD_LOGIC; -- From Control Unit to CNN Module to Conv its operation
    SIGNAL currentPage : STD_LOGIC_VECTOR(0 DOWNTO 0);

    SIGNAL filterBus: STD_LOGIC_VECTOR((numUnits*filterSize)-1 DOWNTO 0);
    SIGNAL windowBus: STD_LOGIC_VECTOR((numUnits*windowSize)-1 DOWNTO 0);
    SIGNAL decoderRow: STD_LOGIC_VECTOR(decoderSize-1 DOWNTO 0);
    SIGNAL writePage1, writePage2, writeFilter, shift2To1, shift1To2, pageTurn, doneCores, startConv, dmaFilterFinish, dmaWindowFinish, loadOneWord, loadTwoWord, readAllFinish, writeOneFinish: STD_LOGIC;
    SIGNAL sumOutCores: STD_LOGIC_VECTOR(windowSize-1 DOWNTO 0);

    -- DMA Signals
    SIGNAL loadLayerConfig, loadNetworkConfig, loadFilterConfig, loadWindow, loadFilter, readNextCol, finishLayer, weightsSize, finishSlice: STD_LOGIC;
    SIGNAL inputSizeAddress, outputSizeAddress, baseAddressOne, baseAddressTwo, outputSizeAddressForDMA: STD_LOGIC_VECTOR(windowAddressSize-1 DOWNTO 0);
    SIGNAL zeros: STD_LOGIC_VECTOR(windowAddressSize-1 DOWNTO 0);
    SIGNAL filterRamAddressBase: STD_LOGIC_VECTOR(weightsAddressSize-1 DOWNTO 0);
    SIGNAL finishReadRowWindow, finishReadRowFilter: STD_LOGIC;
    SIGNAL aluNumberWindow, aluNumberFilter: STD_LOGIC_VECTOR(2 DOWNTO 0);


    -- Signals comes from DMA after reading from RAM
    SIGNAL layersNumber : STD_LOGIC_VECTOR(1 DOWNTO 0);
    SIGNAL filtersNumber, filterDepth : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL inputSize, outputSize : STD_LOGIC_VECTOR(4 DOWNTO 0);
    -- SIGNAL filterOutputSize: STD_LOGIC_VECTOR(4 DOWNTO 0);

    -- SIGNALS to Output buffer
    SIGNAL addToOutputBuffer, outputBufferEn, saveToRAM, allRead: STD_LOGIC;
    SIGNAL currentRegFromOutBuffer, finalAdderOut: STD_LOGIC_VECTOR(windowSize - 1 DOWNTO 0);


    SIGNAL readNumLayers, readLayerConfig: STD_LOGIC;

    BEGIN

        zeros <= (others => '0');
        baseAddressOne <= (others => '0');
        baseAddressTwo <= "0111100100000";
        filterRamAddressBase <= (others => '0');
    
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

        writePage1 <= finishReadRowWindow AND NOT pageTurn;
        writePage2 <= finishReadRowWindow AND pageTurn;
        writeFilter <= dmaFilterFinish;

        dmaWindowFinish <= readAllFinish OR writeOneFinish;

        decoderRow <= aluNumberWindow when loadWindow = '1'
                else "010" when readNextCol = '1' and filterType = '0'
                else "100" when readNextCol = '1' and filterType = '1';

        


        -- Control Unit Mapping
        controlUnitMap: ENTITY work.ControlUnit PORT MAP(
            clk,
            layersNumber,
            filtersNumber,
            filterDepth,
            -- filterOutputSize,
            outputSize,
            startCNN,
            layerType,
            doneCores, dmaFilterFinish, dmaWindowFinish,
            rst,
            loadLayerConfig, loadNetworkConfig, loadFilterConfig,
            loadWindow, loadFilter, conv, pool, 
            shift1To2, shift2To1, readNextCol, addToOutputBuffer, outputBufferEn, saveToRAM,
            currentPage,
            finishSlice, finishLayer, finishNetwork
        );

        loadOneWord <= loadNetworkConfig or loadFilterConfig;
        loadTwoWord <= loadLayerConfig;


        inputSizeAddress <= zeros(windowAddressSize-6 DOWNTO 0) & inputSize;--((4 downto 0) => inputSize, others => '0');
        outputSizeAddress <= zeros(windowAddressSize-6 DOWNTO 0) & outputSize;--((4 downto 0) => outputSize, others => '0');

        outputSizeAddMap: ENTITY work.NBitAdder GENERIC MAP(windowAddressSize) PORT MAP (
            outputSizeAddress, zeros, '1', outputSizeAddressForDMA
        );

        -- DMA Mapping
        DMAControllerMap: ENTITY work.DMAController GENERIC MAP(
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
            weightsRamDataInBus => weightsRamDataInBus,
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
            loadThreeWord => loadTwoWord,
            layerFinished => finishLayer,
            write => saveToRAM,

            -- CONFIG
            weightsSizeType => filterType,
            inputSize => inputSizeAddress, 
            outputSize => outputSizeAddressForDMA, 
            windowRamBaseAddress1 => baseAddressOne,
            windowRamBaseAddress2 => baseAddressTwo,
            filterRamBaseAddress => filterRamAddressBase,
            
            -- o.p cnt signals
            windowReadOne => finishReadRowWindow,
            windowReadFinal => readAllFinish,

            weightsReadOne => finishReadRowFilter,
            weightsReadFinal => dmaFilterFinish,

            writeDoneAll => writeOneFinish,
            --writeDoneOne =>  
            
            filterAluNumber => aluNumberFilter,
            windowAluNumber => aluNumberWindow
        );
        
        allRead <= dmaFilterFinish AND loadFilterConfig;

        outbufferMap: ENTITY work.OutputBuffer GENERIC MAP(numUnits * windowSize, numUnits*filterSize, 22*22, windowSize, filterSize, 9, 6) PORT MAP (
            windowBus, filterBus, allRead, outputBufferEn,
            currentRegFromOutBuffer,
            clk, finishSlice, rst,
            saveToRAM, outputBufferEn
        );

        finalAdderMap: ENTITY work.NBitAdder GENERIC MAP(windowSize) PORT MAP (
            a => currentRegFromOutBuffer,
            b => sumOutCores,
            carryIn => '0',
            sum => finalAdderOut
        );

        
        triFinalSumMap: ENTITY work.Tristate GENERIC MAP(windowSize) PORT MAP(
            input => finalAdderOut,
            en => outputBufferEn,
            output => windowBus(windowSize-1 DOWNTO 0)
        );
       
        readNumLayers <= loadNetworkConfig and finishReadRowFilter;
        readLayerConfig <= loadLayerConfig and finishReadRowFilter;


        configMap: ENTITY work.Config GENERIC MAP(filterSize*numUnits) PORT MAP(
            filterBus, 
            clk, rst, readNumLayers, readLayerConfig,
            layersNumber, layerType, filterType, filtersNumber,
            filterDepth, inputSize, outputSize
        );

END ARCHITECTURE; 