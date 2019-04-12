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
    -- internal buses
    weightsInternalBus: out STD_LOGIC_VECTOR(weightsBusSize-1 DOWNTO 0);
    windowInternalBus: INOUT STD_LOGIC_VECTOR(windowBusSize-1 DOWNTO 0);
    
    -- Two Rams interface
    weightsRamAddress: OUT STD_LOGIC_VECTOR(addressSize-1 DOWNTO 0);
    windowRamAddress: OUT STD_LOGIC_VECTOR(addressSize-1 DOWNTO 0);
    weightsRamDataInBus: IN STD_LOGIC_VECTOR(weightsBusSize-1 DOWNTO 0);
    windowRamDataInBus: IN STD_LOGIC_VECTOR(windowBusSize-1 DOWNTO 0);
    weightsRamRead: OUT STD_LOGIC; --
    windowRamRead: OUT STD_LOGIC; --
    windowRamWrite: OUT STD_LOGIC; --
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
    filterSize: IN STD_LOGIC_VECTOR(addressSize-1 DOWNTO 0);
    inputSize: IN STD_LOGIC_VECTOR(addressSize-1 DOWNTO 0);
    outputSize: IN STD_LOGIC_VECTOR(maxImageSize-1 DOWNTO 0);
    windowRamBaseAddress1, windowRamBaseAddress2: IN STD_LOGIC_VECTOR(addressSize-1 DOWNTO 0);
    filterRamBaseAddress: IN STD_LOGIC_VECTOR(addressSize-1 DOWNTO 0);
    
    -- o.p cnt signals
    windowReadOne: OUT STD_LOGIC; -- output signal set when one row when loading window is available on internal buses
    windowReadFinal: OUT STD_LOGIC; -- // // // // when final input is available on the internal data bus

    weightsReadOne: OUT STD_LOGIC; -- output signal set when one row when loading window is available on internal buses
    weightsReadFinal: OUT STD_LOGIC; -- // // // // when final input is available on the internal data bus

    writeDoneAll: OUT STD_LOGIC;
    writeDoneOne: OUT STD_LOGIC;
    
    filterAluNumber: OUT STD_LOGIC_VECTOR(2 downto 0); -- 5 bits to say where to set the data within which ALU when fetching Filter
    windowAluNumber: OUT STD_LOGIC_VECTOR(2 downto 0) -- 5 bits to say where to set the data within which ALU when fetching Window
  );
END DMAController ;

ARCHITECTURE DMAControllerArch OF DMAController IS

SIGNAL currentReadRamBaseAddress, currentWriteRamBaseAddress: STD_LOGIC_VECTOR(addressSize-1 DOWNTO 0);
SIGNAL readLogicRamAddress, writeLogicRamAddress: STD_LOGIC_VECTOR(addressSize-1 DOWNTO 0);
SIGNAL ramBaseAddressSelector: STD_LOGIC; -- 0 selects address1, 1 selects address 2
SIGNAL windowInternalBusRLogic, windowInternalBusWLogic: STD_LOGIC_VECTOR(windowBusSize-1 DOWNTO 0);
-- internal cnt signals
SIGNAL switchRam: STD_LOGIC;
SIGNAL resetLogics: STD_LOGIC;
begin
    -- ramBaseAddressSelector <= '0' WHEN reset = '1' ELSE '1';
    switchRam <= reset OR layerFinished;
    resetLogics <= '0'; -- till now we always switch ram with reset
    readRamMux: ENTITY work.Mux2 GENERIC MAP(addressSize) PORT MAP(
      A => windowRamBaseAddress1,
      B => windowRamBaseAddress2,
      S => ramBaseAddressSelector,
      C => currentReadRamBaseAddress
    );
    writeRamMux: ENTITY work.Mux2 GENERIC MAP(addressSize) PORT MAP(
      A => windowRamBaseAddress2,
      B => windowRamBaseAddress1,
      S => ramBaseAddressSelector,
      C => currentWriteRamBaseAddress
    );

    -- mux to select which address should enter to the window ram, address from write or address from read
    windowRamAddressMux: ENTITY work.Mux2 GENERIC MAP(addressSize) PORT MAP(
      A => readLogicRamAddress,
      B => writeLogicRamAddress,
      S => write,
      C => windowRamAddress
    );

    -- tristate for window internal bus
    readLogicTri: ENTITY work.Tristate GENERIC MAP(windowBusSize) PORT MAP (
      input => windowInternalBusRLogic,
      output => windowInternalBus,
      en => '1'
    ); 
    writeLogicTri: ENTITY work.Tristate GENERIC MAP(windowBusSize) PORT MAP (
      input => windowInternalBus,
      output => windowInternalBusWLogic,
      en => '1'
    ); 

    windowReadLogicEnt: ENTITY work.ReadLogic GENERIC MAP (addressSize, windowBusSize) PORT MAP (
      clk => clk,

      resetState => resetLogics,
      switchRam => switchRam,
      ramBasedAddress => currentReadRamBaseAddress,
      
      -- Ram and internal bus
      internalBus => windowInternalBusRLogic,
      ramDataInBus => windowRamDataInBus,
      ramRead => windowRamRead,
      ramAddress => readLogicRamAddress,
      MFC => MFCWindowRam,

      -- CONFIG
      inputSize => inputSize,
      filterSize => filterSize,
      isFilter => '0',
      
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

      resetState => resetLogics,
      switchRam => reset,
      ramBasedAddress => filterRamBaseAddress,
      
      -- DMA interface => interface to dma
      internalBus => weightsInternalBus,
      ramDataInBus => weightsRamDataInBus,
      ramRead => weightsRamRead,
      ramAddress => weightsRamAddress,
      MFC => MFCWeightsRam,

      -- CONFIG
      inputSize => filterSize,
      filterSize => filterSize,
      isFilter => '1',
      
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

      resetState => resetLogics,
      switchRam => switchRam,
      ramBasedAddress => currentWriteRamBaseAddress,

      
      -- DMA interface => interface to dma
      internalBus => windowInternalBusWLogic,
      ramWrite => windowRamWrite,
      ramDataOutBus => windowRamDataOutBus,
      ramAddress => writeLogicRamAddress,
      MFC => MFCWindowRam,

      -- CONFIG
      outputSize => outputSize,
      
      
      -- input cnt signals
      write => write, -- signal to take the data at internal bus and put it into the ram in the next write address

      -- output cnt signals
      writeDone => writeDoneAll, -- output signal set when any write is done
      writeDoneOne => writeDoneOne -- output signal set when any write is done
    );
  

    switchBaseAddressProc: PROCESS(layerFinished)
    begin
    IF reset = '1' THEN
      ramBaseAddressSelector <= '0';
    ELSIF rising_edge(layerFinished) THEN --? TODO: can be simplified to layerFinished = '1' without rising edge ?
      ramBaseAddressSelector <= not ramBaseAddressSelector;
      -- switchRam <= '1';
    END IF;
    END PROCESS switchBaseAddressProc; 


END ARCHITECTURE ; -- DMAControllerArch