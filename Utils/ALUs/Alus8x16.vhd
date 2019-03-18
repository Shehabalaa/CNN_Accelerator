LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.Utiles.ALL;

ENTITY Alu8x16 IS
    GENERIC (n :INTEGER := 1);
    PORT (
        q :IN genericArrayofVector8bit(n-1 downto 0);
        m :IN genericArrayofVector16bit(n-1 downto 0); 
        f :INOUT genericArrayofVector16bit(n-1 downto 0);
        clk,start,rst :IN STD_LOGIC;
        done :INOUT STD_LOGIC; 
        working :INOUT STD_LOGIC
    );
END Alu8x16;

ARCHITECTURE Alu8x16Arch OF Alu8x16 IS
SIGNAL aluOut: genericArrayofVector16bit(n-1 downto 0);
BEGIN
    cmp1: ENTITY work.nMul8x16 GENERIC MAP(n) PORT MAP (q,m,aluOut,clk,start,rst,working,done);
    cmp2: ENTITY work.Accumulator GENERIC MAP(n) PORT MAP (aluOut,f,working,rst,'1');
END Alu8x16Arch; 
