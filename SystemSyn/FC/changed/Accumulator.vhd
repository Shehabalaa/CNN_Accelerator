library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.utiles.all;

entity accumulatorfc is
    generic (n :integer := 1);
    port (
        a :in genericarrayofvector16bit(n-1 downto 0); 
        f :inout genericarrayofvector16bit(n-1 downto 0);
        save,rst:in std_logic
    );
end accumulatorfc;

architecture accumulatorfcarch of accumulatorfc is
    signal outreg : genericarrayofvector16bit(n-1 downto 0);
begin
    gen: for i in n-1 downto 0  generate
    begin
        cmp1: entity work.nbitadderfc generic map (16) port map (a(i),outreg(i),'0',f(i));
        cmp2: entity work.regfc generic map (16) port map (f(i),'1',save,rst,outreg(i));
    end generate;
end accumulatorfcarch; 
