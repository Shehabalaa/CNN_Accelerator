LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

-- Single bit Adder Entity
ENTITY FullAdder1 IS  
     PORT( 
               a,b,cin : IN STD_LOGIC;
               s,cout : OUT STD_LOGIC
          );
END FullAdder1;

------------------------------------------------------------

-- Single bit Adder Architecture

ARCHITECTURE FullAdder1Arch OF FullAdder1 IS

BEGIN

     PROCESS (a,b,cin)
          BEGIN 

          s <= a XOR b XOR cin;
          cout <= (a AND b) or (cin AND (a XOR b));

     END PROCESS;

END FullAdder1Arch;