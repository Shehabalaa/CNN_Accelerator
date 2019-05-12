library ieee;
use ieee.std_logic_1164.all;

-- cnn dma receives address and data and sends it to ram after counting over it.
entity dmacnnio is

port    (
		datain: in std_logic_vector(15 downto 0);
		clk, enablecnncounter,enablecnnregister,rst: in std_logic;
		dataout: out std_logic_vector(15 downto 0);
		addressout: out std_logic_vector(11 downto 0)
	);

end entity;

architecture dmacnnioarch of dmacnnioarch is
begin
	addresscounter: entity work.iocounter5io generic map(12) port map(enablecnncounter, rst, clk, addressout);
	myreg: entity work.reg	generic map(16) port map(datain, enablecnnregister, clk, rst, dataout);

end architecture;
