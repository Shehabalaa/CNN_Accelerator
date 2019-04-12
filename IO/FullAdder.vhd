LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

-- N-bit Adder Entity

ENTITY FullAdder IS
       GENERIC (wordSize : INTEGER := 16);
  PORT(
      a,b : IN STD_LOGIC_VECTOR (wordSize-1  DOWNTO 0);
      carryIn : IN STD_LOGIC;
      sum : OUT STD_LOGIC_VECTOR (wordSize-1 DOWNTO 0);
      carryOut : OUT STD_LOGIC
    );

END FullAdder;

------------------------------------------------------------

-- N-bit Adder Architecture

ARCHITECTURE FullAdderArch OF FullAdder IS



SIGNAL temp : STD_LOGIC_VECTOR (wordSize-1 DOWNTO 0);

BEGIN

      f0: entity work.adder PORT MAP(a(0),b(0),carryIn,sum(0),temp(0));


      loop1: FOR i IN 1 TO wordSize-1
      GENERATE
            
          fx: ENTITY work.adder PORT MAP  (a(i),b(i),temp(i-1),sum(i),temp(i));

      END GENERATE;
        
      
      carryOut <= temp(wordSize-1);


END FullAdderArch;
