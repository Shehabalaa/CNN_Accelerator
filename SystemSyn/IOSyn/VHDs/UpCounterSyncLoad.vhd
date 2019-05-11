LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

--Up counter (incrementor)
--If enable is off, it does nothing, else
--Can be reset to 0, can be loaded asynchronously
--Increments at each rising edge
ENTITY UpCounterSyncLoad IS
	GENERIC (n: integer :=16);
	PORT(
		loadData: in std_logic_vector(n - 1 downto 0);
		en, load, rst, clk: in std_logic;
		counterOutput: out std_logic_vector(n - 1 downto 0)
	);
end UpCounterSyncLoad;

ARCHITECTURE UpCounterSyncLoad OF UpCounterSyncLoad IS
signal outBorrow: std_logic;
SIGNAL counterInput, adderOutput, dummyInput, currentCount: std_logic_vector(n-1 DOWNTO 0);
BEGIN
	counterOutput <= currentCount;
	dummyInput <= (others => '0');
	counterReg: ENTITY work.Reg GENERIC MAP(n) PORT MAP(counterInput, en, clk, rst, currentCount);
  nextCount: ENTITY work.NBitAdder GENERIC MAP(n) PORT MAP(currentCount,dummyInput, '1', adderOutput,outBorrow);
  muxloadOrCurrent: ENTITY work.mux2 GENERIC MAP(n) PORT MAP(adderOutput, loadData, load, counterInput);
END ARCHITECTURE;
	
