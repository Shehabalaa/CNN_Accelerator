LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE work.Types.ARRAYOFREGS;

-- CNNMuls Entity

-- window --> output registers of the window (25 in our case)
-- filter --> output registers of the filter (25 in our case)
-- clk --> system clock
-- start --> signal to start the multiplication operation
-- outputs --> output of the multiplication (25 output in our case)
-- done --> signal to indicate that multiplication is done and output is ready

ENTITY CNNMuls IS

  GENERIC (
      filterSize: INTEGER := 8;
      windowSize: INTEGER := 16;
      numUnits: INTEGER := 25
      );

  PORT(
      window: IN ARRAYOFREGS(0 TO numUnits-1)(windowSize-1 DOWNTO 0);
      filter: IN ARRAYOFREGS(0 TO numUnits-1)(filterSize-1 DOWNTO 0);
      clk, start: IN STD_LOGIC;
      outputs: OUT ARRAYOFREGS(0 TO numUnits-1)(windowSize-1 DOWNTO 0);
      done: OUT STD_LOGIC
    );

END CNNMuls;

------------------------------------------------------------

-- CNNMuls Architecture

ARCHITECTURE CNNMulsArch OF CNNMuls IS

    SIGNAL dones: STD_LOGIC_VECTOR(0 TO numUnits-1);

    BEGIN

        loop1: FOR i IN 0 TO numUnits - 1
        GENERATE
            
            mulMap: ENTITY work.BoothMul GENERIC MAP(windowSize) PORT MAP(window(i), filter(i), outputs(i), clk, start, dones(i));

        END GENERATE;


        done <= and dones;

END ARCHITECTURE;