library ieee;
use ieee.std_logic_1164.all;

-- twoscomplementfc entity

entity twoscomplementfc is

        generic (wordsize : integer := 16);
    port(
        input:in std_logic_vector(wordsize-1 downto 0);
        output:out std_logic_vector(wordsize-1 downto 0)
    );

end entity twoscomplementfc;

----------------------------------------------------------------------
-- two's complement architecture

architecture twoscomplementfcarch of twoscomplementfc is

    signal ina:std_logic_vector( wordsize-1 downto 0) ;
    signal inb:std_logic_vector( wordsize-1 downto 0) ;
    signal inc:std_logic ;
    signal outc:std_logic ;

  begin

    ina <= not input;
    inb <= (0=>'1', others=>'0'); 
    inc <= '0';
    fx: entity work.nbitadderfc generic map(wordsize) port map(ina,inb,inc,output,outc);

  end architecture;
