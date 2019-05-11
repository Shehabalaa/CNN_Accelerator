library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity CNNModule_8_16_5_5_3_12_13 is
   port (
      startCNN : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      weightsRamDataInBus : IN std_logic_vector (39 DOWNTO 0) ;
      windowRamDataInBus : IN std_logic_vector (79 DOWNTO 0) ;
      MFCWindowRam : IN std_logic ;
      MFCWeightsRam : IN std_logic ;
      MFCWrite : IN std_logic ;
      weightsRamAddress : OUT std_logic_vector (11 DOWNTO 0) ;
      windowRamAddressRead : OUT std_logic_vector (12 DOWNTO 0) ;
      windowRamAddressWrite : OUT std_logic_vector (12 DOWNTO 0) ;
      weightsRamRead : OUT std_logic ;
      windowRamRead : OUT std_logic ;
      windowRamWrite : OUT std_logic ;
      windowRamDataOutBus : OUT std_logic_vector (15 DOWNTO 0) ;
      finishNetwork : OUT std_logic) ;
end CNNModule_8_16_5_5_3_12_13 ;

architecture CNNModuleArch of CNNModule_8_16_5_5_3_12_13 is
begin

end CNNModuleArch ;
