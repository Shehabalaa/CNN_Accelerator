LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.math_real.all;
USE IEEE.numeric_std.all;
USE work.Types.ARRAYOFREGS;

ENTITY CNNAddersTest IS
    GENERIC(wordSize : INTEGER := 16);
END CNNAddersTest;


ARCHITECTURE CNNAddersTestArch OF CNNAddersTest IS 
    

    CONSTANT CLK_period : time := 100 ps;

    SIGNAL sum, realSum: STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0);
    SIGNAL inputs: ARRAYOFREGS(0 TO 24)(wordSize-1 DOWNTO 0);
    SIGNAL filterType: STD_LOGIC;
 
    BEGIN

        AddersMap: ENTITY work.CNNAdders GENERIC MAP(wordSize) PORT MAP(inputs, filterType, sum);


        testProcess : PROCESS
        BEGIN

            
            -------------------------------------------------------------------------------
            filterType <= '0';
            loop1 : FOR i IN 0 TO 24 LOOP
                inputs(i) <= x"0000";
            end loop loop1;
            
            realSum <= (OTHERS => '0');


            WAIT FOR CLK_period;  
            ASSERT(sum = realSum)        
            REPORT "Summation Error"
            SEVERITY ERROR;

            -------------------------------------------------------------------------------

            filterType <= '1';
            loop2 : FOR i IN 0 TO 24 LOOP
                inputs(i) <= x"0000";
            end loop loop2;
            
            realSum <= (OTHERS => '0');


            WAIT FOR CLK_period;  
            ASSERT(sum = realSum)        
            REPORT "Summation Error"
            SEVERITY ERROR;

            -------------------------------------------------------------------------------

            filterType <= '0';
            loop3 : FOR i IN 0 TO 24 LOOP
                inputs(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i, 16));
            end loop loop3;
            
            realSum <= x"0024";


            WAIT FOR CLK_period;  
            ASSERT(sum = realSum)        
            REPORT "Summation Error"
            SEVERITY ERROR;

            --------------------------------------------------------------------------------
            
            filterType <= '1';
            loop4 : FOR i IN 0 TO 24 LOOP
                inputs(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i, 16));
            end loop loop4;
            
            realSum <= x"012C";


            WAIT FOR CLK_period;  
            ASSERT(sum = realSum)        
            REPORT "Summation Error"
            SEVERITY ERROR;

            -----------------------------------------------------------------------------------

            filterType <= '0';
            loop5 : FOR i IN 0 TO 24 LOOP
                inputs(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i +10, 16));
            end loop loop5;
            
            realSum <= x"007E";


            WAIT FOR CLK_period;  
            ASSERT(sum = realSum)        
            REPORT "Summation Error"
            SEVERITY ERROR;

            -----------------------------------------------------------------------------------


            filterType <= '1';
            loop6 : FOR i IN 0 TO 24 LOOP
                inputs(i) <= STD_LOGIC_VECTOR(TO_UNSIGNED(i + 10, 16));
            end loop loop6;
            
            realSum <= x"0226";


            WAIT FOR CLK_period;  
            ASSERT(sum = realSum)        
            REPORT "Summation Error"
            SEVERITY ERROR;

            -----------------------------------------------------------------------------------

            
            WAIT;
        END PROCESS;	
        
END ARCHITECTURE;