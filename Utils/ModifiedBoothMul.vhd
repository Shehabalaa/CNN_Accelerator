LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ModifiedBoothMul IS
    GENERIC (n :INTEGER := 8);
    PORT (
        m,q :IN STD_LOGIC_VECTOR(n-1 DOWNTO 0); -- operads to be multiplied
        f :OUT STD_LOGIC_VECTOR(2*n-1 DOWNTO 0); -- result
        clk,start,rst :IN STD_LOGIC; -- clk and signal start to start NOTe start should be 0 THEN goes TO 1
        done :INOUT STD_LOGIC; -- done indicates finish of multiplication and f is ready
        working :OUT STD_LOGIC; -- it tells tht it's currenty working (multiplying)
		c :IN STD_LOGIC_VECTOR(n-1 DOWNTO 0) := (n-1 DOWNTO 0 => '0') -- operand to be add on result of multiplication 
    );
END ModifiedBoothMul;

ARCHITECTURE ModifiedBoothMulArch OF ModifiedBoothMul IS
    SIGNAL pInit,pBs,pMux,pReg : STD_LOGIC_VECTOR(2*n DOWNTO 0);
    SIGNAL mReg : STD_LOGIC_VECTOR(n-1 DOWNTO 0); 
    SIGNAL counter : STD_LOGIC_VECTOR(n/2 DOWNTO 0);
    SIGNAL counterRst,restartDetection,startAndPause,qBar,tffClk :STD_LOGIC;
BEGIN
    -- algo paramters intialaization
    pInit <= c & q &'0';

    -- wriring and controling of circuit
    done <= counter(n/2-1);
    startAndPause <= NOT done;
    counterRst <= rst OR restartDetection;
    tffClk <= restartDetection OR Done;

    -- create and wire circuit main compenet
    pRegCmp : ENTITY work.Reg GENERIC MAP(2*n+1) PORT MAP(pBs,startAndPause,clk,rst,pReg);
    mRegCmp : ENTITY work.Reg GENERIC MAP(n) PORT MAP(m,'1',start,rst,mReg);
    MuxCmp :  ENTITY work.BinaryMux GENERIC MAP(2*n+1) PORT MAP(pReg,pInit,counter(0),pMux);
    BSCmp : ENTITY work.ModifiedBoothStep GENERIC MAP(n) PORT MAP(pMux,mReg,pBs);
    StartCaptuerCmp : ENTITY work.TransitionDetector PORT MAP(start,clk,rst,restartDetection);
    CounterCmp : ENTITY work.ShiftReg GENERIC MAP(n/2) PORT MAP(counter,clk,startAndPause,counterRst);
    TffCmp : ENTITY work.Reg GENERIC MAP(1) PORT MAP(D(0) => qBar,en => '1',clk => tffClk,rst => rst, Q(0) => working,Qbar(0) => qBar);

    -- output only valid if done is one
    f <= pBs(2*n DOWNTO 1);

END ModifiedBoothMulArch; 
