LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

-- this circuit detect transition of an input and output one till next rising transition if clk is inverted or till next falling transition if clk isn't
-- and it detect transition but there should be speration betweem tranisions of input with one clkcylcle
ENTITY RisingHolderFullCycle IS
    PORT (
        transition,clk,rst : IN STD_LOGIC;
        f : INOUT STD_LOGIC
    );
END RisingHolderFullCycle;


ARCHITECTURE RisingHolderFullCycleArch OF RisingHolderFullCycle IS
    signal d : STD_LOGIC;
BEGIN
    process(clk)
    begin
        IF clk'EVENT AND clk ='1' THEN
            d <= f;
        END IF;
    end process;

    process(transition,rst,d)
    begin
        IF rst = '1' OR d = '1' THEN
            f <= '0';
        ELSIF transition'EVENT AND transition ='1' THEN
            f <= '1' ;
        END IF;
    end process;
END RisingHolderFullCycleArch; 
