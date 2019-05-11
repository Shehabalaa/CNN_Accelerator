library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- counterfc entity

-- load ==> a parallel load to the counter
-- reset ==> 1 to reset the counter
-- isload ==> 1 to put the parallel load in the counter
-- count ==> output of the counter

entity counterupdownfc is

    generic (n: integer :=4);

    port(
        load,resetvalue: in std_logic_vector(n-1 downto 0);
        clk, en, rst, isload,upordown: in std_logic;
        count: out std_logic_vector(n-1 downto 0)
    );

end counterupdownfc;


architecture counterupdownfcarch of counterupdownfc is

    signal  countadded, currentcount,temp: std_logic_vector(n-1 downto 0);
    signal carry: std_logic ;

    begin

        nextcount: entity work.nbitadderfc generic map(n) port map(currentcount, temp, carry, countadded);

        carry <= '1' when upordown ='0' else '0';
        temp <= (others => '0') when upordown ='0' else (others =>'1');
        
    process(currentcount,clk, en, rst)
		begin
			if rst ='1' then
                currentcount <= resetvalue;
            elsif clk'event and clk='1' then
                if (isload ='1')and(en='0') then
                    currentcount <=load;
                end if;
                if en='1' then
                    currentcount <= countadded;
                end if;
			end if;

        end process;
        
        count <=currentcount;
        
end architecture;