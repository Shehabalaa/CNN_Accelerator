library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ramcnn is

	generic(addressbits: integer := 5; wordsize: integer :=32);

	port(
			clk : in std_logic;
			we  : in std_logic;
			address : in  std_logic_vector(addressbits - 1 downto 0);
			datain  : in  std_logic_vector(wordsize - 1 downto 0);
			dataout : out std_logic_vector(wordsize - 1 downto 0)
		);

end entity ramcnn;

------------------------------------------------------------

architecture ramcnnarch of ramcnn is

	type ramtype is array(0 to (2**addressbits) - 1) of std_logic_vector(wordsize - 1 downto 0);
	
	signal ram : ramtype ;
	
	begin

		process(clk) is
			begin
				if rising_edge(clk) then  
					if we = '1' then
						ram(to_integer(unsigned(address))) <= datain;
					end if;
				end if;
		end process;

		dataout <= ram(to_integer(unsigned(address)));
		
end architecture;