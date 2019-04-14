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
        decoderSize: INTEGER := 3
    );
    PORT (
        startCNN, clk, rst, layerType, filterType: IN STD_LOGIC;

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
    SIGNAL writePage1, writePage2, writeFilter, shift2To1, shift1To2, pageTurn, doneCores, startConv, dmaFilterFinish, dmaWindowFinish: STD_LOGIC;
    SIGNAL sumOutCores: STD_LOGIC_VECTOR(windowSize-1 DOWNTO 0);

    -- DMA Signals
    SIGNAL loadLayerConfig, loadNetworkConfig, loadFilterConfig, loadBias, loadWindow, loadFilter,readNextCol: STD_LOGIC;

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


END ARCHITECTURE; 