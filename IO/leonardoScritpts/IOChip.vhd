
-- 
-- Definition of  IOChip
-- 
--      Fri Apr 19 18:00:10 2019
--      
--      LeonardoSpectrum Level 3, 2018a.2
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity IOChip is
   port (
      clk : IN std_logic ;
      rst : IN std_logic ;
      imageOrCNN : IN std_logic ;
      INTR : IN std_logic ;
      load : IN std_logic ;
      processing : IN std_logic ;
      donePhase : OUT std_logic ;
      din : IN std_logic_vector (15 DOWNTO 0) ;
      dout : OUT std_logic_vector (3 DOWNTO 0)) ;
end IOChip ;

architecture IOChipArch of IOChip is
   signal GND0, nx230: std_logic ;

begin
   ix231 : fake_vcc port map ( Y=>nx230);
   ix227 : fake_gnd port map ( Y=>GND0);
   io_Interface_tri_result_0 : tri01 port map ( Y=>dout(0), A=>nx230, E=>
      GND0);
   io_Interface_tri_result_1 : tri01 port map ( Y=>dout(1), A=>nx230, E=>
      GND0);
   io_Interface_tri_result_2 : tri01 port map ( Y=>dout(2), A=>nx230, E=>
      GND0);
   io_Interface_tri_result_3 : tri01 port map ( Y=>dout(3), A=>nx230, E=>
      GND0);
   tri_donePhase : tri01 port map ( Y=>donePhase, A=>nx230, E=>GND0);
end IOChipArch ;

