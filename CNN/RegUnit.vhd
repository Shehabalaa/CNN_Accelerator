LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

-- Register Unit for each core in the CNN

-- filterBus --> the bus where filters can read input from
-- windowBus --> the bus where page registers can read input from
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
  GENERIC (
    filterSize: INTEGER := 8;
    windowSize: INTEGER := 16
    );

  PORT(
      filterBus: IN STD_LOGIC_VECTOR(filterSize-1 DOWNTO 0);
      windowBus: IN STD_LOGIC_VECTOR(windowSize-1 DOWNTO 0);
      regPage1NextUnit, regPage2NextUnit: IN STD_LOGIC_VECTOR(windowSize-1 DOWNTO 0);
      clk, rst, enableRegPage1, enableRegPage2, enableRegFilter, page1ReadBusOrPage2, page2ReadBusOrPage1, pageTurn: IN STD_LOGIC;
      outRegPage, outputRegPage1, outputRegPage2: OUT STD_LOGIC_VECTOR(windowSize-1 DOWNTO 0);
      outFilter: OUT STD_LOGIC_VECTOR(filterSize-1 DOWNTO 0)
    );

END RegUnit;

------------------------------------------------------------

-- RegUnit Architecture

ARCHITECTURE RegUnitArch OF RegUnit IS



SIGNAL inputRegPage1, inputRegPage2, tempOutPage1, tempOutPage2: STD_LOGIC_VECTOR (windowSize-1 DOWNTO 0);
SIGNAL reg1TotalEnable, reg2TotalEnable: STD_LOGIC;

BEGIN

      inputRegPage1Map: ENTITY work.Mux2 GENERIC MAP(windowSize) PORT MAP(windowBus, regPage2NextUnit, page1ReadBusOrPage2, inputRegPage1);
      inputRegPage2Map: ENTITY work.Mux2 GENERIC MAP(windowSize) PORT MAP(windowBus, regPage1NextUnit, page2ReadBusOrPage1, inputRegPage2);

      reg1TotalEnable <= enableRegPage1 or page1ReadBusOrPage2;
      reg2TotalEnable <= enableRegPage2 or page2ReadBusOrPage1;

      regPage1Map: ENTITY work.Reg GENERIC MAP(windowSize) PORT MAP(inputRegPage1, reg1TotalEnable, clk, rst, tempOutPage1);
      regPage2Map: ENTITY work.Reg GENERIC MAP(windowSize) PORT MAP(inputRegPage2, reg2TotalEnable, clk, rst, tempOutPage2);
      regFilterMap: ENTITY work.Reg GENERIC MAP(filterSize) PORT MAP(filterBus, enableRegFilter, clk, rst, outFilter);

      outputRegPage1 <= tempOutPage1;
      outputRegPage2 <= tempOutPage2;

      outPageMap: ENTITY work.Mux2 GENERIC MAP(windowSize) PORT MAP(tempOutPage1, tempOutPage2, pageTurn, outRegPage);

END ARCHITECTURE;