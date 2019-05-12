library ieee;
use ieee.std_logic_1164.all;

-- n-bit adder entity

entity nbitadderio is
       generic (wordsize : integer := 16);
  port(
      a,b : in std_logic_vector (wordsize-1  downto 0);
      carryin : in std_logic;
      sum : out std_logic_vector (wordsize-1 downto 0);
      carryout : out std_logic
    );

end nbitadderio;

------------------------------------------------------------

-- n-bit adder architecture

architecture nbitadderioarch of nbitadderio is



signal temp : std_logic_vector (wordsize-1 downto 0);

begin

      f0: entity work.fulladderio port map(a(0),b(0),carryin,sum(0),temp(0));


      loop1: for i in 1 to wordsize-1
      generate
            
          fx: entity work.fulladderio port map(a(i),b(i),temp(i-1),sum(i),temp(i));

      end generate;
        
      
      carryout <= temp(wordsize-1);


end nbitadderioarch;
