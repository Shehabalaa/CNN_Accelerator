LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

-- this mux select only between two values with n bits in length
ENTITY TransitionDetector IS
    PORT (
        edge,clk,rst : IN STD_LOGIC;
        f : INOUT STD_LOGIC
    );
END TransitionDetector;


ARCHITECTURE TransitionDetectorArch OF TransitionDetector IS
    signal d : STD_LOGIC;
BEGIN
    process(clk)
    begin
        IF clk'EVENT AND clk ='1' THEN
            d <= f;
        END IF;
    end process;

    process(edge,rst,d)
    begin
        IF rst = '1' OR d = '1' THEN
            f <= '0';
        ELSIF edge'EVENT AND edge ='1' THEN
            f <= '1' ;
        END IF;
    end process;
END TransitionDetectorArch; 