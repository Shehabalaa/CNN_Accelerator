library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity mul8x16cnn is
    port (
        q :in std_logic_vector(7 downto 0);
        m :in std_logic_vector(15 downto 0); -- operads to be multiplied
        f :out std_logic_vector(15 downto 0); -- result
        clk,start,rst :in std_logic; -- clk and signal start to start note start should be 0 then goes to 1
        sel,startandpause : in std_logic
    );
end mul8x16cnn;

architecture mul8x16cnnarch of mul8x16cnn is
    signal pinit,pbs,pmux,preg : std_logic_vector(2*16 downto 0);
    signal mreg : std_logic_vector(15 downto 0); 
    signal mextended : std_logic_vector(23 downto 0); 
begin
    pinit <=  ( 7+16 downto 0 =>'0') & q &'0';
    mextended <= (7 downto 0 => mreg(15))&mreg;

    pregcmp : entity work.regcnn generic map(2*16+1) port map(pbs,startandpause,clk,rst,preg);
    mregcmp : entity work.regcnn generic map(16) port map(m,'1',start,rst,mreg);
    muxcmp :  entity work.binarymuxcnn generic map(2*16+1) port map(preg,pinit,sel,pmux);
    bscmp : entity work.boothstepcnn port map(pmux,mextended,pbs);
    -- output only valid if done is one
    
    --f <= pbs(2*16-8 downto 9); -- without floating point
    f <= pbs(15+7 downto 7); --with floating point

end mul8x16cnnarch; 
