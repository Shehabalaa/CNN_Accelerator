LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

--This entity controls all the IO operations; enabling the proper modules and synchronizing them together
ENTITY Controller IS
    PORT (
        edge,clk,rst : IN STD_LOGIC;
        f : INOUT STD_LOGIC
    );
END Controller;
