LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.Utiles.ALL;

ENTITY Alu16x16 IS
    GENERIC (n :INTEGER := 1);
    PORT (
        -- equation f(i) = q(i) * m(i) + c(i) for i to n
        q,m,c :IN genericArrayofVector16bit(n-1 downto 0);
        f :INOUT genericArrayofVector16bit(n-1 downto 0);
        clk,start,rst :IN STD_LOGIC;
        done :INOUT STD_LOGIC; 
        working :OUT STD_LOGIC
    );
END Alu16x16;

ARCHITECTURE Alu16x16Arch OF Alu16x16 IS
    SIGNAL counter :STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL counterRst,restartDetection,startAndPause,firstStart :STD_LOGIC;
BEGIN
    gen: FOR i IN n-1 DOWNTO 0  GENERATE
    BEGIN
        cmp: ENTITY work.Mul16x16 PORT MAP (q(i),m(i),c(i),f(i),clk,start,rst,counter(0),startAndPause);
    END GENERATE;

    done <= counter(7);
    startAndPause <= NOT done;
    working <= firstStart AND NOT done; 
    counterRst <= rst OR restartDetection;

    StartCaptuerCmp : ENTITY work.TransitionDetector PORT MAP(start,clk,rst,restartDetection);
    CounterCmp : ENTITY work.ShiftReg GENERIC MAP(7) PORT MAP(counter,clk,startAndPause,counterRst);
    firtStartLachCmp : ENTITY work.Reg GENERIC MAP(1) PORT MAP(D(0) => '1',en => '1',clk => start,rst => rst, Q(0) => firstStart);

END Alu16x16Arch; 
