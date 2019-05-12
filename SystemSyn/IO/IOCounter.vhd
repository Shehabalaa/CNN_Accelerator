LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

-- IOCounter entity

-- load ==> a parallel load to the IOCounter
-- reset ==> 1 to reset the IOCounter
-- isLoad ==> 1 to put the parallel load in the IOCounter
-- count ==> output of the IOCounter

ENTITY IOCounter IS

    GENERIC (n: integer :=2);

    PORT(
        load: in std_logic_vector(n-1 downto 0);
        reset, clk, isLoad: in std_logic;
        count: out std_logic_vector(n-1 downto 0)
    );

END IOCounter;


ARCHITECTURE IOCounterArch OF IOCounter IS

    SIGNAL IOCounterInput, countAdded, currentCount, resetOrCurrent: std_logic_vector(n-1 DOWNTO 0);
    SIGNAL zeros: STD_LOGIC_VECTOR(n-1 DOWNTO 0);
    BEGIN

        IOCounterReg: ENTITY work.Reg GENERIC MAP(n) PORT MAP(IOCounterInput, '1', clk, '0', currentCount);
        nextCount: ENTITY work.NBitAdder GENERIC MAP(n) PORT MAP(currentCount, zeros, '1', countAdded);
        muxloadOrCurrent: ENTITY work.mux2 GENERIC MAP(n) PORT MAP(resetOrCurrent, load, isLoad, IOCounterInput);
        muxInput: ENTITY work.mux2 GENERIC MAP(n) PORT MAP(countAdded, zeros, reset, resetOrCurrent);
        count <= currentCount;
        zeros <= (OTHERS => '0');

END ARCHITECTURE;