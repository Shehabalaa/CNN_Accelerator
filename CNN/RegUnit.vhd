LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

-- Register Unit for each core in the CNN

-- internalBus --> the internal bus of the CNN
-- clk --> the clk of the system
-- rst --> resets all registers
-- enableRegPage1, enableRegPage2, enableRegFilter --> enables the internal registers to read
-- page1ReadBusOrPage1 --> 0 to make page 1 read from the internal bus, 1 to make it read from page 2 next unit and no need for the enable
-- page1ReadBusOrPage2 --> 0 to make page 2 read from the internal bus, 1 to make it read from page 1 next unit and no need for the enable
-- pageTurn --> 0 for page 1 to out, 1 for page 2 to out
-- regPage1NextUnit --> the page1 register input from the next unit
-- regPage2NextUnit --> the page2 register input from the next unit
-- outRegPage --> the output of the current page to be multiplied or added
-- outFilter --> the output of the filter register

ENTITY RegUnit IS
  GENERIC (wordSize : INTEGER := 16);
  PORT(
      internalBus: INOUT STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0);
      regPage1NextUnit, regPage2NextUnit: IN STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0);
      clk, rst, enableRegPage1, enableRegPage2, enableRegFilter, page1ReadBusOrPage2, page2ReadBusOrPage1, pageTurn: IN STD_LOGIC;
      outRegPage, outFilter, outputRegPage1, outputRegPage2: OUT STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0)
    );

END RegUnit;

------------------------------------------------------------

-- RegUnit Architecture

ARCHITECTURE RegUnitArch OF RegUnit IS



SIGNAL inputRegPage1, inputRegPage2: STD_LOGIC_VECTOR (wordSize-1 DOWNTO 0);
SIGNAL reg1TotalEnable, reg2TotalEnable: STD_LOGIC;

BEGIN

      inputRegPage1Map: ENTITY work.Mux2 GENERIC MAP(wordSize) PORT MAP(internalBus, regPage2NextUnit, page1ReadBusOrPage2, inputRegPage1);
      inputRegPage2Map: ENTITY work.Mux2 GENERIC MAP(wordSize) PORT MAP(internalBus, regPage1NextUnit, page2ReadBusOrPage1, inputRegPage2);

      reg1TotalEnable <= enableRegPage1 or page1ReadBusOrPage2;
      reg2TotalEnable <= enableRegPage2 or page2ReadBusOrPage1;

      regPage1Map: ENTITY work.Reg GENERIC MAP(wordSize) PORT MAP(inputRegPage1, reg1TotalEnable, clk, rst, outputRegPage1);
      regPage2Map: ENTITY work.Reg GENERIC MAP(wordSize) PORT MAP(inputRegPage2, reg2TotalEnable, clk, rst, outputRegPage2);
      regFilterMap: ENTITY work.Reg GENERIC MAP(wordSize) PORT MAP(internalBus, enableRegFilter, clk, rst, outFilter);

      outPageMap: ENTITY work.Mux2 GENERIC MAP(wordSize) PORT MAP(outputRegPage1, outputRegPage2, pageTurn, outRegPage);

END ARCHITECTURE;