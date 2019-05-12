library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- countercnn entity

-- load ==> a parallel load to the counter
-- reset ==> 1 to reset the counter
-- isload ==> 1 to put the parallel load in the counter
-- count ==> output of the counter

entity multistepcountercnn is

    generic (n: integer :=2);

    port(
        load,tobeadded: in std_logic_vector(n-1 downto 0);
        reset, clk, isload,mfc: in std_logic;
        count: out std_logic_vector(n-1 downto 0)
    );

end multistepcountercnn;


architecture multistepcountercnnarch of multistepcountercnn    is

    signal loadorcurrent,counterinput, countadded, currentcount: std_logic_vector(n-1 downto 0);

    begin

        counterreg: entity work.regcnn generic map(n) port map(counterinput, '1', clk, reset, currentcount);
        nextcount: entity work.nbitaddercnn generic map(n) port map(currentcount, tobeadded, '0', countadded);
        muxloadorcurrent: entity work.mux2cnn generic map(n) port map(currentcount, load, isload, loadorcurrent);
        muxinput: entity work.mux2cnn generic map(n) port map(loadorcurrent, countadded, mfc, counterinput);
        count <= currentcount;
end architecture;