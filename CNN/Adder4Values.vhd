LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

-- Adder4Values Entity



ENTITY Adder4Values IS
  GENERIC (wordSize : INTEGER := 16);
  PORT(
      a, b, c, d: IN STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0);
      sum: OUT STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0)
    );

END Adder4Values;

------------------------------------------------------------

-- Adder4Values Architecture

ARCHITECTURE Adder4ValuesArch OF Adder4Values IS

    SIGNAL sum1, sum2: STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0);


    BEGIN

        sum1Map: ENTITY work.NBitAdder GENERIC MAP(wordSize) PORT MAP(a, b, '0', sum1);
        sum2Map: ENTITY work.NBitAdder GENERIC MAP(wordSize) PORT MAP(c, d, '0', sum2);

        sumFinalMap: ENTITY work.NBitAdder GENERIC MAP(wordSize) PORT MAP(sum1, sum2, '0', sum);

END ARCHITECTURE;