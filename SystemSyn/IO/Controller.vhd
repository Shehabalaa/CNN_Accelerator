LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

--Controller entity is responsible for generating the control signals and feeding them to all other modules
--Is also responsible for identifying state and sending synchronization signals to CPU
--PORTS
--doneDMAFC: Indicates that the FC RAM was successfully written into
--doneDMACNN: Indicates that the CNN RAM was successfully written into
--doneDMAImage: Indicates that the Image RAM was successfully written into
--INTR: Signal provided by CPU when placing data on the bus
--clk: The chip's clock, provided by the CPU

--loadOrProcess: Indicates if I'm currently loading an image/model, or I'm currently processing, provided by the CPU

--processing: Indicates I'm currently processing
--zeroState: Indicates whether global counter has reached zero state (inputs of this stage are done), provided by Interface
--decompZeroState: Indicates whether the decompressor's counter has reached zero state (run has ended)

--rst: Signal for resetting the registers, used as initialization for the chip
--INTRDelayed: INTR signal, delayed by one cycle
--load: Indicates I'm currently loading the image or model data

--busy: Sent to CPU to indicate that the chip isn't ready for new inputs
--doneWithPhase: Informs CPU that the current phase's data is successfully done writing to memory
--interfaceRegEnable: Enables the IO Interface register (port)
--interfaceMuxSel: IO Interface's MUX selection bit
--interfaceMuxEnable: Enables the IO Interface MUX
--CNNCounterEnable: Enables the CNN DMA counter
--CNNRegisterEnable: Enables the CNN DMA register
--imageCounterEnable: Enables the Image DMA counter
--imageRegisterEnable: Enables the Image DMA register
--globalCounterLoad: Load signal of global counter
--globalCounterEnable: Enable signal of global counter
--toCNN: Informs the CNN module to start working
--toFC: Informs the FC module to start working
ENTITY Controller IS
  GENERIC (chipInputSize: integer :=16;
           chipOutputSize: integer :=4);
  PORT(
      doneDMAFC, doneDMACNN, doneDMAImage, INTR, load, clk, processing, imageOrCNN, 
      zeroState, decompZeroState, rst, FCRamWriteOld: in std_logic;
      INTRDelayed, globalCounterLoad, imageLoad, imageRegisterEnable, imageRamEnable,
      CNNRegisterEnable, CNNRamEnable, FCRegisterEnable, FCRamEnable: inout std_logic;
      busy, doneWithPhase, interfaceRegEnable, interfaceMuxSel, interfaceMuxEnable, 
      CNNCounterEnable, FCCounterEnable, decompDecrementorEnable, imageCounterEnable,
      globalCounterEnable: out std_logic; 
	  toCNN: inout std_logic; 
	  toFC: out std_logic;
      doneDecomp: inout std_logic
  );
END ENTITY;

ARCHITECTURE ControllerArch OF Controller IS
SIGNAL doneImage, anyDone, imageLatcherD, busyFFD, busyFFQ, imageRamLatchD, CNNRamLatchD, FCRamLatchD, DMAImageNotDelayedOrINTRDelayed,
       CNNRamRst, imageRamRst, FCRamRst, CNNLoad, FCLoad, DMAImageOrINTRDelayed, DMAImageOrINTRDelayedSq, zeroStateDelayed, zeroStateDelayedSq,
       INTRDelayedSq, INTRFFD,stateCounterEnable, stateCounterLoad, CNNOrFC, busyRst, doneDMAImageDelayed, doneCNN, doneCNNLatcherD, 
	   toCNNComb, delayedToCNN, delayedToCNNSq, delayedToCNNCube: std_logic;
