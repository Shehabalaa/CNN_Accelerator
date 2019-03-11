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
use work.constants.all;


ENTITY DMAController IS

  GENERIC (
    addressSize: INTEGER := 16;
   
    numUnits: INTEGER := 5 -- we have only five units, each unit contains 5 alu
  );
  PORT (
    -- clk, reset
    clk: IN STD_LOGIC;
    reset: IN STD_LOGIC;
	MFC:IN STD_LOGIC;
    -- internal buses
    weightsInternalBus: INOUT STD_LOGIC_VECTOR(weightsBusSize-1 DOWNTO 0);
    windowInternalBus: INOUT STD_LOGIC_VECTOR(windowBusSize-1 DOWNTO 0);
    
    -- Two Rams interface
    windowRamAddress: OUT STD_LOGIC_VECTOR(addressSize-1 DOWNTO 0);
    weightsRamAddress: OUT STD_LOGIC_VECTOR(addressSize-1 DOWNTO 0);
    weightsRamDataInBus: OUT STD_LOGIC_VECTOR(weightsBusSize-1 DOWNTO 0);
    windowRamDataInBus: OUT STD_LOGIC_VECTOR(windowBusSize-1 DOWNTO 0);
    weightsRamRead: OUT STD_LOGIC; --
    windowRamRead: OUT STD_LOGIC; --
    windowRamWrite: OUT STD_LOGIC; --
    weightsRamDataOutBus: OUT STD_LOGIC_VECTOR(weightsBusSize-1 DOWNTO 0);
    windowRamDataOutBus: OUT STD_LOGIC_VECTOR(windowBusSize-1 DOWNTO 0);
    MFCWindowRam: IN STD_LOGIC;
    MFCWeightsRam: IN STD_LOGIC;

    -- input cnt signals
    loadNextFilter: IN STD_LOGIC; -- signal to specify to me to start reading the filter, here we keep track of the next address to read from
    loadNextWindow: IN STD_LOGIC; -- same as above but for window
    loadNextRow: IN STD_LOGIC; -- same as above but for one row
    loadWord: IN STD_LOGIC; -- same as above but for read config from filter ram
    layerFinished: IN STD_LOGIC;
    write: IN STD_LOGIC; -- signal to specify write the current data in internal bus

    -- CONFIG
    filterSize: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    inputSize: IN STD_LOGIC_VECTOR(maxImageSize-1 DOWNTO 0);
    outputSize: IN STD_LOGIC_VECTOR(maxImageSize-1 DOWNTO 0);
    windowRamBaseAddress1, windowRamBaseAddress2: IN STD_LOGIC_VECTOR(addressSize-1 DOWNTO 0);
    filterRamBaseAddress: IN STD_LOGIC_VECTOR(addressSize-1 DOWNTO 0);
    config: IN STD_LOGIC_VECTOR(configCount downto 0);
    
    -- o.p cnt signals
    windowReadOne: OUT STD_LOGIC; -- output signal set when one row when loading window is available on internal buses
    windowReadFinal: OUT STD_LOGIC; -- // // // // when final input is available on the internal data bus

    weightsReadOne: OUT STD_LOGIC; -- output signal set when one row when loading window is available on internal buses
    weightsReadFinal: OUT STD_LOGIC; -- // // // // when final input is available on the internal data bus

    writeDone: OUT STD_LOGIC;
    
    filterAluNumber: OUT STD_LOGIC_VECTOR(4 downto 0); -- 5 bits to say where to set the data within which ALU when fetching Filter
    windowAluNumber: OUT STD_LOGIC_VECTOR(4 downto 0) -- 5 bits to say where to set the data within which ALU when fetching Window
  );
END DMAController ;

ARCHITECTURE DMAControllerArch OF DMAController IS

SIGNAL currentReadRamAddress, currentWriteRamAddress: STD_LOGIC_VECTOR(addressSize DOWNTO 0);
SIGNAL ramAddressSelector: STD_LOGIC; -- 0 selects address1, 1 selects address 2
-- internal cnt signals
SIGNAL switchRam: STD_LOGIC;
begin
    
    readRamMux: ENTITY work.Mux2 GENERIC MAP(addressSize) PORT MAP(
      A => windowRamBaseAddress1,
      B => windowRamBaseAddress2,
      S => ramAddressSelector,
      C => currentReadRamAddress
    );
    writeRamMux: ENTITY work.Mux2 GENERIC MAP(addressSize) PORT MAP(
      A => windowRamBaseAddress2,
      B => windowRamBaseAddress1,
      S => ramAddressSelector,
      C => currentWriteRamAddress
    );

    windowReadLogicEnt: ENTITY work.ReadLogic GENERIC MAP (addressSize, windowBusSize) PORT MAP (
      clk => clk,

      resetState => reset,
      switchRam => switchRam,
      ramBasedAddress => currentReadRamAddress,
      
      -- Ram and internal bus
      internalBus => windowInternalBus,
      ramDataInBus => windowRamDataInBus,
      ramRead => windowRamRead,
      ramWrite => windowRamWrite,
      ramDataOutBus => windowRamDataOutBus,
      MFC => MFCWindowRam,

      -- CONFIG
      inputSize => inputSize,
      filterSize => filterSize,
      
      
      -- input cnt signals
      loadNextWordList => loadNextWindow,
      loadWord => loadNextRow,
      -- output cnt signals
      readOne => windowReadOne,
      readFinal => windowReadFinal,
      aluNumber => windowAluNumber
    );

    filterReadLogicEnt: ENTITY work.ReadLogic GENERIC MAP (addressSize, weightsBusSize) PORT MAP (
      clk => clk,

      resetState => reset,
      switchRam => switchRam,
      ramBasedAddress => filterRamBaseAddress,
      
      -- DMA interface => interface to dma
      internalBus => weightsInternalBus,
      ramDataInBus => weightsRamDataInBus,
      ramRead => weightsRamRead,
      -- ramWrite => ramWrite;
      ramDataOutBus => weightsRamDataOutBus,
      MFC => MFC,

      -- CONFIG
      inputSize => inputSize,
      filterSize => filterSize,
      
      
      -- input cnt signals
      loadNextWordList => loadNextFilter,
      loadWord => loadWord,
      -- output cnt signals
      readOne => weightsReadOne,
      readFinal => weightsReadFinal,
      aluNumber => filterAluNumber
    );

    writeLogicEnt: ENTITY work.WriteLogic GENERIC MAP (addressSize, windowBusSize) PORT MAP (
      clk => clk,

      resetState => reset,
      switchRam => switchRam,
      ramBasedAddress => currentWriteRamAddress,

      
      -- DMA interface => interface to dma
      internalBus => windowInternalBus,
      ramWrite => windowRamWrite,
      ramDataInBus => windowRamDataInBus,
      ramAddress => windowRamAddress,
      MFC => MFCWindowRam,

      -- CONFIG
      outputSize => outputSize,
      
      
      -- input cnt signals
      write => write, -- signal to take the data at internal bus and put it into the ram in the next write address

      -- output cnt signals
      writeDone => writeDone -- output signal set when any write is done
    );
  

    switchBaseAddressProc: PROCESS(layerFinished)
    begin
    IF rising_edge(layerFinished) THEN --? TODO: can be simplified to layerFinished = '1' without rising edge ?
      ramAddressSelector <= not ramAddressSelector;
    END IF;
    END PROCESS switchBaseAddressProc; 


END ARCHITECTURE ; -- DMAControllerArch