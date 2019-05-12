library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- iocounterio entity

-- load ==> a parallel load to the iocounter
-- reset ==> 1 to reset the iocounter
-- isload ==> 1 to put the parallel load in the iocounter
-- count ==> output of the iocounter

entity iocounterio is

    generic (n: integer :=2);

    port(
        load: in std_logic_vector(n-1 downto 0);
        reset, clk, isload: in std_logic;
        count: out std_logic_vector(n-1 downto 0)
    );

end iocounterio;


architecture iocounterioarch of iocounterio is

    signal iocounterinput, countadded, currentcount, resetorcurrent: std_logic_vector(n-1 downto 0);
    signal zeros: std_logic_vector(n-1 downto 0);
    begin

        iocounterreg: entity work.regio generic map(n) port map(iocounterinput, '1', clk, '0', currentcount);
        nextcount: entity work.nbitadderio generic map(n) port map(currentcount, zeros, '1', countadded);
        muxloadorcurrent: entity work.mux2io generic map(n) port map(resetorcurrent, load, isload, iocounterinput);
        muxinput: entity work.mux2io generic map(n) port map(countadded, zeros, reset, resetorcurrent);
        count <= currentcount;
        zeros <= (others => '0');

end architecture;