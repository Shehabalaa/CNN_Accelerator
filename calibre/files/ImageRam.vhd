library IEEE;
use IEEE.STD_LOGIC_1164.all;

 
 entity ImageRam is
   port (
      clk : IN std_logic ;
      rd : IN std_logic ;
      we : IN std_logic ;
      reset : IN std_logic ;
      addressRead : IN std_logic_vector (12 DOWNTO 0) ;
      addressWrite : IN std_logic_vector (12 DOWNTO 0) ;
      dataIn : IN std_logic_vector (15 DOWNTO 0) ;
      dataOut : OUT std_logic_vector (79 DOWNTO 0) ;
      MFCReadOut : OUT std_logic ;
      MFCWriteOut : OUT std_logic) ;
end ImageRam ;

architecture RAMArch of ImageRam is
begin
end RAMArch ;
