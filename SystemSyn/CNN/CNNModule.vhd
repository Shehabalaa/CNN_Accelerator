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
        MFCWrite: IN STD_LOGIC;
        weightsRamAddress: OUT STD_LOGIC_VECTOR(weightsAddressSize-1 DOWNTO 0);
        windowRamAddressRead, windowRamAddressWrite: OUT STD_LOGIC_VECTOR(windowAddressSize-1 DOWNTO 0);
        weightsRamRead: OUT STD_LOGIC;
        windowRamRead: OUT STD_LOGIC;
        windowRamWrite: OUT STD_LOGIC;
        windowRamDataOutBus: OUT STD_LOGIC_VECTOR(windowSize-1 DOWNTO 0);
        
        finishNetwork: OUT STD_LOGIC
    );
END CNNModule;

ARCHITECTURE CNNModuleArch OF CNNModule IS
    
    --SIGNAL startProduct: STD_LOGIC;-- From Control Unit to CNN Module to Conv the dot product operation
    SIGNAL conv,pool, layerType, filterType, sliceFirstLoad: STD_LOGIC; -- From Control Unit to CNN Module to Conv its operation
    SIGNAL currentPage : STD_LOGIC_VECTOR(0 DOWNTO 0);

    SIGNAL filterBus: STD_LOGIC_VECTOR((numUnits*filterSize)-1 DOWNTO 0);
    SIGNAL windowBus: STD_LOGIC_VECTOR((numUnits*windowSize)-1 DOWNTO 0);
    SIGNAL writeBus: STD_LOGIC_VECTOR(windowSize-1 DOWNTO 0);
    SIGNAL decoderRow: STD_LOGIC_VECTOR(decoderSize-1 DOWNTO 0);
    SIGNAL writePage1, writePage2, writeFilter, shift2To1, shift1To2, pageTurn, doneCores, startConv, dmaFilterFinish, loadOneWord, loadTwoWord, readAllFinish, writeOneFinish: STD_LOGIC;--, dmaWindowFinish, dmaRamFinish
    SIGNAL sumOutCores: STD_LOGIC_VECTOR(windowSize-1 DOWNTO 0);

    -- DMA Signals
    SIGNAL loadLayerConfig, loadNetworkConfig, loadFilterConfig, loadWindow, loadFilter, readNextCol, finishLayer, finishSlice: STD_LOGIC; --, weightsSize
    SIGNAL inputSizeAddress, outputSizeAddress, baseAddressOne, baseAddressTwo, outputSizeAddressForDMA: STD_LOGIC_VECTOR(windowAddressSize-1 DOWNTO 0);
    SIGNAL zeros: STD_LOGIC_VECTOR(windowAddressSize-1 DOWNTO 0);
    SIGNAL filterRamAddressBase: STD_LOGIC_VECTOR(weightsAddressSize-1 DOWNTO 0);
    SIGNAL finishReadRowWindow, finishReadRowFilter, writeDoneAll: STD_LOGIC;
    SIGNAL aluNumberWindow, aluNumberFilter, decoderRowWindow: STD_LOGIC_VECTOR(2 DOWNTO 0);


    -- Signals comes from DMA after reading from RAM
    SIGNAL layersNumber : STD_LOGIC_VECTOR(1 DOWNTO 0);
    SIGNAL filtersNumber, filterDepth : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL inputSize, outputSize : STD_LOGIC_VECTOR(4 DOWNTO 0);
    -- SIGNAL filterOutputSize: STD_LOGIC_VECTOR(4 DOWNTO 0);

    -- SIGNALS to Output buffer
    SIGNAL addToOutputBuffer, outputBufferEn, saveToRAM, allRead: STD_LOGIC;
    SIGNAL currentRegFromOutBuffer, finalAdderOut, inputToFinalAdder: STD_LOGIC_VECTOR(windowSize - 1 DOWNTO 0);


    SIGNAL readNumLayers, readLayerConfig: STD_LOGIC;
    SIGNAL finishFilter, Dangling2: STD_LOGIC;

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

        writePage1 <= finishReadRowWindow AND ( (NOT pageTurn AND sliceFirstLoad) OR (pageTurn AND (readNextCol OR loadWindow) )  );
        writePage2 <=finishReadRowWindow AND ( ( pageTurn AND sliceFirstLoad ) OR (NOT pageTurn AND (readNextCol OR loadWindow) )  );
        writeFilter <= finishReadRowFilter AND loadFilter;

        -- dmaWindowFinish <= readAllFinish OR writeOneFinish;

        decoderRow <= decoderRowWindow when loadWindow = '1'
                else "010" when readNextCol = '1' and filterType = '0'
                else "100" when readNextCol = '1' and filterType = '1';


        decoderMap: ENTITY work.RowDecoder PORT MAP(
            loadWindow, finishReadRowWindow, clk, decoderRowWindow
        );

        
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
            doneCores, dmaFilterFinish, readAllFinish, writeOneFinish,
            rst,
            sliceFirstLoad,
            loadLayerConfig, loadNetworkConfig, loadFilterConfig,
            loadWindow, loadFilter, conv, pool, 
            shift1To2, shift2To1, readNextCol, addToOutputBuffer, outputBufferEn, saveToRAM,
            currentPage,
            finishSlice, finishFilter, finishLayer, finishNetwork
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
            writeInternalBus => writeBus,
            
            -- Two Rams interface
            weightsRamAddress => weightsRamAddress,
            windowRamAddressRead => windowRamAddressRead,
            windowRamAddressWrite => windowRamAddressWrite,
            weightsRamDataInBus => weightsRamDataInBus,
            windowRamDataInBus => windowRamDataInBus,  
            weightsRamRead => weightsRamRead,  
            windowRamRead => windowRamRead,  
            windowRamWrite => windowRamWrite,  
            windowRamDataOutBus => windowRamDataOutBus,  
            MFCWindowRam => MFCWindowRam,  
            MFCWrite => MFCWrite,
            MFCWeightsRam => MFCWeightsRam,  

            -- input cnt signals
            loadNextFilter => loadFilter,
            loadNextWindow => loadWindow,
            loadNextRow => readNextCol,
            loadOneWord => loadOneWord,
            loadThreeWord => loadTwoWord,
            sliceFinished => finishSlice,
            filterFinished => finishFilter,
            layerFinished => finishLayer,
            layerType => layerType,
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

            writeDoneOne => writeOneFinish
            -- writeDoneAll => writeDoneAll,  
            
        );
        
        allRead <= dmaFilterFinish AND loadFilterConfig;

        outbufferMap: ENTITY work.OutputBuffer GENERIC MAP(numUnits*filterSize, 22*22, windowSize, filterSize, 9, 6) PORT MAP (
            finalAdderOut, filterBus, writeBus, allRead, outputBufferEn,
            currentRegFromOutBuffer,
            clk, finishSlice, rst,
            saveToRAM, outputBufferEn, layerType
        );


        convOrPoolMuxMap: ENTITY work.Mux2 GENERIC MAP(windowSize) PORT MAP(
            currentRegFromOutBuffer,
            "0000000000000000",
            layerType,
            inputToFinalAdder
        );

        finalAdderMap: ENTITY work.NBitAdder GENERIC MAP(windowSize) PORT MAP (
            a => inputToFinalAdder,
            b => sumOutCores,
            carryIn => '0',
            sum => finalAdderOut,
            carryOut => Dangling2
        );

        
        -- triFinalSumMap: ENTITY work.Tristate GENERIC MAP(windowSize) PORT MAP(
        --     input => finalAdderOut,
        --     en => outputBufferEn,
        --     output => windowBus(windowSize-1 DOWNTO 0)
        -- );
       
        readNumLayers <= loadNetworkConfig and finishReadRowFilter;
        readLayerConfig <= loadLayerConfig and finishReadRowFilter;


        configMap: ENTITY work.Config GENERIC MAP(filterSize*numUnits) PORT MAP(
            filterBus, 
            clk, rst, readNumLayers, readLayerConfig,
            layersNumber, layerType, filterType, filtersNumber,
            filterDepth, inputSize, outputSize
        );

END ARCHITECTURE; 