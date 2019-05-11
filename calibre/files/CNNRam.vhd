library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity CNNRam is
   port (
      clk : IN std_logic ;
      rd : IN std_logic ;
      we : IN std_logic ;
      reset : IN std_logic ;
      addressRead : IN std_logic_vector (11 DOWNTO 0) ;
      addressWrite : IN std_logic_vector (11 DOWNTO 0) ;
      dataIn : IN std_logic_vector (15 DOWNTO 0) ;
      dataOut : OUT std_logic_vector (39 DOWNTO 0) ;
      MFCReadOut : OUT std_logic ;
      MFCWriteOut : OUT std_logic) ;
end CNNRam ;

architecture RAMArch of CNNRam is
begin

end RAMArch ;
