LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.math_real.all;
USE IEEE.numeric_std.all;
USE work.Types.ARRAYOFREGS;

ENTITY RegUnitTest IS
    GENERIC(
        filterSize: INTEGER := 8;
        windowSize: INTEGER := 16
    );
END RegUnitTest;


ARCHITECTURE RegUnitTestArch OF RegUnitTest IS 
    

    CONSTANT CLK_PERIOD : time := 100 ps;

    SIGNAL windowBus, regPage1NextUnit, regPage2NextUnit, outRegPage, outputRegPage1, outputRegPage2: STD_LOGIC_VECTOR(windowSize-1 DOWNTO 0);
    SIGNAL filterBus, outFilter, realFilterOut: STD_LOGIC_VECTOR(filterSize-1 DOWNTO 0);
    SIGNAL realUnitOut, realPage1Out, realPage2Out: STD_LOGIC_VECTOR(windowSize-1 DOWNTO 0);
    SIGNAL clk, rst, enableRegPage1, enableRegPage2, enableRegFilter, shift21, shift12, pageTurn: STD_LOGIC;

    
 
    BEGIN

        regUnitMap: ENTITY work.RegUnit GENERIC MAP(filterSize, windowSize) PORT MAP(
            filterBus, windowBus,
            regPage1NextUnit, regPage2NextUnit,
            clk, rst, enableRegPage1, enableRegPage2, enableRegFilter, shift21, shift12, pageTurn,
            outRegPage, outputRegPage1, outputRegPage2, outFilter
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
            enableRegPage1 <= '0';
            enableRegFilter <= '0';
            enableRegPage2 <= '0';
            shift12 <= '0';
            shift21 <= '0';
            windowBus <= x"1234";
            filterBus <= x"78";

            realUnitOut <= x"0000";
            realFilterOut <= x"00";
            realPage1Out <= x"0000";
            realPage2Out <= x"0000";
            
            WAIT FOR CLK_PERIOD;  
            
            ASSERT(realUnitOut = outRegPage)        
            REPORT "Reset Error"
            SEVERITY ERROR;

            ASSERT(realFilterOut = outFilter)        
            REPORT "Reset Error"
            SEVERITY ERROR;

            ASSERT(realPage1Out = outputRegPage1)        
            REPORT "Reset Error"
            SEVERITY ERROR;

            ASSERT(realPage2Out = outputRegPage2)        
            REPORT "Reset Error"
            SEVERITY ERROR;
            --------------------------------------------------------------------------------------
            
            rst <= '0';

            windowBus <= x"1234";
            filterBus <= x"78";
            enableRegPage1 <= '1';
            pageTurn <= '0';



            realUnitOut <= x"1234";
            realFilterOut <= x"00";
            realPage1Out <= x"1234";
            realPage2Out <= x"0000";
            
            WAIT FOR CLK_PERIOD;  
            
            ASSERT(realUnitOut = outRegPage)        
            REPORT "Page 1 read error"
            SEVERITY ERROR;

            ASSERT(realFilterOut = outFilter)        
            REPORT "Page 1 read error"
            SEVERITY ERROR;

            ASSERT(realPage1Out = outputRegPage1)        
            REPORT "Page 1 read error"
            SEVERITY ERROR;

            ASSERT(realPage2Out = outputRegPage2)        
            REPORT "Page 1 read error"
            SEVERITY ERROR;
            --------------------------------------------------------------------------------------

            windowBus <= x"1234";
            filterBus <= x"78";
            enableRegPage1 <= '0';
            enableRegFilter <= '1';
            shift12 <= '0';
            shift21 <= '0';
            pageTurn <= '1';



            realUnitOut <= x"0000";
            realFilterOut <= x"78";
            realPage1Out <= x"1234";
            realPage2Out <= x"0000";
            
            WAIT FOR CLK_PERIOD;  
            
            ASSERT(realUnitOut = outRegPage)        
            REPORT "Filter read Error"
            SEVERITY ERROR;

            ASSERT(realFilterOut = outFilter)        
            REPORT "Filter read Error"
            SEVERITY ERROR;

            ASSERT(realPage1Out = outputRegPage1)        
            REPORT "Filter read Error"
            SEVERITY ERROR;

            ASSERT(realPage2Out = outputRegPage2)        
            REPORT "Filter read Error"
            SEVERITY ERROR;
            --------------------------------------------------------------------------------------

            windowBus <= x"1235";
            filterBus <= x"98";
            enableRegPage1 <= '0';
            enableRegFilter <= '1';
            enableRegPage2 <= '1';
            shift12 <= '0';
            shift21 <= '0';
            pageTurn <= '1';



            realUnitOut <= x"1235";
            realFilterOut <= x"98";
            realPage1Out <= x"1234";
            realPage2Out <= x"1235";
            
            WAIT FOR CLK_PERIOD;  
            
            ASSERT(realUnitOut = outRegPage)        
            REPORT "Page 2 read error"
            SEVERITY ERROR;

            ASSERT(realFilterOut = outFilter)        
            REPORT "Page 2 read error"
            SEVERITY ERROR;

            ASSERT(realPage1Out = outputRegPage1)        
            REPORT "Page 2 read error"
            SEVERITY ERROR;

            ASSERT(realPage2Out = outputRegPage2)        
            REPORT "Page 2 read error"
            SEVERITY ERROR;
            --------------------------------------------------------------------------------------

            windowBus <= x"1235";
            filterBus <= x"98";
            enableRegPage1 <= '0';
            enableRegFilter <= '0';
            enableRegPage2 <= '0';
            pageTurn <= '0';



            realUnitOut <= x"1234";
            realFilterOut <= x"98";
            realPage1Out <= x"1234";
            realPage2Out <= x"1235";
            
            WAIT FOR CLK_PERIOD;  
            
            ASSERT(realUnitOut = outRegPage)        
            REPORT "Out Page from Page Turn Error"
            SEVERITY ERROR;

            ASSERT(realFilterOut = outFilter)        
            REPORT "Out Page from Page Turn Error"
            SEVERITY ERROR;

            ASSERT(realPage1Out = outputRegPage1)        
            REPORT "Out Page from Page Turn Error"
            SEVERITY ERROR;

            ASSERT(realPage2Out = outputRegPage2)        
            REPORT "Out Page from Page Turn Error"
            SEVERITY ERROR;
            --------------------------------------------------------------------------------------

            
            regPage1NextUnit <= x"5678";
            regPage2NextUnit <= x"5679";
            pageTurn <= '1';
            shift12 <= '0';
            shift21 <= '1';

            realUnitOut <= x"1235";
            realFilterOut <= x"98";
            realPage1Out <= x"5679";
            realPage2Out <= x"1235";
            
            WAIT FOR CLK_PERIOD;  
            
            ASSERT(realUnitOut = outRegPage)        
            REPORT "shift 21 error"
            SEVERITY ERROR;

            ASSERT(realFilterOut = outFilter)        
            REPORT "shift 21 error"
            SEVERITY ERROR;

            ASSERT(realPage1Out = outputRegPage1)        
            REPORT "shift 21 error"
            SEVERITY ERROR;

            ASSERT(realPage2Out = outputRegPage2)        
            REPORT "shift 21 error"
            SEVERITY ERROR;
            --------------------------------------------------------------------------------------

            regPage1NextUnit <= x"5678";
            regPage2NextUnit <= x"5679";
            pageTurn <= '0';
            shift12 <= '0';
            shift21 <= '0';

            realUnitOut <= x"5679";
            realFilterOut <= x"98";
            realPage1Out <= x"5679";
            realPage2Out <= x"1235";
            
            WAIT FOR CLK_PERIOD;  
            
            ASSERT(realUnitOut = outRegPage)        
            REPORT "page turn error after shift21"
            SEVERITY ERROR;

            ASSERT(realFilterOut = outFilter)        
            REPORT "page turn error after shift21"
            SEVERITY ERROR;

            ASSERT(realPage1Out = outputRegPage1)        
            REPORT "page turn error after shift21"
            SEVERITY ERROR;

            ASSERT(realPage2Out = outputRegPage2)        
            REPORT "page turn error after shift21"
            SEVERITY ERROR;
            --------------------------------------------------------------------------------------


            regPage1NextUnit <= x"5678";
            regPage2NextUnit <= x"5679";
            pageTurn <= '1';
            shift12 <= '1';
            shift21 <= '0';

            realUnitOut <= x"5678";
            realFilterOut <= x"98";
            realPage1Out <= x"5679";
            realPage2Out <= x"5678";
            
            WAIT FOR CLK_PERIOD;  
            
            ASSERT(realUnitOut = outRegPage)        
            REPORT "shift12 error"
            SEVERITY ERROR;

            ASSERT(realFilterOut = outFilter)        
            REPORT "shift12 error"
            SEVERITY ERROR;

            ASSERT(realPage1Out = outputRegPage1)        
            REPORT "shift12 error"
            SEVERITY ERROR;

            ASSERT(realPage2Out = outputRegPage2)        
            REPORT "shift12 error"
            SEVERITY ERROR;
            --------------------------------------------------------------------------------------

            
            regPage1NextUnit <= x"5678";
            regPage2NextUnit <= x"5679";
            pageTurn <= '0';
            shift12 <= '0';
            shift21 <= '0';

            realUnitOut <= x"5679";
            realFilterOut <= x"98";
            realPage1Out <= x"5679";
            realPage2Out <= x"5678";
            
            WAIT FOR CLK_PERIOD;  
            
            ASSERT(realUnitOut = outRegPage)        
            REPORT "page turn error after shift12"
            SEVERITY ERROR;

            ASSERT(realFilterOut = outFilter)        
            REPORT "page turn error after shift12"
            SEVERITY ERROR;

            ASSERT(realPage1Out = outputRegPage1)        
            REPORT "page turn error after shift12"
            SEVERITY ERROR;

            ASSERT(realPage2Out = outputRegPage2)        
            REPORT "page turn error after shift12"
            SEVERITY ERROR;
            --------------------------------------------------------------------------------------

            rst <= '1';

            realUnitOut <= x"0000";
            realFilterOut <= x"00";
            realPage1Out <= x"0000";
            realPage2Out <= x"0000";
            
            WAIT FOR CLK_PERIOD;  
            
            ASSERT(realUnitOut = outRegPage)        
            REPORT "Reset 2 Error"
            SEVERITY ERROR;

            ASSERT(realFilterOut = outFilter)        
            REPORT "Reset 2 Error"
            SEVERITY ERROR;

            ASSERT(realPage1Out = outputRegPage1)        
            REPORT "Reset 2 Error"
            SEVERITY ERROR;

            ASSERT(realPage2Out = outputRegPage2)        
            REPORT "Reset 2 Error"
            SEVERITY ERROR;
            --------------------------------------------------------------------



            
            
            WAIT;
        END PROCESS;	
        
END ARCHITECTURE;