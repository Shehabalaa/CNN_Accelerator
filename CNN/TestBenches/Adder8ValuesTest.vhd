LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.math_real.all;
USE IEEE.numeric_std.all;
USE work.Types.ARRAYOFREGS;

ENTITY Adder8ValuesTest IS
    GENERIC(wordSize : INTEGER := 16);
END Adder8ValuesTest;


ARCHITECTURE Adder8ValuesTestArch OF Adder8ValuesTest IS 
    

    CONSTANT CLK_period : time := 100 ps;

    SIGNAL sum, realSum: STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0);
    SIGNAL inputs: ARRAYOFREGS(0 TO 7)(wordSize-1 DOWNTO 0);
 
    BEGIN

        AddersMap: ENTITY work.Adder8Values GENERIC MAP(wordSize) PORT MAP(inputs, sum);


        testProcess : PROCESS
        BEGIN

            inputs(0) <= (OTHERS => '0');
            inputs(1) <= (OTHERS => '0');
            inputs(2) <= (OTHERS => '0');
            inputs(3) <= (OTHERS => '0');
            inputs(4) <= (OTHERS => '0');
            inputs(5) <= (OTHERS => '0');
            inputs(6) <= (OTHERS => '0');
            inputs(7) <= (OTHERS => '0');
            
            realSum <= (OTHERS => '0');


            WAIT FOR CLK_period;  
            ASSERT(sum = realSum)        
            REPORT "Summation Error"
            SEVERITY ERROR;


            inputs(0) <= x"0001";
            inputs(1) <= x"0001";
            inputs(2) <= x"0001";
            inputs(3) <= x"0001";
            inputs(4) <= x"0001";
            inputs(5) <= x"0001";
            inputs(6) <= x"0001";
            inputs(7) <= x"0001";
            
            realSum <= x"0008";


            WAIT FOR CLK_period;  
            ASSERT(sum = realSum)        
            REPORT "Summation Error"
            SEVERITY ERROR;


            inputs(0) <= x"0004";
            inputs(1) <= x"0005";
            inputs(2) <= x"000F";
            inputs(3) <= x"0300";
            inputs(4) <= x"0051";
            inputs(5) <= x"0691";
            inputs(6) <= x"2001";
            inputs(7) <= x"5FC1";
            
            realSum <= x"89BC";


            WAIT FOR CLK_period;  
            ASSERT(sum = realSum)        
            REPORT "Summation Error"
            SEVERITY ERROR;



            inputs(0) <= x"0504";
            inputs(1) <= x"20A5";
            inputs(2) <= x"0D2F";
            inputs(3) <= x"03EF";
            inputs(4) <= x"0051";
            inputs(5) <= x"0691";
            inputs(6) <= x"2001";
            inputs(7) <= x"5FC1";
            
            realSum <= x"BD6B";


            WAIT FOR CLK_period;  
            ASSERT(sum = realSum)        
            REPORT "Summation Error"
            SEVERITY ERROR;



            inputs(0) <= x"AAAF";
            inputs(1) <= x"0CA5";
            inputs(2) <= x"0A26";
            inputs(3) <= x"25CF";
            inputs(4) <= x"0051";
            inputs(5) <= x"0091";
            inputs(6) <= x"0361";
            inputs(7) <= x"0FC1";
            
            realSum <= x"FB4D";


            WAIT FOR CLK_period;  
            ASSERT(sum = realSum)        
            REPORT "Summation Error"
            SEVERITY ERROR;


            
            WAIT;
        END PROCESS;	
        
END ARCHITECTURE;