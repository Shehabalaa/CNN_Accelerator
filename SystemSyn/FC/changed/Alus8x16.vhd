library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.utiles.all;

entity alus8x16fc is
    generic (n :integer := 1);
    port (
        q :in genericarrayofvector8bit(n-1 downto 0);
        m :in genericarrayofvector16bit(n-1 downto 0); 
        f :inout genericarrayofvector16bit(n-1 downto 0);
        clk,start,rst :in std_logic;
        done :inout std_logic; 
        working :inout std_logic
    );
end alus8x16fc;

architecture alus8x16fcarch of alus8x16fc is
signal mulout: genericarrayofvector16bit(n-1 downto 0);
begin
    cmp1: entity work.nmul8x16fc generic map(n) port map (q,m,mulout,clk,start,rst,done,working);
    cmp2: entity work.accumulatorfc generic map(n) port map (mulout,f,working,rst);
end alus8x16fcarch; 
