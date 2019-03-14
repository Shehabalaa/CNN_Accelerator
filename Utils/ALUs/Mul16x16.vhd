LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Mul16x16 IS
    PORT (
        m,q,c :IN STD_LOGIC_VECTOR(15 DOWNTO 0); -- operads to be multiplied
        f :OUT STD_LOGIC_VECTOR(15 DOWNTO 0); -- result
        clk,start,rst :IN STD_LOGIC; -- clk and signal start to start NOTe start should be 0 THEN goes TO 1
        sel,startAndPause : IN STD_LOGIC
    );
END Mul16x16;

ARCHITECTURE Mul16x16Arch OF Mul16x16 IS
    SIGNAL pInit,pBs,pMux,pReg : STD_LOGIC_VECTOR(2*16 DOWNTO 0);
    SIGNAL mReg : STD_LOGIC_VECTOR(15 DOWNTO 0); 
BEGIN
    -- algo paramters intialaization
    pInit <= c & q &'0';

    -- create and wire circuit main compenets
    pRegCmp : ENTITY work.Reg GENERIC MAP(2*16+1) PORT MAP(pBs,startAndPause,clk,rst,pReg);
    mRegCmp : ENTITY work.Reg GENERIC MAP(16) PORT MAP(m,'1',start,rst,mReg);
    MuxCmp :  ENTITY work.BinaryMux GENERIC MAP(2*16+1) PORT MAP(pReg,pInit,sel,pMux);
    BSCmp : ENTITY work.BoothStep GENERIC MAP(16) PORT MAP(pMux,mReg,pBs);

    -- output only valid if done is one
    -- f <= pBs(2*16 - 16 DOWNTO 1); -- without floating point
    f <= pBs(2*16 - 16/2 DOWNTO 9); -- with floating point

END Mul16x16Arch; 
