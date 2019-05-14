library ieee;
use ieee.std_logic_1164.all;

-- decompressor entity
-- receives data from multiplexer then sends it to the dma.
entity decompressorio is

port    (
		datain: in std_logic_vector(5 downto 0);
		clk, en, rst, imageload, intrdelayed: in std_logic;
		zerostate: out std_logic;
		dataout: out std_logic_vector(7 downto 0)
	);

end entity;

architecture decompressorioarch of decompressorio is
signal countout: std_logic_vector(5 downto 0);
signal registerin: std_logic_vector(7 downto 0);
begin
	counter: entity work.downcountersyncloadio generic map(n=>6) port map(loaddata => datain, clk =>clk, 	en=>en,rst => rst,load => intrdelayed, counteroutput => countout);
	registerin <= "00000001";
	zerostate <= not(countout(0) or countout(1) or countout(2) or countout(3) or countout(4) or countout(5));
	myreg: entity work.reg	generic map(8) port map(registerin, imageload, clk, rst, dataout);

end architecture;
