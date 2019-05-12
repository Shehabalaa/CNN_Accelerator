library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.utiles.all;

entity nmul8x16fc is
    generic (n :integer := 1);
    port (
        -- equation f(i) = q(i) * m(i) + c(i) for i to n
        q :in genericarrayofvector8bit(n-1 downto 0);
        m :in genericarrayofvector16bit(n-1 downto 0); 
        f :inout genericarrayofvector16bit(n-1 downto 0);
        clk,start,rst :in std_logic;
        done :inout std_logic; 
        working :inout std_logic
    );
end nmul8x16fc;

architecture nmul8x16fcarch of nmul8x16fc is
    signal counter :std_logic_vector(3 downto 0);
    signal counterrst,restartdetection,startandpause,firststart,clkinv :std_logic;
begin
    gen: for i in n-1 downto 0  generate
    begin
        cmp: entity work.mul8x16fc port map (q(i),m(i),f(i),clkinv,start,rst,counter(0),startandpause);
    end generate;

    done <= counter(3);
    startandpause <= working;
    working <= firststart and not done; 
    counterrst <= rst or restartdetection;
    clkinv <= not clk;

    startcaptuercmp : entity work.risingholderhalfcyclefc port map(start,clk,rst,restartdetection);
    countercmp : entity work.shiftregfc generic map(3) port map(counter,clk,startandpause,counterrst);
    firtstartlachcmp : entity work.regfc generic map(1) port map(d(0) => '1',en => '1',clk => start,rst => rst, q(0) => firststart);

end nmul8x16fcarch; 
