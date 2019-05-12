library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- counterfc entity

-- load ==> a parallel load to the counter
-- reset ==> 1 to reset the counter
-- isload ==> 1 to put the parallel load in the counter
-- count ==> output of the counter

entity counterfc is

    generic (n: integer :=2);

    port(
        load: in std_logic_vector(n-1 downto 0);
        reset, clk, isload: in std_logic;
        count: out std_logic_vector(n-1 downto 0)
    );

end counterfc;


architecture counterfcarch of counterfc is

    signal counterinput, countadded, currentcount, resetorcurrent: std_logic_vector(n-1 downto 0);

    begin

        counterreg: entity work.regfc generic map(n) port map(counterinput, '1', clk, '0', currentcount);
        nextcount: entity work.nbitadderfc generic map(n) port map(currentcount, (others => '0'), '1', countadded);
        muxloadorcurrent: entity work.mux2fc generic map(n) port map(resetorcurrent, load, isload, counterinput);
        muxinput: entity work.mux2fc generic map(n) port map(countadded, (others => '0'), reset, resetorcurrent);
        count <= currentcount;

end architecture;