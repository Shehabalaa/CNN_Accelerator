library ieee;
use ieee.std_logic_1164.all;

-- register entity

entity flibflobfc is

	port(
			d: in std_logic;
			en, clk, rst: in std_logic;
            q: out std_logic;
            qbar: out std_logic
		);

end entity flibflobfc;

----------------------------------------------------------------------
-- register architecture

architecture flibflobfcarch of flibflobfc is

begin

	process(d,clk, en, rst)
		begin
			if rst ='1' then
                q <= '0';
                qbar <= '1';
            elsif clk'event and clk='1' then
                if en='1' then
                    q <= d;
                    qbar <= not d;
                end if;
			end if;

		end process;

end architecture;