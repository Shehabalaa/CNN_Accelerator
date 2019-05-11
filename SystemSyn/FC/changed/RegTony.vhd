library ieee;
use ieee.std_logic_1164.all;

-- register entity

entity regtonyfc is

	generic(wordsize:integer :=32);
	port(
			d: in std_logic_vector(wordsize-1 downto 0);
			load: in std_logic_vector(wordsize-1 downto 0);
			en, clk, rst: in std_logic;
            q: out std_logic_vector(wordsize-1 downto 0);
            qbar: out std_logic_vector(wordsize-1 downto 0)
		);

end entity regtonyfc;

----------------------------------------------------------------------
-- register architecture

architecture regtonyfcarch of regtonyfc is

begin

	process(d,clk, en, rst)
		begin
			if rst ='1' then
                q <= load;
                qbar <= not load;
            elsif clk'event and clk='1' then
                if en='1' then
                    q <= d;
                    qbar <= not d;
                end if;
			end if;

		end process;

end architecture;