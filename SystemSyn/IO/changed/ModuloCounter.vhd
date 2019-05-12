library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity modulocounterio is 
	generic(n: integer := 3);
	port(
		modulator: in std_logic_vector(n-1 downto 0);
		en,rst,clk: in std_logic;
		currentcount: out std_logic_vector(n-1 downto 0)
	);

end modulocounterio;


architecture modulocounterioarch of modulocounterio is
signal currentcountsignal, nextcount, zeros, muxedcount: std_logic_vector(n-1 downto 0);
signal carryout,sel: std_logic;
begin
	counterreg: entity work.regio generic map(n) port map(muxedcount, en, clk, rst, currentcountsignal);
	nbitadder: entity work.nbitadderio generic map(n) port map(currentcountsignal,zeros, '1', nextcount, carryout);
	mux2: entity work.mux2io generic map(n) port map(nextcount,zeros,sel,muxedcount);
	currentcount <= currentcountsignal;
	zeros <= ( others => '0');

	sel <= '1' when currentcountsignal = modulator
	else '0';

end architecture;
	