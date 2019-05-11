LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

-- N-bit Adder Entity

ENTITY FCNBitAdder5 IS
       GENERIC (wordSize : INTEGER := 16);
  PORT(
      a,b : IN STD_LOGIC_VECTOR (wordSize-1  DOWNTO 0);
      carryIn : IN STD_LOGIC;
      sum : OUT STD_LOGIC_VECTOR (wordSize-1 DOWNTO 0);
      carryOut : OUT STD_LOGIC
    );

END FCNBitAdder5;

------------------------------------------------------------

-- N-bit Adder Architecture

ARCHITECTURE FCNBitAdder5Arch OF FCNBitAdder5 IS



SIGNAL temp : STD_LOGIC_VECTOR (wordSize-1 DOWNTO 0);

BEGIN

      f0: entity work.FCFullAdder5 PORT MAP(a(0),b(0),carryIn,sum(0),temp(0));


      loop1: FOR i IN 1 TO wordSize-1
      GENERATE
            
          fx: ENTITY work.FCFullAdder5 PORT MAP(a(i),b(i),temp(i-1),sum(i),temp(i));

      END GENERATE;
        
      
      carryOut <= temp(wordSize-1);


END FCNBitAdder5Arch;