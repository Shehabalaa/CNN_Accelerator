LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE work.Types.ARRAYOFREGS16;

-- CNNAdders Entity

-- inputs ==> array of 25 registers to be added
-- filterType ==> 0 for 3*3 Filter and 1 for 5*5 Filter
-- finalSum ==> the summation of the 25 inputs in case of 5*5 filter or the first 9 in case of 3*3 filter


ENTITY CNNAdders IS
  GENERIC (wordSize : INTEGER := 16);
  PORT(
      inputs: IN ARRAYOFREGS16(0 TO 24);
      filterType: IN STD_LOGIC;
      finalSum: OUT STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0)
    );

END CNNAdders;

------------------------------------------------------------

-- CNNAdders Architecture

ARCHITECTURE CNNAddersArch OF CNNAdders IS

    SIGNAL sum1, sum2, sum3, sum3Filter, sum4, totalSum: STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0);


    BEGIN

        sum1Map: ENTITY work.Adder8Values GENERIC MAP(wordSize) PORT MAP(inputs(0 TO 7), sum1);
        sum2Map: ENTITY work.Adder8Values GENERIC MAP(wordSize) PORT MAP(inputs(9 TO 16), sum2);
        sum3Map: ENTITY work.Adder8Values GENERIC MAP(wordSize) PORT MAP(inputs(17 TO 24), sum3);

        sum3FilterMap: ENTITY work.NBitAdder GENERIC MAP(wordSize) PORT MAP(sum1, inputs(8), '0', sum3Filter);
        sumRestMap: ENTITY work.NBitAdder GENERIC MAP(wordSize) PORT MAP(sum2, sum3, '0', sum4);
        sumFinalMap: ENTITY work.NBitAdder GENERIC MAP(wordSize) PORT MAP(sum3Filter, sum4, '0', totalSum);

        finalSumMap: ENTITY work.Mux2 GENERIC MAP(wordSize) PORT MAP(sum3Filter, totalSum, filterType, finalSum);


END ARCHITECTURE;