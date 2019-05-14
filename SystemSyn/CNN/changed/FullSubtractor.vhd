library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity fullsubtractorcnn is 
port (  
    x : in std_logic;
    y : in std_logic;
    bin : in std_logic;
    difference : out std_logic;
    bout : out std_logic);
    end fullsubtractorcnn;
architecture fullsubtractorcnnarch of fullsubtractorcnn is
begin
    difference<=x xor y xor bin;
    bout<=((not x)and y)or((not x)and bin)or(y and bin);
end fullsubtractorcnnarch;
