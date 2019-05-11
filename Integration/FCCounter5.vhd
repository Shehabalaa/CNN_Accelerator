LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

-- FCCounter5 entity

-- load ==> a parallel load to the FCCounter5
-- reset ==> 1 to reset the FCCounter5
-- isLoad ==> 1 to put the parallel load in the FCCounter5
-- count ==> output of the FCCounter5

ENTITY FCCounter5 IS

    GENERIC (n: integer :=2);

    PORT(
        en,reset, clk: in std_logic;
        count: out std_logic_vector(n-1 downto 0)
    );

END FCCounter5;


ARCHITECTURE FCCounter5Arch OF FCCounter5 IS

    -- SIGNAL FCCounter5Input, countAdded, currentCount, resetOrCurrent,zerosSignal: std_logic_vector(n-1 DOWNTO 0);
    SIGNAL addedOne, oneSignal,currentCount : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
    SIGNAL finalReset: STD_LOGIC;

    BEGIN
    
        oneSignal <= ( others => '0');
        finalReset <= clk AND reset;

        FCCounter5Reg: ENTITY work.FCReg5 GENERIC MAP(n) PORT MAP(addedOne, en, clk, finalReset, currentCount);
        nextCount: ENTITY work.FCNBitAdder5 GENERIC MAP(n) PORT MAP(currentCount, oneSignal, '1', addedOne);
        -- muxloadOrCurrent: ENTITY work.mux2 GENERIC MAP(n) PORT MAP(resetOrCurrent, load, isLoad, FCCounter5Input);
        -- muxInput: ENTITY work.mux2 GENERIC MAP(n) PORT MAP(countAdded, zerosSignal, reset, resetOrCurrent);
        count <= currentCount;

END ARCHITECTURE;