SIGNAL stateCounterQ, zeros: std_logic_vector(1 DOWNTO 0);
SIGNAL high: std_logic := '1';
SIGNAL notClk: std_logic;
BEGIN
  notClk <= NOT clk;
  --Temporary initialization values for state counter, might change if we wanna handle multiple images for single CNN
  zeros <= (others => '0');
  stateCounterLoad <= '0';

  --Image latch
  imageLatcherD <= (NOT imageOrCNN) OR doneImage;
  imageLatcher: ENTITY work.IODFF PORT MAP(imageLatcherD, clk, rst, high, doneImage);
  
  --Busy latch
  busyFFD <= INTR OR busyFFQ;
  busy <= busyFFQ OR INTR or FCRamEnable;
  busyRst <= anyDone OR zeroStateDelayedSq OR (FCRegisterEnable AND FCLoad AND (NOT FCRamEnable));
  busyFF: ENTITY work.IODFF PORT MAP(busyFFD, clk, busyRst, high, busyFFQ);

  --State counter
  stateCounterEnable <= imageOrCNN AND zeroState AND anyDone;
  stateCounter: ENTITY work.IOCounter2 GENERIC MAP(2) 
                       PORT MAP(stateCounterEnable, rst, notClk, stateCounterQ);
  CNNOrFC <= stateCounterQ(1);

  --zeroState latch
  zeroLatch: ENTITY work.IODFF PORT MAP(zeroState, notClk, rst, high, zeroStateDelayed);

  --zeroStateDelayed latch
  zeroDelayedLatch: ENTITY work.IODFF PORT MAP(zeroStateDelayed, notClk, rst, high, zeroStateDelayedSq);

  --INTR and INTR delayed FF
  INTRFFD <= INTR AND (NOT zeroStateDelayed);
  INTRFF1: ENTITY work.IODFF PORT MAP(INTRFFD, notClk, rst, high, INTRDelayed);
  INTRFF2: ENTITY work.IODFF PORT MAP(INTRDelayed, notClk, rst, high, INTRDelayedSq);

  --Image phase signals
  DMAImageOrINTRDelayed <= doneDMAImageDelayed OR INTRDelayed;
  DMAImageOrINTRDelayedSq <= doneDMAImageDelayed OR INTRDelayedSq;
  DMAImageNotDelayedOrINTRDelayed <= doneDMAImage OR INTRDelayed;
  imageLoad <= load AND (NOT imageOrCNN);
  imageCounterEnable <= DMAImageOrINTRDelayed AND (NOT zeroState);
  imageRegisterEnable <= imageLoad AND DMAImageOrINTRDelayedSq;
  --decompDecrementorEnable <= imageLoad AND DMAImageOrINTRDelayed;
  decompDecrementorEnable <= imageLoad AND DMAImageNotDelayedOrINTRDelayed;
  doneDecomp <= doneDMAImageDelayed AND decompZeroState;

  --No function DFF to cheat Leonardo to preserve doneDecomp
  --LeonardoPls: ENTITY work.DFF PORT MAP(doneDecomp, notClk, rst, high, doneDecompDelayed);

  --Image done latcher
  imgLatcher: ENTITY work.IODFF PORT MAP(doneDMAImage, notClk, rst, high, doneDMAImageDelayed);

  --Image Ram enable latch
  imageRamLatchD <= imageRegisterEnable OR imageRamEnable;
  --imageRamRst <= rst OR doneDMAImageDelayed;
  imageRamRst <= (rst OR doneDMAImage) OR decompZeroState;
  imageRamEn: ENTITY work.IODFF PORT MAP(imageRamLatchD, clk, imageRamRst, high, imageRamEnable);

  --IO Interface signals
  interfaceMuxEnable <= load;
  interfaceMuxSel <= imageOrCNN;
  interfaceRegEnable <= load AND INTR AND (NOT rst);
  globalCounterLoad <= INTR AND zeroState AND (NOT rst);
  globalCounterEnable <= (globalCounterLoad OR anyDone) AND (NOT rst);

  --CNN signals
  CNNLoad <= load AND imageOrCNN AND (NOT CNNOrFC);
  CNNCounterEnable <= CNNLoad AND doneDMACNN AND (NOT rst);
  CNNRegisterEnable <= CNNLoad AND INTRDelayed AND (NOT zeroState) AND (NOT rst);

  --CNN Ram enable latch
  CNNRamLatchD <= CNNRegisterEnable OR CNNRamEnable;
  CNNRamRst <= rst OR doneDMACNN;
  CNNRamEn: ENTITY work.IODFF PORT MAP(CNNRamLatchD, clk, CNNRamRst, high, CNNRamEnable);

  --FC signals
  FCLoad <= load AND imageOrCNN AND CNNOrFC;
  FCCounterEnable <= FCLoad and doneDMAFC AND (NOT rst);
  FCRegisterEnable <= FCLoad AND INTRDelayed AND (NOT zeroState) AND (NOT rst);

  --FC Ram enable latch
  FCRamLatchD <= FCRamWriteOld OR FCRamEnable;
  FCRamRst <= rst OR doneDMAFC;
  FCRamEn: ENTITY work.IODFF PORT MAP(FCRamLatchD, clk, FCRamRst, high, FCRamEnable);

  --Done output signals
  --Legacy line, keeping in case future problems encountered
  --anyDone <= (doneDMAFC OR doneDMACNN OR doneDecomp) AND zeroState;
  anyDone <= doneDMAFC OR doneDMACNN OR doneDecomp;
  doneWithPhase <= anyDone AND zeroState;

  --Communication signals with the other modules
  --doneCNN <= doneImage AND (NOT CNNOrFC) AND processing; --CNNOrFC is produced form 2 bit state counter (MSB)
  toFC <= stateCounterQ(1) AND stateCounterQ(0) AND doneImage AND processing;
  doneCNNLatcherD <= doneImage AND (NOT CNNOrFC) AND processing;
  doneCNNLatched: ENTITY work.IODFF PORT MAP(doneCNNLatcherD, notClk, rst, high, toCNNComb);
  toCNNDelayer: ENTITY work.IODFF PORT MAP(toCNNComb, notClk, rst, high, delayedToCNN);
  toCNNDelayerSqd: ENTITY work.IODFF PORT MAP(delayedToCNN, notClk, rst, high, delayedToCNNSq);
  toCNNDelayerCubed: ENTITY work.IODFF PORT MAP(delayedToCNN, notClk, rst, high, delayedToCNNCube);
  toCNN <= (toCNNComb OR delayedToCNN OR delayedToCNNSq) AND (NOT delayedToCNNCube);
  --Latching doneCNN
  --doneCNNLatcherD <= doneCNN OR toCNN;
  --doneCNNLatched: ENTITY work.IODFF PORT MAP(doneCNNLatcherD, notClk, '0', high, toCNN);
END ARCHITECTURE;
