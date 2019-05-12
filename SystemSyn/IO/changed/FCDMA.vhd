library ieee;

use ieee.std_logic_1164.all;


entity fcdmaio is 
	generic(n: integer := 16);
	port(
		datain: in std_logic_vector(n-1 downto 0);
		clk,rst,addresscounterenable,delayedint,donefcram: in std_logic;
		address: out std_logic_vector(15 downto 0);
		dataout: out std_logic_vector(5*(n)-1 downto 0);
		write: out std_logic
	); 
end entity fcdmaio;


architecture fcdmaioarch of fcdmaio is 

type registerstype is array (0 to 4) of  std_logic_vector(n-1 downto 0);
type enabletype is array (0 to 4) of std_logic;

signal registersin : registerstype;
signal registersout: registerstype;
signal enarray: enabletype;
signal modulocountersignal: std_logic_vector(2 downto 0);
signal zeros: std_logic_vector(15 downto 0);
signal notclk, modulorst: std_logic;

begin
	notclk <= not clk;
	
	loop1: for i in 0 to 4
	generate 

	
	fx: entity work.regio generic map (n) port map(registersin(i),enarray(i),clk,rst,registersout(i));

	end generate;
	
	modulorst <= rst or donefcram;
	modulocounter: entity work.modulocounterio generic map(3) port map("101",delayedint,modulorst,notclk,modulocountersignal);
	inversemux: entity work.inversemuxio generic map(n) port map(datain,modulocountersignal,delayedint,rst,registersin(0),registersin(1),registersin(2), registersin(3), registersin(4));
	mar: entity work.iocounter2io generic map(16) port map(addresscounterenable,rst,clk,address);

	enarray(0) <= '1' when modulocountersignal ="000"
	else '0';
	enarray(1) <= '1' when modulocountersignal = "001"
	else '0';
	enarray(2) <= '1' when modulocountersignal = "010"
	else '0';
	enarray(3) <= '1' when modulocountersignal = "011"
	else '0';
	enarray(4) <= '1' when modulocountersignal = "100"
	else '0';
	
	dataout <= registersout(4)&registersout(3)&registersout(2)&registersout(1)&registersout(0) when modulocountersignal = "101";
	write <= '1' when modulocountersignal = "101" else '0';
	zeros <= (others => '0');

end architecture;