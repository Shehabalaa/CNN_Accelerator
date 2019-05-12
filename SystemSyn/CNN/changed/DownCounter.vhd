library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity downcountercnn is
    generic (n:integer:=3);
    port(
        load:in std_logic_vector(n-1 downto 0) ;
        enable,clk,isload:in std_logic;
        currentcount:inout std_logic_vector(n-1 downto 0) 
    );
 arch   end downcountercnn;
    architecture downcountercnnarch of downcountercnn is 
    signal counterinput, subtractoroutput,zerossignal: std_logic_vector(n-1 downto 0);
    begin
    zerossignal <= (others => '0'); 
        counterreg: entity work.regcnn generic map(n) port map(counterinput, enable, clk, '0', currentcount);
        nextcount: entity work.nbitsubtractorcnn generic map(n) port map(currentcount, zerossignal, '1', subtractoroutput);
        muxloadorcurrent: entity work.mux2cnn generic map(n) port map(subtractoroutput, load, isload, counterinput);
        
    end  architecture   ;
     