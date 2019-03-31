LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE work.Types.all;
USE IEEE.math_real.all;

-- Register File

-- filterBus --> the bus where filters can read input from
-- windowBus --> the bus where page registers can read input from
-- decoderPage1 --> which register from page 1 to read from the internal bus
-- decoderPage2 --> which register from page 2 to read from the internal bus
-- decoderFilters --> which register from Filters to read from the internal bus
-- clk --> the clk of the system
-- rst --> resets all registers
-- decoderPage1Enable --> enable the decoder
-- decoderPage2Enable --> enable the decoder
-- decoderFilterEnable --> enable the decoder
-- shift2To1 --> shift all register in page 2 to page 1
-- shift1To2 --> shift all register in page 1 to page 2
-- pageTurn --> 0 for page 1 to out, 1 for page 2 to out
-- pagesOuts --> chosen out page (25 register outputs)
-- filtersOuts --> filters outputs (25 register outputs)

ENTITY RegFile IS

  GENERIC (
      filterSize: INTEGER := 8;
      windowSize: INTEGER := 16;
      numUnits: INTEGER := 5;
      numRows: INTEGER := 5;
      decoderSize: INTEGER := 3;
      primary: INTEGER := 3
      );

  PORT(
      filterBus: IN STD_LOGIC_VECTOR((numUnits*filterSize)-1 DOWNTO 0);
      windowBus: IN STD_LOGIC_VECTOR((numUnits*windowSize)-1 DOWNTO 0);
      decoderRow: IN STD_LOGIC_VECTOR(decoderSize-1 DOWNTO 0);
      clk, rst, enablePage1Read, enablePage2Read, enableFilterRead, shift2To1, shift1To2, pageTurn: IN STD_LOGIC;
      pagesOuts: OUT ARRAYOFREGS16(0 TO (numUnits*numRows)-1);
      filtersOuts: OUT ARRAYOFREGS8(0 TO (numUnits*numRows)-1)
    );

END RegFile;

------------------------------------------------------------

-- Register File Architecture

ARCHITECTURE RegFileArch OF RegFile IS

    SIGNAL page1Out, page2Out: ARRAYOFREGS16(0 TO (numUnits*numRows)-1 +5);
    -- SIGNAL decodedPage1, decodedPage2, decodedFilter: STD_LOGIC_VECTOR(0 TO (2**decoderSize)-1);
    SIGNAL page1Enables, page2Enables, filterEnables: STD_LOGIC_VECTOR(0 TO (2**decoderSize)-1);
    SIGNAL decodedRow: STD_LOGIC_VECTOR((2**decoderSize)-1 DOWNTO 0);

    SIGNAL tempPageOutPrimary: ARRAYOFREGS16(0 TO (numRows*primary)-1);
    SIGNAL tempPageOutSecondary: ARRAYOFREGS16(0 TO (numRows*(numUnits-primary)-1));

    SIGNAL tempfilterOutPrimary: ARRAYOFREGS8(0 TO (numRows*primary)-1);
    SIGNAL tempfilterOutSecondary: ARRAYOFREGS8(0 TO (numRows*(numUnits-primary)-1));

    SIGNAL decoderRowEnable: STD_LOGIC;

    BEGIN

        -- decoder1Map: ENTITY work.Decoder GENERIC MAP(decoderSize) PORT MAP(decoderPage1, decoderPage1Enable, decodedPage1);
        -- decoder2Map: ENTITY work.Decoder GENERIC MAP(decoderSize) PORT MAP(decoderPage2, decoderPage2Enable, decodedPage2);
        -- decoderFilterMap: ENTITY work.Decoder GENERIC MAP(decoderSize) PORT MAP(decoderFilters, decoderFilterEnable, decodedFilter);

        decoderRowEnable <= enablePage1Read or enablePage2Read or enableFilterRead;

        decoderRowMap: ENTITY work.Decoder GENERIC MAP(decoderSize) PORT MAP(decoderRow, decoderRowEnable, decodedRow);



        loop1: FOR i IN 0 TO numRows - 1
        GENERATE

            page1Enables(i) <= decodedRow(i) and enablePage1Read;
            page2Enables(i) <= decodedRow(i) and enablePage2Read;
            filterEnables(i) <= decodedRow(i) and enableFilterRead;
            
            regRowMap: ENTITY work.RegRow GENERIC MAP(filterSize, windowSize, numUnits, primary) PORT MAP(
                filterBus, windowBus,
                page1Out((i+1)*numUnits TO (i+1)*numUnits+numUnits-1),
                page2Out((i+1)*numUnits TO (i+1)*numUnits+numUnits-1),
                clk, rst,
                page1Enables(i), page2Enables(i), filterEnables(i),
                shift2To1, shift1To2, pageTurn,
                page1Out(i*numUnits TO i*numUnits+numUnits-1),
                page2Out(i*numUnits TO i*numUnits+numUnits-1),
                tempPageOutPrimary(i*primary TO i*primary+primary-1),
                tempPageOutSecondary(i*(numUnits-primary) TO i*(numUnits-primary)+(numUnits-primary)-1),
                tempfilterOutPrimary(i*primary TO i*primary+primary-1),
                tempfilterOutSecondary(i*(numUnits-primary) TO i*(numUnits-primary)+(numUnits-primary)-1)
                );

        END GENERATE;

        pagesOuts(0 TO numRows*primary-1) <= tempPageOutPrimary;
        pagesOuts(numRows*primary TO numRows*numUnits-1) <= tempPageOutSecondary;

        filtersOuts(0 TO numRows*primary-1) <= tempfilterOutPrimary;
        filtersOuts(numRows*primary TO numRows*numUnits-1) <= tempfilterOutSecondary;

END ARCHITECTURE;