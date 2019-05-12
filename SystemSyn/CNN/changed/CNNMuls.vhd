library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.types.all;

-- cnnmulscnn entity

-- window --> output registers of the window (25 in our case)
-- filter --> output registers of the filter (25 in our case)
-- clk --> system clock
-- start --> signal to start the multiplication operation
-- outputs --> output of the multiplication (25 output in our case)
-- done --> signal to indicate that multiplication is done and output is ready



entity cnnmulscnn is
    generic (n :integer := 25);
    port (
        filter :in arrayofregs8(n-1 downto 0);
        window :in arrayofregs16(n-1 downto 0); 
        outputs :out arrayofregs16(n-1 downto 0);
        clk,start,rst :in std_logic;
        doneout :out std_logic; 
        workingout :out std_logic
    );
end cnnmulscnn;

architecture cnnmulscnnarch of cnnmulscnn is
    signal counter :std_logic_vector(3 downto 0);
    signal counterrst,restartdetection,startandpause,firststart,clkinv, done, working:std_logic;
begin
    gen: for i in n-1 downto 0  generate
    begin
        cmp: entity work.mul8x16cnn port map (filter(i), window(i), outputs(i),clkinv,start,rst,counter(0),startandpause);
    end generate;

    doneout <= done;
    workingout <= working;

    done <= counter(3);
    startandpause <= working;
    working <= firststart and not done; 
    counterrst <= rst or restartdetection;
    clkinv <= not clk;

    startcaptuercmp : entity work.transitiondetectorcnn port map(start,clk,rst,restartdetection);
    countercmp : entity work.shiftregcnn generic map(3) port map(counter,clk,startandpause,counterrst);
    firtstartlachcmp : entity work.regcnn generic map(1) port map(d(0) => '1',en => '1',clk => start,rst => rst, q(0) => firststart);

end architecture; 