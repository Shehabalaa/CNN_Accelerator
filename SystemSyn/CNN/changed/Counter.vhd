library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- counter entity

-- load ==> a parallel load to the counter
-- reset ==> 1 to reset the counter
-- isload ==> 1 to put the parallel load in the counter
-- count ==> output of the counter

entity countercnn is

    generic (n: integer :=2);

    port(
        en,reset, clk: in std_logic;
        count: out std_logic_vector(n-1 downto 0)
    );

end countercnn;


architecture countercnnarch of countercnn is

    -- signal counterinput, countadded, currentcount, resetorcurrent,zerossignal: std_logic_vector(n-1 downto 0);
    signal addedone, onesignal,currentcount : std_logic_vector(n-1 downto 0);
    signal finalreset: std_logic;

    begin
    
        onesignal <= ( others => '0');
        finalreset <= clk and reset;

        counterreg: entity work.regcnn generic map(n) port map(addedone, en, clk, finalreset, currentcount);
        nextcount: entity work.nbitaddercnn generic map(n) port map(currentcount, onesignal, '1', addedone);
        -- muxloadorcurrent: entity work.mux2cnn generic map(n) port map(resetorcurrent, load, isload, counterinput);
        -- muxinput: entity work.mux2cnn generic map(n) port map(countadded, zerossignal, reset, resetorcurrent);
        count <= currentcount;

end architecture;