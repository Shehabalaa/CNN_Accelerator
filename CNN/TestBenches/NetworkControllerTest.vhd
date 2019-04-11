LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.math_real.all;
USE IEEE.numeric_std.all;

ENTITY NetworkControllerTest IS


END NetworkControllerTest;


ARCHITECTURE NetworkControllerTestArch OF NetworkControllerTest IS 
    

    CONSTANT CLK_period : time := 100 ps;

    SIGNAL clk : STD_LOGIC;

    -- Convolution and pooling
        SIGNAL conv,pool : STD_LOGIC;
        SIGNAL convFinish: STD_LOGIC := '0';

    -- DMA Signals
        SIGNAL dmaAFinish,dmaBFinish : STD_LOGIC:= '0';
        SIGNAL loadBias, loadWindow, loadFilter : STD_LOGIC;

    -- Network Controller Signals
        SIGNAL startNetwork:STD_LOGIC:= '0';
        SIGNAL loadNetworkConfig,finishNetwork :STD_LOGIC;
        SIGNAL layersNumber : STD_LOGIC_VECTOR(1 DOWNTO 0):= "01";

    -- One Layer Signals
        SIGNAL startOneLayer,loadLayerConfig, finishOneLayer:STD_LOGIC;
        SIGNAL filtersNumber : STD_LOGIC_VECTOR(2 DOWNTO 0):= "001";

    -- Filter Signals
        SIGNAL startFilter,loadFilterConfig,filterLastLayer ,finishFilter:STD_LOGIC;
        SIGNAL filterDepth : STD_LOGIC_VECTOR(2 DOWNTO 0):= "001";
        SIGNAL filterOutputSize: STD_LOGIC_VECTOR(4 DOWNTO 0) := "00001";

    -- Slice of filter Signals
        SIGNAL startSlice,convPoolSelect,finishSlice : STD_LOGIC:= '0';
        SIGNAL shift12,shift21,readNextCol,addToOutputBuffer,outputBufferEn,saveToRAM : STD_LOGIC;
 
    BEGIN

        CLKProcess : PROCESS
        BEGIN
            clk <= '0';
            wait for CLK_PERIOD/2;
            clk <= '1';
            wait for CLK_PERIOD/2;
        END PROCESS;


        networkMap: ENTITY work.NetworkController PORT MAP(startNetwork,dmaAFinish,finishOneLayer,'0',clk,layersNumber,loadNetworkConfig,startOneLayer,finishNetwork);

        oneLayerMap : ENTITY work.LayerController PORT MAP(startOneLayer,dmaAFinish,finishFilter,'0',clk,filtersNumber,loadLayerConfig,startFilter,finishOneLayer );

        filterMap : ENTITY work.FilterController PORT MAP(startFilter,dmaAFinish,finishSlice,'0',clk,filterDepth,startSlice,loadFilterConfig,filterLastLayer,finishFilter);

        sliceFilterMap : ENTITY work.SliceFilterController PORT MAP(startSlice,convPoolSelect,filterLastLayer,convFinish,dmaAFinish,dmaBFinish,
        '0',clk,filterOutputSize,loadBias,loadFilter,loadWindow,conv,pool,shift12,shift21,readNextCol,addToOutputBuffer,outputBufferEn,saveToRAM,finishSlice);



        testProcess : PROCESS
        BEGIN

            
            -------------------------------------------------------------------------------
            startNetwork <= '1';

            WAIT FOR CLK_period;
              
            ASSERT(loadNetworkConfig = '0')        
            REPORT "Network Configuration- not asking for network configuration"
            SEVERITY ERROR;


            
            -- -------------------------------------------------------------------------------
            -- WAIT FOR CLK_period/2;  

            -- dmaAFinish <='1';

            -- WAIT FOR CLK_period/2;  
            -- dmaAFinish <='0';
            -- startNetwork <= '0';
            -- WAIT FOR CLK_period/2;

            
            -- ASSERT(loadNetworkConfig = '1')        
            -- REPORT "Network Configuration- after DMA finish still asking for configuration"
            -- SEVERITY ERROR;
            
            
            -- ASSERT(startOneLayer = '0')        
            -- REPORT "Start Layer one - is not asking layer FSM to start"
            -- SEVERITY ERROR;
            
            
            

            -- -- -----------------------------------------------------------------------------------
            -- WAIT FOR CLK_period;

            -- ASSERT(loadLayerConfig = '0')        
            -- REPORT "Layer Configuration- not asking for layer configuration"
            -- SEVERITY ERROR;
            


            -- dmaAFinish <='1';
            -- WAIT FOR CLK_period/2;
            -- dmaAFinish <='0';
            -- WAIT FOR CLK_period/2;



            
            WAIT;
        END PROCESS;	
        
END ARCHITECTURE;