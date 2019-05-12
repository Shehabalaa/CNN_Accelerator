library ieee;
use ieee.std_logic_1164.all;

--down counter (decrementor)
--if enable is off, it does nothing, else
--can be reset to 0, can be loaded asynchronously
--decrements at each rising edge
entity downcountersyncload is
	generic (n: integer :=16);
	port(
		loaddata: in std_logic_vector(n - 1 downto 0);
		en, load, rst, clk: in std_logic;
		counteroutput: out std_logic_vector(n - 1 downto 0)
	);
end downcountersyncload;

architecture downcountersyncloadarch of downcountersyncload is
signal outborrow: std_logic;
signal counterinput, subtractoroutput,dummyinput,currentcount: std_logic_vector(n-1 downto 0);
begin
	counteroutput <= currentcount;
	dummyinput <= (others => '0');
	counterreg: entity work.regio generic map(n) port map(counterinput, en, clk, rst, currentcount);
  nextcount: entity work.nbitsubtractorio generic map(n) port map(currentcount,dummyinput, '1',subtractoroutput,outborrow);
	muxloadorcurrent: entity work.mux2io generic map(n) port map(subtractoroutput, loaddata, load, counterinput);
	counteroutput <= currentcount;
end architecture;
	
