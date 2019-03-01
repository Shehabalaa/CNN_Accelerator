LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE work.Types.ARRAYOFREGS;
USE IEEE.math_real.all;

-- Register File

-- internalBus --> the internal bus of the CNN
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
      wordSize: INTEGER := 16;
      numUnits: INTEGER := 25;
      decoderSize: INTEGER := 5
      );

  PORT(
      internalBus: INOUT STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0);
      decoderPage1, decoderPage2, decoderFilters: IN STD_LOGIC_VECTOR(decoderSize-1 DOWNTO 0);
      clk, rst, decoderPage1Enable, decoderPage2Enable, decoderFilterEnable, shift2To1, shift1To2, pageTurn: IN STD_LOGIC;
      pagesOuts, filtersOuts: OUT ARRAYOFREGS(0 TO numUnits-1)(wordSize-1 DOWNTO 0)
    );

END RegFile;

------------------------------------------------------------

-- CNN Cores Architecture

ARCHITECTURE RegFileArch OF RegFile IS

    SIGNAL page1Out, page2Out: ARRAYOFREGS(0 TO 24)(wordSize-1 DOWNTO 0);
    SIGNAL decodedPage1, decodedPage2, decodedFilter: STD_LOGIC_VECTOR(0 TO (2**decoderSize)-1);

    BEGIN

    decoder1Map: ENTITY work.Decoder GENERIC MAP(decoderSize) PORT MAP(decoderPage1, decoderPage1Enable, decodedPage1);
    decoder2Map: ENTITY work.Decoder GENERIC MAP(decoderSize) PORT MAP(decoderPage2, decoderPage2Enable, decodedPage2);
    decoderFilterMap: ENTITY work.Decoder GENERIC MAP(decoderSize) PORT MAP(decoderFilters, decoderFilterEnable, decodedFilter);

    loop1: FOR i IN 0 TO numUnits - 1
    GENERATE
          
        regUnitMap: ENTITY work.RegUnit GENERIC MAP(wordSize) PORT MAP(
            internalBus, page1Out(i+1), page2Out(i+1),
            clk, rst, 
            decodedPage1(i), decodedPage2(i), decodedFilter(i),
            shift2To1, shift1To2, pageTurn,
            pagesOuts(i), filtersOuts(i), page1Out(i), page2Out(i)
            );

    END GENERATE;

END ARCHITECTURE;