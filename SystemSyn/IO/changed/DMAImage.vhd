library ieee;
use ieee.std_logic_1164.all;

-- image dma receives address and data and sends it to ram after counting over it.
entity dmaimageio is

port    (
		datain: in std_logic_vector(7 downto 0);
		addressin: in std_logic_vector(9 downto 0);
		clk, enableimagecounter,enableimageregister,rst,intrdelayed: in std_logic;
		dataout: out std_logic_vector(15 downto 0);
		addressout: out std_logic_vector(12 downto 0)
	);

end entity;

architecture dmaimageioarch of dmaimageio is
signal addresscounterin: std_logic_vector(12 downto 0);
signal registerin: std_logic_vector(15 downto 0);
begin
	addresscounterin <= "000" & addressin;
-- address counter needs enable
	addresscounter: entity work.upcountersyncload generic map(13) port map(addresscounterin, enableimagecounter, intrdelayed , rst, clk, addressout);
	registerin <= datain & "00000000";
	myreg: entity work.reg	generic map(16) port map(registerin, enableimageregister, clk, rst, dataout);

end architecture;
