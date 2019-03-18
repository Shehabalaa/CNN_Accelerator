LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY BoothStep IS
    GENERIC (n:INTEGER := 8);
    PORT (
        p :IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
        x :IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
        q :IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        f :OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)
    );
END BoothStep;

ARCHITECTURE BoothStepArch OF BoothStep IS
    SIGNAL op2 : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
    SIGNAL carryIn : STD_LOGIC;
BEGIN
    AdderCmp : ENTITY work.NBitAdder GENERIC MAP(n) PORT MAP(p,op2,carryIn,f);
    carryIn <= q(2) AND ( q(1) NAND q(0) ); -- this for twos complenet
    
    op2 <= (n-1 DOWNTO 0 => '0') WHEN q = "000" or q = "111"
    ELSE x WHEN q = "001" or q = "010"
    Else x(n-2 DOWNTO 0) &'0' WHEN q = "011"
    Else NOT (x(n-2 DOWNTO 0)) &'1'  WHEN q = "100"
    ELSE NOT x;

END BoothStepArch; 
