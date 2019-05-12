library ieee;
use ieee.std_logic_1164.all;

--up counter (incrementor)
--if enable is off, it does nothing, else
--can be reset to 0, can be loaded asynchronously
--increments at each rising edge
entity upcountersyncload is
	generic (n: integer :=16);
	port(
		loaddata: in std_logic_vector(n - 1 downto 0);
		en, load, rst, clk: in std_logic;
		counteroutput: out std_logic_vector(n - 1 downto 0)
	);
end upcountersyncload;

architecture upcountersyncloadarch of upcountersyncloadarch is
signal outborrow: std_logic;
signal counterinput, adderoutput, dummyinput, currentcount: std_logic_vector(n-1 downto 0);
begin
	counteroutput <= currentcount;
	dummyinput <= (others => '0');
	counterreg: entity work.regio generic map(n) port map(counterinput, en, clk, rst, currentcount);
  nextcount: entity work.nbitadderio generic map(n) port map(currentcount,dummyinput, '1', adderoutput,outborrow);
  muxloadorcurrent: entity work.mux2io generic map(n) port map(adderoutput, loaddata, load, counterinput);
end architecture;
	
