LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ControlUnit IS
    PORT(
        clk :IN STD_LOGIC;

        layersNumber : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        filtersNumber : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        filterDepth : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        filterOutputSize: IN STD_LOGIC_VECTOR(4 DOWNTO 0);

        startNetwork: IN STD_LOGIC;
        layerType : IN STD_LOGIC;

        convFinish,dmaAFinish,dmaBFinish,dmaCFinish : IN STD_LOGIC;

        resetNetwork : IN STD_LOGIC;
        sliceFirstLoad: OUT STD_LOGIC;
        loadLayerConfig, loadNetworkConfig, loadFilterConfig : OUT STD_LOGIC;
        loadWindow, loadFilter,conv,pool,shift12,shift21,readNextCol,addToOutputBuffer,outputBufferEn,saveToRAM : OUT STD_LOGIC;
        currentPage : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);

        finishCurrentSlice, finishFilter, finishOneLayer, finishNetwork : OUT STD_LOGIC
    );

END ControlUnit;


ARCHITECTURE ControlUnitArch OF ControlUnit IS 
    

    -- Convolution and pooling


    -- DMA Signals
        

    -- Network Controller Signals
        
    -- One Layer Signals
        SIGNAL startOneLayer:STD_LOGIC;
       

    -- Filter Signals
        SIGNAL startFilter,filterLastLayer ,internalFinishFilter:STD_LOGIC;


    -- Slice of filter Signals
        SIGNAL startSlice,finishSlice : STD_LOGIC;


    -- finishing one layer
        SIGNAL oneLayeringFinish: STD_LOGIC;
 
    BEGIN

        finishOneLayer <= oneLayeringFinish;
        finishCurrentSlice <= finishSlice;
        finishFilter <= internalFinishFilter;

        networkMap: ENTITY work.NetworkController PORT MAP(startNetwork,dmaAFinish,onelayeringFinish,resetNetwork,clk,layersNumber,loadNetworkConfig,startOneLayer,finishNetwork);

        oneLayerMap : ENTITY work.LayerController PORT MAP(startOneLayer,dmaAFinish,internalFinishFilter,resetNetwork,clk,filtersNumber,loadLayerConfig,startFilter,onelayeringFinish );

        filterMap : ENTITY work.FilterController PORT MAP(startFilter,layerType,dmaAFinish,finishSlice,resetNetwork,clk,filterDepth,startSlice,loadFilterConfig,filterLastLayer,internalFinishFilter);

        sliceFilterMap : ENTITY work.SliceFilterController PORT MAP(startSlice,layerType,filterLastLayer,convFinish,dmaAFinish,dmaBFinish,dmaCFinish,
        resetNetwork,clk,filterOutputSize,currentPage,sliceFirstLoad,loadFilter,loadWindow,conv,pool,shift12,shift21,readNextCol,addToOutputBuffer,outputBufferEn,saveToRAM,finishSlice);



        
END ARCHITECTURE;