library ieee;
use ieee.std_logic_1164.all;

-- register entity

entity regcnn is

	generic(wordsize:integer :=32);
	port(
			d: in std_logic_vector(wordsize-1 downto 0);
			en, clk, rst: in std_logic;
            q: out std_logic_vector(wordsize-1 downto 0);
            qbar: out std_logic_vector(wordsize-1 downto 0)
		);

end entity regcnn;

----------------------------------------------------------------------
-- register architecture

architecture regcnnarch of regcnn is

begin

	process(d,clk, en, rst)
		begin
			if rst ='1' then
                q <= (others=>'0');
                qbar <= (others=>'1');
            elsif clk'event and clk='1' then
                if en='1' then
                    q <= d;
                    qbar <= not d;
                end if;
			end if;

		end process;

end architecture;