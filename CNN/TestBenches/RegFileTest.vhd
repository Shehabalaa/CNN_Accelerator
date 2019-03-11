LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.math_real.all;
USE IEEE.numeric_std.all;
USE work.Types.ARRAYOFREGS;

ENTITY RegFileTest IS
    GENERIC(
        filterSize: INTEGER := 8;
        windowSize: INTEGER := 16;
        numUnits: INTEGER := 5;
        numRows: INTEGER := 5;
        decoderSize: INTEGER := 3;
        primary: INTEGER := 3
    );
END RegFileTest;


ARCHITECTURE RegFileTestArch OF RegFileTest IS 
    

    CONSTANT CLK_PERIOD : time := 100 ps;

    SIGNAL windowBus: STD_LOGIC_VECTOR((numUnits*windowSize)-1 DOWNTO 0);
    SIGNAL filterBus: STD_LOGIC_VECTOR((numUnits*filterSize)-1 DOWNTO 0);
    SIGNAL decoderRow: STD_LOGIC_VECTOR(decoderSize-1 DOWNTO 0);
    SIGNAL clk, rst, enablePage1, enablePage2, enableFilter, shift21, shift12, pageTurn: STD_LOGIC;
    SIGNAL pagesOuts, pagesOutsReal: ARRAYOFREGS(0 TO (numUnits*numRows)-1)(windowSize-1 DOWNTO 0);
    SIGNAL filtersOuts, filtersOutsReal: ARRAYOFREGS(0 TO (numUnits*numRows)-1)(filterSize-1 DOWNTO 0);

    
 
    BEGIN

        regFileMap: ENTITY work.RegFile GENERIC MAP(filterSize, windowSize, numUnits, numRows, decoderSize, primary) PORT MAP(
            filterBus, windowBus,
            decoderRow,
            clk, rst, enablePage1, enablePage2, enableFilter, shift21, shift12, pageTurn,
            pagesOuts,
            filtersOuts
        );


        CLKprocess : PROCESS
        BEGIN
            clk <= '0';
            wait for CLK_PERIOD/2;
            clk <= '1';
            wait for CLK_PERIOD/2;
        END PROCESS;


       
       
        testProcess : PROCESS
        BEGIN

            -------------------------------------------------------------------------------------
            rst <= '1';
            enablePage1 <= '0';
            enablePage2 <= '0';
            enableFilter <= '0';
            shift21 <= '0';
            shift12 <= '0';
            pageTurn <= '0';
            decoderRow <= "000";

            loop1 : FOR i IN 0 TO numUnits-1 LOOP

                --inputs
                filterBus((i*filterSize+filterSize-1) DOWNTO i*filterSize) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i, filterSize));
                windowBus((i*windowSize+windowSize-1) DOWNTO i*windowSize) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i, windowSize));

            end loop loop1;

            loop2 : FOR i IN 0 TO (numUnits*numRows)-1 LOOP

                --Real Outputs
                pagesOutsReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, windowSize));
                filtersOutsReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, filterSize));

            end loop loop2;
            
            
            WAIT FOR CLK_PERIOD;  
            
            ASSERT(pagesOutsReal = pagesOuts)        
            REPORT "Reset Error"
            SEVERITY ERROR;

            ASSERT(filtersOutsReal = filtersOuts)        
            REPORT "Reset Error"
            SEVERITY ERROR;

            ---------------------------------------------------------------------------------------------------------

            rst <= '0';
            enablePage1 <= '1';
            enablePage2 <= '0';
            enableFilter <= '0';
            shift21 <= '0';
            shift12 <= '0';
            pageTurn <= '0';
            decoderRow <= "000";

            pagesOutsReal(0) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, windowSize));
            pagesOutsReal(1) <= STD_LOGIC_VECTOR(TO_UNSIGNED(1, windowSize));
            pagesOutsReal(2) <= STD_LOGIC_VECTOR(TO_UNSIGNED(2, windowSize));
            pagesOutsReal(15) <= STD_LOGIC_VECTOR(TO_UNSIGNED(3, windowSize));
            pagesOutsReal(16) <= STD_LOGIC_VECTOR(TO_UNSIGNED(4, windowSize));
            
            
            WAIT FOR CLK_PERIOD;  
            
            ASSERT(pagesOutsReal = pagesOuts)        
            REPORT "Read page 1 error"
            SEVERITY ERROR;

            ASSERT(filtersOutsReal = filtersOuts)        
            REPORT "Read page 1 error"
            SEVERITY ERROR;

            ---------------------------------------------------------------------------------------------------------

            rst <= '0';
            enablePage1 <= '1';
            enablePage2 <= '0';
            enableFilter <= '1';
            shift21 <= '0';
            shift12 <= '0';
            pageTurn <= '0';
            decoderRow <= "010";

            pagesOutsReal(6) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, windowSize));
            pagesOutsReal(7) <= STD_LOGIC_VECTOR(TO_UNSIGNED(1, windowSize));
            pagesOutsReal(8) <= STD_LOGIC_VECTOR(TO_UNSIGNED(2, windowSize));
            pagesOutsReal(19) <= STD_LOGIC_VECTOR(TO_UNSIGNED(3, windowSize));
            pagesOutsReal(20) <= STD_LOGIC_VECTOR(TO_UNSIGNED(4, windowSize));

            filtersOutsReal(6) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, filterSize));
            filtersOutsReal(7) <= STD_LOGIC_VECTOR(TO_UNSIGNED(1, filterSize));
            filtersOutsReal(8) <= STD_LOGIC_VECTOR(TO_UNSIGNED(2, filterSize));
            filtersOutsReal(19) <= STD_LOGIC_VECTOR(TO_UNSIGNED(3, filterSize));
            filtersOutsReal(20) <= STD_LOGIC_VECTOR(TO_UNSIGNED(4, filterSize));
            
            
            WAIT FOR CLK_PERIOD;  
            
            ASSERT(pagesOutsReal = pagesOuts)        
            REPORT "Read page 1 and filter error"
            SEVERITY ERROR;

            ASSERT(filtersOutsReal = filtersOuts)        
            REPORT "Read page 1 and filter error"
            SEVERITY ERROR;

            ---------------------------------------------------------------------------------------------------------


            rst <= '0';
            enablePage1 <= '0';
            enablePage2 <= '1';
            enableFilter <= '0';
            shift21 <= '0';
            shift12 <= '0';
            pageTurn <= '1';
            decoderRow <= "100";

            pagesOutsReal(0) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, windowSize));
            pagesOutsReal(1) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, windowSize));
            pagesOutsReal(2) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, windowSize));
            pagesOutsReal(15) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, windowSize));
            pagesOutsReal(16) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, windowSize));

            pagesOutsReal(6) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, windowSize));
            pagesOutsReal(7) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, windowSize));
            pagesOutsReal(8) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, windowSize));
            pagesOutsReal(19) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, windowSize));
            pagesOutsReal(20) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, windowSize));

            pagesOutsReal(12) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, windowSize));
            pagesOutsReal(13) <= STD_LOGIC_VECTOR(TO_UNSIGNED(1, windowSize));
            pagesOutsReal(14) <= STD_LOGIC_VECTOR(TO_UNSIGNED(2, windowSize));
            pagesOutsReal(23) <= STD_LOGIC_VECTOR(TO_UNSIGNED(3, windowSize));
            pagesOutsReal(24) <= STD_LOGIC_VECTOR(TO_UNSIGNED(4, windowSize));

            
            
            WAIT FOR CLK_PERIOD;  
            
            ASSERT(pagesOutsReal = pagesOuts)        
            REPORT "Read page 2 error"
            SEVERITY ERROR;

            ASSERT(filtersOutsReal = filtersOuts)        
            REPORT "Read page 2 error"
            SEVERITY ERROR;

            ---------------------------------------------------------------------------------------------------------

            rst <= '0';
            enablePage1 <= '0';
            enablePage2 <= '0';
            enableFilter <= '0';
            shift21 <= '1';
            shift12 <= '0';
            pageTurn <= '0';
            decoderRow <= "101";

            pagesOutsReal(12) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, windowSize));
            pagesOutsReal(13) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, windowSize));
            pagesOutsReal(14) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, windowSize));
            pagesOutsReal(23) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, windowSize));
            pagesOutsReal(24) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, windowSize));

            pagesOutsReal(9) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, windowSize));
            pagesOutsReal(10) <= STD_LOGIC_VECTOR(TO_UNSIGNED(1, windowSize));
            pagesOutsReal(11) <= STD_LOGIC_VECTOR(TO_UNSIGNED(2, windowSize));
            pagesOutsReal(21) <= STD_LOGIC_VECTOR(TO_UNSIGNED(3, windowSize));
            pagesOutsReal(22) <= STD_LOGIC_VECTOR(TO_UNSIGNED(4, windowSize));

            
            
            WAIT FOR CLK_PERIOD;  
            
            ASSERT(pagesOutsReal = pagesOuts)        
            REPORT "shift21 error"
            SEVERITY ERROR;

            ASSERT(filtersOutsReal = filtersOuts)        
            REPORT "shift21 error"
            SEVERITY ERROR;

            ---------------------------------------------------------------------------------------------------------


            rst <= '0';
            enablePage1 <= '0';
            enablePage2 <= '0';
            enableFilter <= '0';
            shift21 <= '0';
            shift12 <= '1';
            pageTurn <= '1';
            decoderRow <= "101";

            pagesOutsReal(9) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, windowSize));
            pagesOutsReal(10) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, windowSize));
            pagesOutsReal(11) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, windowSize));
            pagesOutsReal(21) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, windowSize));
            pagesOutsReal(22) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, windowSize));

            pagesOutsReal(6) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, windowSize));
            pagesOutsReal(7) <= STD_LOGIC_VECTOR(TO_UNSIGNED(1, windowSize));
            pagesOutsReal(8) <= STD_LOGIC_VECTOR(TO_UNSIGNED(2, windowSize));
            pagesOutsReal(19) <= STD_LOGIC_VECTOR(TO_UNSIGNED(3, windowSize));
            pagesOutsReal(20) <= STD_LOGIC_VECTOR(TO_UNSIGNED(4, windowSize));

            
            
            WAIT FOR CLK_PERIOD;  
            
            ASSERT(pagesOutsReal = pagesOuts)        
            REPORT "shift12 error"
            SEVERITY ERROR;

            ASSERT(filtersOutsReal = filtersOuts)        
            REPORT "shift12 error"
            SEVERITY ERROR;

            ---------------------------------------------------------------------------------------------------------

            WAIT;
        END PROCESS;	
        
END ARCHITECTURE;