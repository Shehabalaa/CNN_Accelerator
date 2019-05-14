library ieee;
use ieee.std_logic_1164.all;

-- single bit adder entity
entity fulladdercnn is  
     port( 
               a,b,cin : in std_logic;
               s,cout : out std_logic
          );
end fulladdercnn;

------------------------------------------------------------

-- single bit adder architecture

architecture fulladdercnnarch of fulladdercnn is

begin

     process (a,b,cin)
          begin 

          s <= a xor b xor cin;
          cout <= (a and b) or (cin and (a xor b));

     end process;

end fulladdercnnarch;
