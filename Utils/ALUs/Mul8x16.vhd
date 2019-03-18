LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;


ENTITY Mul8x16 IS
    PORT (
        q :IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        m :IN STD_LOGIC_VECTOR(15 DOWNTO 0); -- operads to be multiplied
        f :OUT STD_LOGIC_VECTOR(15 DOWNTO 0); -- result
        clk,start,rst :IN STD_LOGIC; -- clk and signal start to start NOTe start should be 0 THEN goes TO 1
        sel,startAndPause,Accumelate : IN STD_LOGIC
    );
END Mul8x16;

ARCHITECTURE Mul8x16Arch OF Mul8x16 IS
    SIGNAL mReg,fReg, mPad, fD, outBooth : STD_LOGIC_VECTOR(16+8-1 DOWNTO 0); 
    SIGNAL qReg,qPad : STD_LOGIC_VECTOR(8 DOWNTO 0);
    SIGNAL resetFReg : STD_LOGIC;
BEGIN

    mPad <= (7 downto 0 => '0') & m;
    qPad <= q & '0';
    resetFReg <= (not Accumelate and start) or rst;
    mRegCmp : ENTITY work.ShiftReg2ValuesLeft GENERIC MAP(16 + 8) PORT MAP(mPad,mReg,clk,'1',rst,start);
    pRegCmp : ENTITY work.ShiftReg2ValuesRight GENERIC MAP(9) PORT MAP(qPad,qReg,clk,'1',rst,start);
    fRegCmp : ENTITY work.Reg GENERIC MAP(16 + 8) PORT MAP(fD,'1',clk,resetFReg,fReg);
    fD <= outBooth(21 DOWNTO 0) & "00";
    BSCmp : ENTITY work.BoothStep GENERIC MAP(16 + 8) PORT MAP(fReg,mReg,qReg(2 DOWNTO 0),outBooth);

    f <= fD(23 - 2 DOWNTO 6); --with floating point

END Mul8x16Arch; 
