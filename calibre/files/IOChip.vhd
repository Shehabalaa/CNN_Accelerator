Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IOChip is
   port (
      din : IN std_logic_vector (15 DOWNTO 0) ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      imageOrCNN : IN std_logic ;
      INTR : IN std_logic ;
      load : IN std_logic ;
      processing : IN std_logic ;
      doneWithPhase : OUT std_logic ;
      busy : OUT std_logic ;
      doneDMAFC : IN std_logic ;
      doneDMACNN : IN std_logic ;
      doneDMAImage : IN std_logic ;
      imgRamWrite : INOUT std_logic ;
      CNNRamWrite : INOUT std_logic ;
      FCRamWrite : INOUT std_logic ;
      imageDMAAddressOut : OUT std_logic_vector (12 DOWNTO 0) ;
      imageDMADataOut : OUT std_logic_vector (15 DOWNTO 0) ;
      CNNDMAAddressOut : OUT std_logic_vector (11 DOWNTO 0) ;
      CNNDMADataOut : OUT std_logic_vector (15 DOWNTO 0) ;
      FCDMAAddressOut : OUT std_logic_vector (15 DOWNTO 0) ;
      FCDMADataOut : OUT std_logic_vector (79 DOWNTO 0) ;
      result : OUT std_logic_vector (3 DOWNTO 0) ;
      FCResult : IN std_logic_vector (3 DOWNTO 0) ;
      FCDone : IN std_logic ;
      toCNN : INOUT std_logic ;
      toFC : OUT std_logic) ;
end IOChip ;

architecture IOChipArch of IOChip is
begin
end;
