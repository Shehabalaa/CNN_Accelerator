-- DMA controller is responsible for:
--    * switch between two base addresses
--    * make two IOLogic, one for dealing with filter(weights) ram, and the other for dealing with window ram
-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- 


library ieee ;
use ieee.std_logic_1164.all ;
use ieee.numeric_std.all ;
use work.constants


ENTITY DMAController IS

  GENERIC (
    weightsBusSize: INTEGER := 8*5;
    windowBusSize: INTEGER := 16*5;
    numUnits: INTEGER := 5 -- we have only five units, each unit contains 5 alu
  );
  PORT (
    weightsInternalBus: INOUT STD_LOGIC_VECTOR(weightsBusSize-1 DOWNTO 0);
    windowInternalBus: INOUT STD_LOGIC_VECTOR(windowBusSize-1 DOWNTO 0);
    
    -- Two Rams interface
    weightsRamDataInBus: IN STD_LOGIC_VECTOR(weightsBusSize-1 DOWNTO 0);
    windowRamDataInBus: IN STD_LOGIC_VECTOR(windowBusSize-1 DOWNTO 0);
    weightsRamRead: OUT STD_LOGIC, --
    windowRamRead: OUT STD_LOGIC, --
    windowRamWrite: OUT STD_LOGIC, --
    weightsRamDataOutBus: OUT STD_LOGIC_VECTOR(weightsBusSize-1 DOWNTO 0);
    windowRamDataOutBus: OUT STD_LOGIC_VECTOR(windowBusSize-1 DOWNTO 0);
    MFCWindowRam: IN STD_LOGIC;
    MFCWeightsRam: IN STD_LOGIC;


    loadNextFilter: IN STD_LOGIC, -- signal to specify to me to start reading the filter, here we keep track of the next address to read from
    loadNextWindow: IN STD_LOGIC, -- same as above but for window
    loadNextRow: IN STD_LOGIC, -- same as above but for one row
    loadWord: IN STD_LOGIC, -- same as above but for one row

    -- CONFIG
    config: IN STD_LOGIC_VECTOR(configCount downto 0),
    
    readOne: OUT, -- output signal set when one row when loading window is available on internal buses
    readFinal: OUT, -- // // // // when final input is available on the internal data bus
    
    aluNumber: OUT STD_LOGIC_VECTOR(4 downto 0) -- 5 bits to say where to set the data within which ALU
  ) ;
END DMAController ;

ARCHITECTURE DMAControllerArch OF DMAController IS
signal 


begin
    


END ARCHITECTURE ; -- DMAControllerArch