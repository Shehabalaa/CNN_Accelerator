library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

 -- countercnn entity

 -- load ==> a parallel load to the counter
-- reset ==> 1 to reset the counter
-- isload ==> 1 to put the parallel load in the counter
-- count ==> output of the counter

 entity counter2cnn is

     generic (n: integer :=2);

     port(
        load: in std_logic_vector(n-1 downto 0);
        reset, clk, isload: in std_logic;
        count: out std_logic_vector(n-1 downto 0)
    );

 end counter2cnn;


 architecture counter2cnnarch of counter2cnn is

     signal counterinput, countadded, currentcount, resetorcurrent, zerossignal: std_logic_vector(n-1 downto 0);


     begin

     zerossignal <= (others => '0');
     --onessignal <= (others => '1');

         counterreg: entity work.regcnn generic map(n) port map(counterinput, '1', clk, '0', currentcount);
        nextcount: entity work.nbitaddercnn generic map(n) port map(currentcount, zerossignal, '1', countadded);
        muxloadorcurrent: entity work.mux2cnn generic map(n) port map(resetorcurrent, load, isload, counterinput);
        muxinput: entity work.mux2cnn generic map(n) port map(countadded, zerossignal, reset, resetorcurrent);
        count <= currentcount;

 end architecture; 