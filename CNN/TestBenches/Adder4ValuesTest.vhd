LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.math_real.all;
USE IEEE.numeric_std.all;

ENTITY Adder4ValuesTest IS
    GENERIC(wordSize : INTEGER := 16);
END Adder4ValuesTest;


ARCHITECTURE Adder4ValuesTestArch OF Adder4ValuesTest IS 
    

    CONSTANT CLK_period : time := 100 ps;

    SIGNAL a, b, c, d, sum, realSum: STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0);
 
    BEGIN

        AddersMap: ENTITY work.Adder4Values GENERIC MAP(wordSize) PORT MAP(a, b, c, d, sum);


        testProcess : PROCESS
        BEGIN

            a <= (OTHERS => '0');
            b <= (OTHERS => '0');
            c <= (OTHERS => '0');
            d <= (OTHERS => '0');
            
            realSum <= (OTHERS => '0');


            WAIT FOR CLK_period;  
            ASSERT(sum = realSum)        
            REPORT "Summation Error"
            SEVERITY ERROR;


            a <= x"0001";
            b <= x"0001";
            c <= x"0001";
            d <= x"0001";
            
            realSum <= x"0004";


            WAIT FOR CLK_period;  
            ASSERT(sum = realSum)        
            REPORT "Summation Error"
            SEVERITY ERROR;


            a <= x"0004";
            b <= x"0005";
            c <= x"000F";
            d <= x"0300";
            
            realSum <= x"0318";


            WAIT FOR CLK_period;  
            ASSERT(sum = realSum)        
            REPORT "Summation Error"
            SEVERITY ERROR;



            a <= x"0504";
            b <= x"20A5";
            c <= x"0D2F";
            d <= x"03EF";
            
            realSum <= x"36C7";


            WAIT FOR CLK_period;  
            ASSERT(sum = realSum)        
            REPORT "Summation Error"
            SEVERITY ERROR;



            a <= x"AAAF";
            b <= x"0CA5";
            c <= x"0A26";
            d <= x"25CF";
            
            realSum <= x"E749";


            WAIT FOR CLK_period;  
            ASSERT(sum = realSum)        
            REPORT "Summation Error"
            SEVERITY ERROR;


            
            WAIT;
        END PROCESS;	
        
END ARCHITECTURE;