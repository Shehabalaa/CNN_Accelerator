library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

entity shiftregfc is
	generic (n:integer :=32);
	port(
	outp: inout std_logic_vector(n downto 0);
	clk,en,rst: in std_logic 
	);
end shiftregfc;

architecture shiftregfcarch of shiftregfc is
begin
	process(clk,rst)
	begin
		if rst='1' then
			outp <= (n downto 1 => '0') & '1';
        elsif clk'event and clk='1' then
            if en='1' then
                outp <= outp(n-1 downto 0) & '0';
            end if;
		end if;
	end process;
end shiftregfcarch;