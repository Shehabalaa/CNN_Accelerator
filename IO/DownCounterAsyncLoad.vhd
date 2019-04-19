

LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

--Down counter (decrementor)
--If enable is off, it does nothing, else
--Can be reset to 0, can be loaded asynchronously
--Decrements at each rising edge
ENTITY DownCounterAsyncLoad IS
	GENERIC (n: integer :=16);
	PORT(
		loadData: in std_logic_vector(n - 1 downto 0);
		en, load, rst, clk: in std_logic;
		counterOutput: out std_logic_vector(n - 1 downto 0)
	);
end DownCounterAsyncLoad;

ARCHITECTURE DownCounterAsyncLoadArch OF DownCounterAsyncLoad IS
signal outBorrow: std_logic;
SIGNAL counterInput, subtractorOutput,dummyInput,currentCount: std_logic_vector(n-1 DOWNTO 0);
BEGIN
	counterOutput <= currentCount;
	dummyInput <= (others => '0');
	counterReg: ENTITY work.RegWithLoad GENERIC MAP(n) PORT MAP(counterInput, en, clk, rst, load, currentCount);
  nextCount: ENTITY work.NBitSubtractor GENERIC MAP(n) PORT MAP(currentCount,dummyInput, '1',subtractorOutput,outBorrow);
	muxloadOrCurrent: ENTITY work.mux2 GENERIC MAP(n) PORT MAP(subtractorOutput, loadData, load, counterInput);
	counterOutput <= currentCount;
END ARCHITECTURE;
	
