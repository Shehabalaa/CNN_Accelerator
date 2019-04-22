LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE ieee.numeric_std.ALL;

USE work.Types.all;

-- CNNMuls Entity

-- window --> output registers of the window (25 in our case)
-- filter --> output registers of the filter (25 in our case)
-- clk --> system clock
-- start --> signal to start the multiplication operation
-- outputs --> output of the multiplication (25 output in our case)
-- done --> signal to indicate that multiplication is done and output is ready



ENTITY CNNMuls IS
    GENERIC (n :INTEGER := 25);
    PORT (
        filter :IN ARRAYOFREGS8(n-1 downto 0);
        window :IN ARRAYOFREGS16(n-1 downto 0); 
        outputs :OUT ARRAYOFREGS16(n-1 downto 0);
        clk,start,rst :IN STD_LOGIC;
        doneOut :OUT STD_LOGIC; 
        workingOut :OUT STD_LOGIC
    );
END CNNMuls;

ARCHITECTURE CNNMulsArch OF CNNMuls IS
    SIGNAL counter :STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL counterRst,restartDetection,startAndPause,firstStart,clkInv, done, working:STD_LOGIC;
BEGIN
    gen: FOR i IN n-1 DOWNTO 0  GENERATE
    BEGIN
        cmp: ENTITY work.Mul8x16 PORT MAP (filter(i), window(i), outputs(i),clkInv,start,rst,counter(0),startAndPause);
    END GENERATE;

    doneOut <= done;
    workingOut <= working;

    done <= counter(3);
    startAndPause <= working;
    working <= firstStart AND NOT done; 
    counterRst <= rst OR restartDetection;
    clkInv <= NOT clk;

    StartCaptuerCmp : ENTITY work.TransitionDetector PORT MAP(start,clk,rst,restartDetection);
    CounterCmp : ENTITY work.ShiftReg GENERIC MAP(3) PORT MAP(counter,clk,startAndPause,counterRst);
    firtStartLachCmp : ENTITY work.Reg GENERIC MAP(1) PORT MAP(D(0) => '1',en => '1',clk => start,rst => rst, Q(0) => firstStart);

END ARCHITECTURE; 