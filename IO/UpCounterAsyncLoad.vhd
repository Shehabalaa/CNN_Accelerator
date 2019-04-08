LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

--Up counter (incrementor)
--If enable is off, it does nothing, else
--Can be reset to 0, can be loaded asynchronously
--Increments at each rising edge
ENTITY UpCounterAsyncLoad IS
	GENERIC (n: integer :=16);
	PORT(
		loadData: in std_logic_vector(n - 1 downto 0);
		en, load, rst, clk: in std_logic;
		counterOutput: out std_logic_vector(n - 1 downto 0)
	);
end UpCounterAsyncLoad;

ARCHITECTURE UpCounterAsyncLoad OF UpCounterAsyncLoad IS
SIGNAL counterInput, adderOutput,  currentCount: std_logic_vector(n-1 DOWNTO 0);
BEGIN
	counterOutput <= currentCount;
	counterReg: ENTITY work.RegWithLoad GENERIC MAP(n) PORT MAP(counterInput, en, clk, rst, load, currentCount);
  nextCount: ENTITY work.FullAdder GENERIC MAP(n) PORT MAP(currentCount, (others => '0'), '1', adderOutput);
  muxloadOrCurrent: ENTITY work.mux2 GENERIC MAP(n) PORT MAP(adderOutput, loadData, load, counterInput);
END ARCHITECTURE;
	
