LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE work.Types.ARRAYOFREGS;

-- CNNMuls Entity

-- inputs ==> array of 25 registers to be added
-- filterType ==> 0 for 3*3 Filter and 1 for 5*5 Filter
-- finalSum ==> the summation of the 25 inputs in case of 5*5 filter or the first 9 in case of 3*3 filter


ENTITY CNNMuls IS

  GENERIC (
      wordSize : INTEGER := 16;
      numUnits: INTEGER := 25
      );

  PORT(
      window, filter: IN ARRAYOFREGS(0 TO numUnits-1)(wordSize-1 DOWNTO 0);
      clk, start: IN STD_LOGIC;
      outputs: OUT ARRAYOFREGS(0 TO numUnits-1)(wordSize-1 DOWNTO 0);
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
            
            mulMap: ENTITY work.BoothMul GENERIC MAP(wordSize) PORT MAP(window(i), filter(i), outputs(i), clk, start, dones(i));

        END GENERATE;


        done <= and dones;

END ARCHITECTURE;