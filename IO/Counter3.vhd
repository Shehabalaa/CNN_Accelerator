LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

-- Counter entity

-- load ==> a parallel load to the counter
-- reset ==> 1 to reset the counter
-- count ==> output of the counter

ENTITY Counter3 IS

    GENERIC (n: integer :=2);

    PORT(
        en,reset, clk: in std_logic;
        count: out std_logic_vector(n-1 downto 0)
    );

END Counter3;


ARCHITECTURE Counter3Arch OF Counter3 IS

    -- SIGNAL counterInput, countAdded, currentCount, resetOrCurrent,zerosSignal: std_logic_vector(n-1 DOWNTO 0);
    SIGNAL addedOne, oneSignal,currentCount : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
    SIGNAL finalReset: STD_LOGIC;

    BEGIN
    
        oneSignal <= ( others => '0');
        finalReset <= clk AND reset;

        counterReg: ENTITY work.Reg1 GENERIC MAP(n) PORT MAP(addedOne, en, clk, finalReset, currentCount);
        nextCount: ENTITY work.NBitAdder1 GENERIC MAP(n) PORT MAP(currentCount, oneSignal, '1', addedOne);
        -- muxloadOrCurrent: ENTITY work.mux2 GENERIC MAP(n) PORT MAP(resetOrCurrent, load, isLoad, counterInput);
        -- muxInput: ENTITY work.mux2 GENERIC MAP(n) PORT MAP(countAdded, zerosSignal, reset, resetOrCurrent);
        count <= currentCount;

END ARCHITECTURE;