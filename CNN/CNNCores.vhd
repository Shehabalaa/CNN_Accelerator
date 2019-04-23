LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE work.Types.all;


-- CNN Cores

-- filterBus --> the bus where filters can read input from
-- windowBus --> the bus where page registers can read input from
-- decoderPage1 --> which register from page 1 to read from the internal bus
-- decoderPage2 --> which register from page 2 to read from the internal bus
-- decoderFilters --> which register from Filters to read from the internal bus
-- clk --> the clk of the system
-- rst --> resets all registers
-- writePage1 --> enable the decoder of page 1
-- writePage2 --> enable the decoder of page 2
-- writeFilter --> enable the decoder of filter
-- shift2To1 --> shift all register in page 2 to page 1
-- shift1To2 --> shift all register in page 1 to page 2
-- pageTurn --> 0 for page 1 to out, 1 for page 2 to out
-- start --> 1 to start the dot product operation
-- layer type --> 0 for conv and 1 for pool
-- filter type --> 0 for 3*3 Filter and 1 for 5*5 Filter
-- done --> signal to indicate that dot product is ok
-- finalSum --> the final output of the dot product operation



ENTITY CNNCores IS
  GENERIC (
	filterSize: INTEGER := 8;
	windowSize: INTEGER := 16;
	numUnits: INTEGER := 5;
	numRows: INTEGER := 5;
	decoderSize: INTEGER := 3
  );
  PORT(
	  filterBus: IN STD_LOGIC_VECTOR((numUnits*filterSize)-1 DOWNTO 0);
	  windowBus: IN STD_LOGIC_VECTOR((numUnits*windowSize)-1 DOWNTO 0);
	  decoderRow: IN STD_LOGIC_VECTOR(decoderSize-1 DOWNTO 0);
	  clk, rst, writePage1, writePage2, writeFilter, shift2To1, shift1To2, pageTurn, start, layerType, filterType: IN STD_LOGIC;
	  doneCores: OUT STD_LOGIC;
	  finalSumConv: OUT STD_LOGIC_VECTOR(windowSize-1 DOWNTO 0)
    );

END CNNCores;

------------------------------------------------------------

-- CNN Cores Architecture

ARCHITECTURE CNNCoresArch OF CNNCores IS

	SIGNAL currentPage, outMuls, addersInputs: ARRAYOFREGS16(0 TO (numUnits*numRows)-1);
	SIGNAL filter: ARRAYOFREGS8(0 TO (numUnits*numRows)-1);
	SIGNAL doneMul, notClk, done: STD_LOGIC;
	SIGNAL outAdder, outShifter, finalSum: STD_LOGIC_VECTOR(windowSize-1 DOWNTO 0);
    
	BEGIN

		-- register file of cores
		regFileMap: ENTITY work.RegFile GENERIC MAP(filterSize, windowSize, numUnits, numRows, decoderSize, 3) PORT MAP (
			filterBus, windowBus, 
			decoderRow,
			clk, rst, writePage1, writePage2, writeFilter, shift2To1, shift1To2, pageTurn,
			currentPage, filter
		);


		-- cores multipliers
		-- UPDATE HERE ON SIZES WHEN UPDATING MULTIPLIERS
		mulsMap: ENTITY work.CNNMuls GENERIC MAP(25) PORT MAP (
			filter, currentPage,
			outMuls,
			clk, start, rst,
			doneMul
		);

		

		---------------------------------------------------
		-- MAY BE WILL BE SOME LOGIC HERE ON DONE SIGNAL --
		--  TO MAKE SURE THAT THE ADDITION IS COMPLETED  --
		---------------------------------------------------

		done <= layerType or doneMul;
		doneCores <= done;
		notClk <= not clk;

		---------------------------------------------------
		--        Let's keep it like that for now   	 --
		---------------------------------------------------




		-- input to adders (output of Muls if conv) or (output of Page registers if pool)
		loop1: FOR i IN 0 TO (numUnits * numRows) - 1
        GENERATE
            
            inputAddersMap: ENTITY work.Mux2 GENERIC MAP(windowSize) PORT MAP(outMuls(i), currentPage(i), layerType, addersInputs(i));

        END GENERATE;


		-- cores adders
		addersMap: ENTITY work.CNNAdders GENERIC MAP(windowSize) PORT MAP (
			addersInputs, filterType, outAdder
		);


		--shifter for pool
		shifterMap: ENTITY work.CNNShifter GENERIC MAP(windowSize) PORT MAP (
			outAdder, filterType, outShifter
		);


		--final output
		finalOutMap: ENTITY work.Mux2 GENERIC MAP(windowSize) PORT MAP(
			outShifter, outAdder, done, finalSum
			);


		captureReg: ENTITY work.Reg GENERIC MAP(windowSize) PORT MAP(
			finalSum, done, notClk, rst, finalSumConv
		);

END ARCHITECTURE;