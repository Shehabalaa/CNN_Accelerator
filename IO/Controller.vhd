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
--donePhase: Informs CPU that the current phase's data is successfully done writing to memory
--interfaceRegEnable: Enables the IO Interface register (port)
--interfaceMuxSel: IO Interface's MUX selection bit
--interfaceMuxEnable: Enables the IO Interface MUX
--CNNCounterEnable: Enables the CNN DMA counter
--CNNRegisterEnable: Enables the CNN DMA register
--imageCounterEnable: Enables the Image DMA counter
--imageRegisterEnable: Enables the Image DMA register
--toCNN: Informs the CNN module to start working
--toFC: Informs the FC module to start working
ENTITY Controller IS
  GENERIC (chipInputSize: integer :=16;
           chipOutputSize: integer :=4);
  PORT(
      doneDMAFC, doneDMACNN, doneDMAImage, INTR, clk, processing, imageOrCNN, zeroState, decompZeroState: in std_logic;
      rst, INTRDelayed, load: inout std_logic;
      busy, donePhase, interfaceRegEnable, interfaceMuxSel, interfaceMuxEnable, CNNCounterEnable, 
      CNNRegisterEnable, imageCounterEnable, imageRegisterEnable, toCNN, toFC: out std_logic
  );
END ENTITY;

ARCHITECTURE ControllerArch OF Controller IS
SIGNAL doneImage, anyDone, doneWithPhase, imageLatcherD, busyFFD, busyFFQ, doneDecomp,
       imageLoad, CNNLoad, DMAImageOrINTRDelayed, DMAImageOrINTRDelayedSq, INTRDelayedSq, decompDecrementorEnable: std_logic;
SIGNAL stateCounterQ, stateCounterD: std_logic_vector(1 DOWNTO 0);
SIGNAL high: std_logic := '1';
BEGIN
  imageLatcherD <= (NOT imageOrCNN) OR doneImage;
  imageLatcher: ENTITY work.DFF PORT MAP(imageLatcherD, clk, rst, high, doneImage);
  
  busyFFD <= INTR OR busyFFQ;
  busy <= busyFFQ OR INTR;
  busyFF: ENTITY work.DFF PORT MAP(busyFFD, clk, anyDone, high, busyFFQ);

  --stateCounterEnable <= imageOrCNN AND zeroState AND anyDone;
  --stateCounter: ENTITY work.UpCounter GENERIC MAP(chipInputSize) 
                      -- PORT MAP(stateCounterD, stateCounterEnable, rst, clk, stateCounterQ);

  --stateCounterD <= stateCounterQ;
  --CNNOrFC <= stateCounterQ(1);

  DMAImageOrINTRDelayed <= doneDMAImage OR INTRDelayed;
  DMAImageOrINTRDelayedSq <= doneDMAImage OR INTRDelayedSq;
  imageLoad <= load AND (NOT imageOrCNN);
  imageCounterEnable <= DMAImageOrINTRDelayed AND (NOT zeroState);
  imageRegisterEnable <= imageLoad AND DMAImageOrINTRDelayedSq;
  decompDecrementorEnable <= imageLoad AND DMAImageOrINTRDelayed;
  doneDecomp <= doneDMAImage AND decompZeroState;

  interfaceMuxEnable <= load;
  interfaceMuxSel <= imageOrCNN;
  interfaceRegEnable <= load AND INTR;

  --CNNLoad <= load AND imageOrCNN AND CNNOrFC;
  --CNNCounterEnable <= CNNLoad AND doneDMACNN;
  --CNNRegisterEnable <= CNNLoad AND INTRDelayed AND (NOT zeroState);
  
  anyDone <= (doneDMAFC OR doneDMACNN OR doneDecomp) AND zeroState;
  doneWithPhase <= anyDone AND zeroState;

  --toCNN <= doneDMAImage AND (NOT CNNOrFC); --CNNOrFC is produced form 2 bit state counter (MSB)
  --toFC <= stateCounterQ(1) AND stateCounterQ(0) AND doneImage;
END ARCHITECTURE;