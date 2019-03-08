LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE work.Types.ARRAYOFREGS;
USE IEEE.math_real.all;

-- Register Row
-- this entity contains five Register units.

-- filterBus --> the bus where filters can read input from
-- windowBus --> the bus where page registers can read input from
-- clk --> the clk of the system
-- rst --> resets all registers
-- enablePage1Read --> enable page 1 registers to read from bus
-- enablePage2Read --> enable page 2 registers to read from bus
-- enableFilterRead --> enable filter registers to read from bus
-- shift2To1 --> shift all register in page 2 to page 1
-- shift1To2 --> shift all register in page 1 to page 2
-- pageTurn --> 0 for page 1 to out, 1 for page 2 to out
-- page1Out --> output of page 1 registers to be passed to another row
-- page2Out --> output of page 2 registers to be passed to another row
-- pagesOutsPrimary --> the first primary pages outs (3 in our case)
-- pagesOutsSecondary --> the rest of page registers outs (2 in our case)
-- filtersOutsPrimary --> the first primary filters outputs (3 in our case)
-- filtersOutsSecondary --> the rest of filters outputs (2 in our case)

ENTITY RegRow IS

  GENERIC (
      filterSize: INTEGER := 8;
      windowSize: INTEGER := 16;
      numUnits: INTEGER := 5;
      primary: INTEGER := 3
      );

  PORT(
      filterBus: IN STD_LOGIC_VECTOR((numUnits*filterSize)-1 DOWNTO 0);
      windowBus: IN STD_LOGIC_VECTOR((numUnits*windowSize)-1 DOWNTO 0);
      page1NextRow, page2NextRow: IN ARRAYOFREGS(0 TO numUnits-1)(windowSize-1 DOWNTO 0);
      clk, rst, enablePage1Read, enablePage2Read, enableFilterRead, shift2To1, shift1To2, pageTurn: IN STD_LOGIC;
      page1Out, page2Out: OUT ARRAYOFREGS(0 TO numUnits-1)(windowSize-1 DOWNTO 0);
      pagesOutsPrimary: OUT ARRAYOFREGS(0 TO primary-1)(windowSize-1 DOWNTO 0);
      pagesOutsSecondary: OUT ARRAYOFREGS(0 TO (numUnits-primary)-1)(windowSize-1 DOWNTO 0);
      filtersOutsPrimary: OUT ARRAYOFREGS(0 TO primary-1)(filterSize-1 DOWNTO 0);
      filtersOutsSecondary: OUT ARRAYOFREGS(0 TO (numUnits-primary)-1)(filterSize-1 DOWNTO 0)
    );

END RegRow;

------------------------------------------------------------

-- RegRow Architecture

ARCHITECTURE RegRowArch OF RegRow IS

    SIGNAL tempPagesOuts: ARRAYOFREGS(0 TO numUnits-1)(windowSize-1 DOWNTO 0);
    SIGNAL tempFiltersOuts: ARRAYOFREGS(0 TO numUnits-1)(filterSize-1 DOWNTO 0);

    BEGIN

        loop1: FOR i IN 0 TO numUnits - 1
        GENERATE
            
            regUnitMap: ENTITY work.RegUnit GENERIC MAP(filterSize, windowSize) PORT MAP(

                filterBus((i*filterSize+filterSize-1) DOWNTO i*filterSize),
                windowBus((i*windowSize+windowSize-1) DOWNTO i*windowSize),
                page1NextRow(i), page2NextRow(i),
                clk, rst, 
                enablePage1Read, enablePage2Read, enableFilterRead,
                shift2To1, shift1To2, pageTurn,
                tempPagesOuts(i), page1Out(i), page2Out(i),
                tempFiltersOuts(i)

                );

        END GENERATE;

        pagesOutsPrimary <= tempPagesOuts(0 TO primary-1);
        pagesOutsSecondary <= tempPagesOuts(primary TO numUnits-1);

        filtersOutsPrimary <= tempFiltersOuts(0 TO primary-1);
        filtersOutsSecondary <= tempFiltersOuts(primary TO numUnits-1);

END ARCHITECTURE;