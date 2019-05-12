library ieee;
use ieee.std_logic_1164.all;

entity iodffio is
	port(
		d: in std_logic;
		clk, rst, en: in std_logic;
		q: out std_logic
		);
end iodffio;

architecture iodffioarch of iodffio is 
begin
	process(clk, rst)
		begin
		if (rst = '1') then 
			q <= '0';
		elsif (rising_edge(clk)) then 
			if (en = '1') then
			q <= d;
			end if;
		end if;
	end process;
end architecture;
