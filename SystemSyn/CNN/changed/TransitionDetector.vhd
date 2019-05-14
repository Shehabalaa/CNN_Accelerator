library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- this circuit detect transition of an input and output one till next rising edge if clk is inverted or till next falling edge if clk isn't
-- and it detect transition but there should be speration betweem tranisions of input with one clkcylcle
entity transitiondetectorcnn is
    port (
        edge,clk,rst : in std_logic;
        f : inout std_logic
    );
end transitiondetectorcnn;


architecture transitiondetectorcnnarch of transitiondetectorcnn is
    signal d : std_logic;
begin
    process(clk)
    begin
        if clk'event and clk ='0' then
            d <= f;
        end if;
    end process;

    process(edge,rst,d)
    begin
        if rst = '1' or d = '1' then
            f <= '0';
        elsif edge'event and edge ='1' then
            f <= '1' ;
        end if;
    end process;
end transitiondetectorcnnarch;
