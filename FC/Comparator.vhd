LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
use IEEE.math_real.all;
use IEEE.NUMERIC_STD.ALL;
-- Comparator Entity

ENTITY Comparator IS
        GENERIC (wordSize : integer := 32);
    PORT(
            inputA : IN STD_LOGIC_VECTOR(wordSize-1  DOWNTO 0);
            inputB : IN STD_LOGIC_VECTOR(wordSize-1  DOWNTO 0);
            outputG : OUT STD_LOGIC;
            outputEqual: OUT STD_LOGIC
        );

END Comparator;

----------------------------------------------------------------------
-- Comparator Architecture

ARCHITECTURE ComparatorArch OF Comparator IS

BEGIN
 
    outputG <='1' when Signed(inputB) > Signed(inputA) else '0' when Signed(inputA)> Signed(inputB) ;
    outputEqual<= '1' when Signed(inputA) = Signed(inputB)  else '0';
   
END ComparatorArch;