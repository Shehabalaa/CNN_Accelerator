LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.math_real.all;
USE IEEE.numeric_std.all;
USE work.Types.ARRAYOFREGS;

ENTITY RegRowTest IS
    GENERIC(
        filterSize: INTEGER := 8;
        windowSize: INTEGER := 16;
        numUnits: INTEGER := 5;
        primary: INTEGER := 3
    );
END RegRowTest;


ARCHITECTURE RegRowTestArch OF RegRowTest IS 
    

    CONSTANT CLK_PERIOD : time := 100 ps;

    SIGNAL windowBus: STD_LOGIC_VECTOR((numUnits*windowSize)-1 DOWNTO 0);
    SIGNAL filterBus: STD_LOGIC_VECTOR((numUnits*filterSize)-1 DOWNTO 0);
    SIGNAL page1NextRow, page2NextRow: ARRAYOFREGS(0 TO numUnits-1)(windowSize-1 DOWNTO 0);
    SIGNAL page1Out, page2Out, pagesOuts, page1OutReal, page2OutReal, pagesOutsReal: ARRAYOFREGS(0 TO numUnits-1)(windowSize-1 DOWNTO 0);
    SIGNAL filtersOuts, filtersOutsReal: ARRAYOFREGS(0 TO numUnits-1)(filterSize-1 DOWNTO 0);
    SIGNAL clk, rst, enablePage1, enablePage2, enableFilter, shift21, shift12, pageTurn: STD_LOGIC;

    
 
    BEGIN

        regRowMap: ENTITY work.RegRow GENERIC MAP(filterSize, windowSize, numUnits, primary) PORT MAP(
            filterBus, windowBus,
            page1NextRow, page2NextRow,
            clk, rst, enablePage1, enablePage2, enableFilter, shift21, shift12, pageTurn,
            page1Out, page2Out,
            pagesOuts(0 TO primary-1), pagesOuts(primary TO numUnits-1),
            filtersOuts(0 TO primary-1), filtersOuts(primary TO numUnits-1)
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

            loop1 : FOR i IN 0 TO numUnits-1 LOOP

                --inputs
                filterBus((i*filterSize+filterSize-1) DOWNTO i*filterSize) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i, filterSize));
                windowBus((i*windowSize+windowSize-1) DOWNTO i*windowSize) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i, windowSize));
                page1NextRow(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+10, windowSize));
                page2NextRow(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+20, windowSize));

                --Real outputs
                page1OutReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, windowSize));
                page2OutReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, windowSize));
                pagesOutsReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, windowSize));
                filtersOutsReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, filterSize));

            end loop loop1;
            
            
            WAIT FOR CLK_PERIOD;  
            
            ASSERT(page1OutReal = page1Out)        
            REPORT "Reset Error"
            SEVERITY ERROR;

            ASSERT(page2OutReal = page2Out)        
            REPORT "Reset Error"
            SEVERITY ERROR;

            ASSERT(pagesOutsReal = pagesOuts)        
            REPORT "Reset Error"
            SEVERITY ERROR;

            ASSERT(filtersOutsReal = filtersOuts)        
            REPORT "Reset Error"
            SEVERITY ERROR;
            --------------------------------------------------------------------------------------
            
            rst <= '0';
            enablePage1 <= '1';
            enablePage2 <= '0';
            enableFilter <= '0';
            shift21 <= '0';
            shift12 <= '0';
            pageTurn <= '0';

            loop2 : FOR i IN 0 TO numUnits-1 LOOP
            
                --inputs
                filterBus((i*filterSize+filterSize-1) DOWNTO i*filterSize) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+2, filterSize));
                windowBus((i*windowSize+windowSize-1) DOWNTO i*windowSize) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i, windowSize));
                page1NextRow(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+10, windowSize));
                page2NextRow(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+20, windowSize));

                --Real outputs
                page1OutReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i, windowSize));
                page2OutReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, windowSize));
                pagesOutsReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i, windowSize));
                filtersOutsReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, filterSize));

            end loop loop2;
            
            
            WAIT FOR CLK_PERIOD;  
            
            ASSERT(page1OutReal = page1Out)        
            REPORT "Page 1 read error"
            SEVERITY ERROR;

            ASSERT(page2OutReal = page2Out)        
            REPORT "Page 1 read error"
            SEVERITY ERROR;

            ASSERT(pagesOutsReal = pagesOuts)        
            REPORT "Page 1 read error"
            SEVERITY ERROR;

            ASSERT(filtersOutsReal = filtersOuts)        
            REPORT "Page 1 read error"
            SEVERITY ERROR;
            --------------------------------------------------------------------------------------

            rst <= '0';
            enablePage1 <= '0';
            enablePage2 <= '0';
            enableFilter <= '1';
            shift21 <= '0';
            shift12 <= '0';
            pageTurn <= '1';

            loop3 : FOR i IN 0 TO numUnits-1 LOOP
            
                --inputs
                filterBus((i*filterSize+filterSize-1) DOWNTO i*filterSize) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+2, filterSize));
                windowBus((i*windowSize+windowSize-1) DOWNTO i*windowSize) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i, windowSize));
                page1NextRow(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+10, windowSize));
                page2NextRow(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+20, windowSize));

                --Real outputs
                page1OutReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i, windowSize));
                page2OutReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, windowSize));
                pagesOutsReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, windowSize));
                filtersOutsReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+2, filterSize));

            end loop loop3;
            
            WAIT FOR CLK_PERIOD;  
            
            ASSERT(page1OutReal = page1Out)        
            REPORT "Filter read Error"
            SEVERITY ERROR;

            ASSERT(page2OutReal = page2Out)        
            REPORT "Filter read Error"
            SEVERITY ERROR;

            ASSERT(pagesOutsReal = pagesOuts)        
            REPORT "Filter read Error"
            SEVERITY ERROR;

            ASSERT(filtersOutsReal = filtersOuts)        
            REPORT "Filter read Error"
            SEVERITY ERROR;
            --------------------------------------------------------------------------------------

            rst <= '0';
            enablePage1 <= '0';
            enablePage2 <= '1';
            enableFilter <= '1';
            shift21 <= '0';
            shift12 <= '0';
            pageTurn <= '1';

            loop4 : FOR i IN 0 TO numUnits-1 LOOP
            
                --inputs
                filterBus((i*filterSize+filterSize-1) DOWNTO i*filterSize) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+2, filterSize));
                windowBus((i*windowSize+windowSize-1) DOWNTO i*windowSize) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+3, windowSize));
                page1NextRow(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+10, windowSize));
                page2NextRow(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+20, windowSize));

                --Real outputs
                page1OutReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i, windowSize));
                page2OutReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+3, windowSize));
                pagesOutsReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+3, windowSize));
                filtersOutsReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+2, filterSize));

            end loop loop4;
            
            WAIT FOR CLK_PERIOD;  
            
            ASSERT(page1OutReal = page1Out)        
            REPORT "Page 2 read error"
            SEVERITY ERROR;

            ASSERT(page2OutReal = page2Out)        
            REPORT "Page 2 read error"
            SEVERITY ERROR;

            ASSERT(pagesOutsReal = pagesOuts)        
            REPORT "Page 2 read error"
            SEVERITY ERROR;

            ASSERT(filtersOutsReal = filtersOuts)        
            REPORT "Page 2 read error"
            SEVERITY ERROR;
            --------------------------------------------------------------------------------------

            rst <= '0';
            enablePage1 <= '0';
            enablePage2 <= '0';
            enableFilter <= '0';
            shift21 <= '0';
            shift12 <= '0';
            pageTurn <= '0';

            loop5 : FOR i IN 0 TO numUnits-1 LOOP
            
                --inputs
                filterBus((i*filterSize+filterSize-1) DOWNTO i*filterSize) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+2, filterSize));
                windowBus((i*windowSize+windowSize-1) DOWNTO i*windowSize) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+3, windowSize));
                page1NextRow(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+10, windowSize));
                page2NextRow(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+20, windowSize));

                --Real outputs
                page1OutReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i, windowSize));
                page2OutReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+3, windowSize));
                pagesOutsReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i, windowSize));
                filtersOutsReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+2, filterSize));

            end loop loop5;    
            
            
            WAIT FOR CLK_PERIOD;  
            
            ASSERT(page1OutReal = page1Out)        
            REPORT "Out Page from Page Turn Error"
            SEVERITY ERROR;

            ASSERT(page2OutReal = page2Out)        
            REPORT "Out Page from Page Turn Error"
            SEVERITY ERROR;

            ASSERT(pagesOutsReal = pagesOuts)        
            REPORT "Out Page from Page Turn Error"
            SEVERITY ERROR;

            ASSERT(filtersOutsReal = filtersOuts)        
            REPORT "Out Page from Page Turn Error"
            SEVERITY ERROR;
            --------------------------------------------------------------------------------------

            
            rst <= '0';
            enablePage1 <= '0';
            enablePage2 <= '0';
            enableFilter <= '0';
            shift21 <= '1';
            shift12 <= '0';
            pageTurn <= '0';

            loop6 : FOR i IN 0 TO numUnits-1 LOOP
            
                --inputs
                filterBus((i*filterSize+filterSize-1) DOWNTO i*filterSize) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+2, filterSize));
                windowBus((i*windowSize+windowSize-1) DOWNTO i*windowSize) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+3, windowSize));
                page1NextRow(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+10, windowSize));
                page2NextRow(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+20, windowSize));

                --Real outputs
                page1OutReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+20, windowSize));
                page2OutReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+3, windowSize));
                pagesOutsReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+20, windowSize));
                filtersOutsReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+2, filterSize));

            end loop loop6;   
            
            WAIT FOR CLK_PERIOD;  
            
            ASSERT(page1OutReal = page1Out)        
            REPORT "shift 21 error"
            SEVERITY ERROR;

            ASSERT(page2OutReal = page2Out)        
            REPORT "shift 21 error"
            SEVERITY ERROR;

            ASSERT(pagesOutsReal = pagesOuts)        
            REPORT "shift 21 error"
            SEVERITY ERROR;

            ASSERT(filtersOutsReal = filtersOuts)        
            REPORT "shift 21 error"
            SEVERITY ERROR;
            --------------------------------------------------------------------------------------

            rst <= '0';
            enablePage1 <= '0';
            enablePage2 <= '0';
            enableFilter <= '0';
            shift21 <= '0';
            shift12 <= '0';
            pageTurn <= '1';

            loop7 : FOR i IN 0 TO numUnits-1 LOOP
            
                --inputs
                filterBus((i*filterSize+filterSize-1) DOWNTO i*filterSize) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+2, filterSize));
                windowBus((i*windowSize+windowSize-1) DOWNTO i*windowSize) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+3, windowSize));
                page1NextRow(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+10, windowSize));
                page2NextRow(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+20, windowSize));

                --Real outputs
                page1OutReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+20, windowSize));
                page2OutReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+3, windowSize));
                pagesOutsReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+3, windowSize));
                filtersOutsReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+2, filterSize));

            end loop loop7;
            
            WAIT FOR CLK_PERIOD;  
            
            ASSERT(page1OutReal = page1Out)        
            REPORT "page turn error after shift21"
            SEVERITY ERROR;

            ASSERT(page2OutReal = page2Out)        
            REPORT "page turn error after shift21"
            SEVERITY ERROR;

            ASSERT(pagesOutsReal = pagesOuts)        
            REPORT "page turn error after shift21"
            SEVERITY ERROR;

            ASSERT(filtersOutsReal = filtersOuts)        
            REPORT "page turn error after shift21"
            SEVERITY ERROR;
            --------------------------------------------------------------------------------------


            rst <= '0';
            enablePage1 <= '0';
            enablePage2 <= '0';
            enableFilter <= '0';
            shift21 <= '0';
            shift12 <= '1';
            pageTurn <= '1';

            loop8 : FOR i IN 0 TO numUnits-1 LOOP
            
                --inputs
                filterBus((i*filterSize+filterSize-1) DOWNTO i*filterSize) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+2, filterSize));
                windowBus((i*windowSize+windowSize-1) DOWNTO i*windowSize) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+3, windowSize));
                page1NextRow(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+10, windowSize));
                page2NextRow(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+20, windowSize));

                --Real outputs
                page1OutReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+20, windowSize));
                page2OutReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+10, windowSize));
                pagesOutsReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+10, windowSize));
                filtersOutsReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+2, filterSize));

            end loop loop8;
            
            WAIT FOR CLK_PERIOD;  
            
            ASSERT(page1OutReal = page1Out)        
            REPORT "shift12 error"
            SEVERITY ERROR;

            ASSERT(page2OutReal = page2Out)        
            REPORT "shift12 error"
            SEVERITY ERROR;

            ASSERT(pagesOutsReal = pagesOuts)        
            REPORT "shift12 error"
            SEVERITY ERROR;

            ASSERT(filtersOutsReal = filtersOuts)        
            REPORT "shift12 error"
            SEVERITY ERROR;
            --------------------------------------------------------------------------------------

            
            rst <= '0';
            enablePage1 <= '0';
            enablePage2 <= '0';
            enableFilter <= '0';
            shift21 <= '0';
            shift12 <= '1';
            pageTurn <= '0';

            loop9 : FOR i IN 0 TO numUnits-1 LOOP
            
                --inputs
                filterBus((i*filterSize+filterSize-1) DOWNTO i*filterSize) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+2, filterSize));
                windowBus((i*windowSize+windowSize-1) DOWNTO i*windowSize) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+3, windowSize));
                page1NextRow(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+10, windowSize));
                page2NextRow(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+20, windowSize));

                --Real outputs
                page1OutReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+20, windowSize));
                page2OutReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+10, windowSize));
                pagesOutsReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+20, windowSize));
                filtersOutsReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+2, filterSize));

            end loop loop9;
            
            WAIT FOR CLK_PERIOD;  
            
            ASSERT(page1OutReal = page1Out)        
            REPORT "page turn error after shift12"
            SEVERITY ERROR;

            ASSERT(page2OutReal = page2Out)        
            REPORT "page turn error after shift12"
            SEVERITY ERROR;

            ASSERT(pagesOutsReal = pagesOuts)        
            REPORT "page turn error after shift12"
            SEVERITY ERROR;

            ASSERT(filtersOutsReal = filtersOuts)        
            REPORT "page turn error after shift12"
            SEVERITY ERROR;
            --------------------------------------------------------------------------------------

            rst <= '1';
            enablePage1 <= '0';
            enablePage2 <= '0';
            enableFilter <= '0';
            shift21 <= '0';
            shift12 <= '0';
            pageTurn <= '0';

            loop10 : FOR i IN 0 TO numUnits-1 LOOP
            
                --inputs
                filterBus((i*filterSize+filterSize-1) DOWNTO i*filterSize) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+2, filterSize));
                windowBus((i*windowSize+windowSize-1) DOWNTO i*windowSize) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+3, windowSize));
                page1NextRow(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+10, windowSize));
                page2NextRow(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i+20, windowSize));

                --Real outputs
                page1OutReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, windowSize));
                page2OutReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, windowSize));
                pagesOutsReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, windowSize));
                filtersOutsReal(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(0, filterSize));

            end loop loop10;
            
            WAIT FOR CLK_PERIOD;  
            
            ASSERT(page1OutReal = page1Out)        
            REPORT "Reset 2 Error"
            SEVERITY ERROR;

            ASSERT(page2OutReal = page2Out)        
            REPORT "Reset 2 Error"
            SEVERITY ERROR;

            ASSERT(pagesOutsReal = pagesOuts)        
            REPORT "Reset 2 Error"
            SEVERITY ERROR;

            ASSERT(filtersOutsReal = filtersOuts)        
            REPORT "Reset 2 Error"
            SEVERITY ERROR;
            --------------------------------------------------------------------

            WAIT;
        END PROCESS;	
        
END ARCHITECTURE;