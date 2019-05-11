library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;
-- comparatorfc entity

entity comparatorfc is
        generic (wordsize : integer := 32);
    port(
            inputa : in std_logic_vector(wordsize-1  downto 0);
            inputb : in std_logic_vector(wordsize-1  downto 0);
            outputg : out std_logic;
            outputequal: out std_logic
        );

end comparatorfc;

----------------------------------------------------------------------
-- comparatorfc architecture

architecture comparatorfcarch of comparatorfc is

begin
 
    outputg <='1' when signed(inputb) > signed(inputa) else '0' when signed(inputa)> signed(inputb) ;
    outputequal<= '1' when signed(inputa) = signed(inputb)  else '0';
   
end comparatorfcarch;