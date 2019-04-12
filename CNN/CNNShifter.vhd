LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

-- CNNShifter Entity

-- this entity shits input right 3 or 5 depending on the filter size

-- A ==> input to be shifted
-- filterSize ==> Size of the filter (0 for size 3 and 1 for size 5)
-- shiftedOut ==> value after shifting

ENTITY CNNShifter IS
  GENERIC (wordSize : INTEGER := 16);
  PORT(
      A: IN STD_LOGIC_VECTOR(wordSize - 1 DOWNTO 0);
      filterSize: IN STD_LOGIC;
      shiftedOut: OUT STD_LOGIC_VECTOR(wordSize - 1 DOWNTO 0)
    );

END CNNShifter;

------------------------------------------------------------

-- CNNShifter Architecture

ARCHITECTURE CNNShifterArch OF CNNShifter IS


    BEGIN

        shiftedOut <= "000" & A(wordSize-1 DOWNTO 3) when filterSize = '0'
        else "00000" & A(wordSize-1 DOWNTO 5);

END ARCHITECTURE;