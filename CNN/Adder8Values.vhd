LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE work.Types.ARRAYOFREGS;

-- Adder8Values Entity



ENTITY Adder8Values IS
  GENERIC (wordSize : INTEGER := 16);
  PORT(
      inputs: IN ARRAYOFREGS(0 TO 7)(wordSize-1 DOWNTO 0);
      sum: OUT STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0)
    );

END Adder8Values;

------------------------------------------------------------

-- Adder8Values Architecture

ARCHITECTURE Adder8ValuesArch OF Adder8Values IS

    SIGNAL sum1, sum2: STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0);


    BEGIN

        sum1Map: ENTITY work.Adder4Values GENERIC MAP(wordSize) PORT MAP(inputs(0), inputs(1), inputs(2), inputs(3), sum1);
        sum2Map: ENTITY work.Adder4Values GENERIC MAP(wordSize) PORT MAP(inputs(4), inputs(5), inputs(6), inputs(7), sum2);

        sumFinalMap: ENTITY work.NBitAdder GENERIC MAP(wordSize) PORT MAP(sum1, sum2, '0', sum);

END ARCHITECTURE;