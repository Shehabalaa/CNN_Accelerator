LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

--Controller entity is responsible for controlling and enabling all modules
--Is also responsible for identifying state and sending synchronization signals to CPU
ENTITY Controller IS
  GENERIC (chipInputSize: integer :=16;
           chipOutputSize: integer :=4);
  PORT(
      doneDMAFC, doneDMACNN, doneDMAImage, INTR, clk, loadOrProcess, imageOrCNN, zeroState: in std_logic;
      rst, INTRDelayed, load: inout std_logic;
      busy, donePhase, interfaceRegEnable, interfaceMuxSel, interfaceMuxEnable, CNNCounterEnable, 
      CNNRegisterEnable, imageCounterEnable, imageRegisterEnable, toCNN, toFC: out std_logic
  );
END ENTITY;

ARCHITECTURE ControllerArch OF Controller IS
SIGNAL doneImage, anyDone, doneWithPhase, imageLatcherD, busyFFD, busyFFQ, doneDecomp, decompZeroState,
       imageLoad, DMAImageOrINTRDelayed, DMAImageOrINTRDelayedSq, INTRDelayedSq, decompDecrementorEnable: std_logic;
SIGNAL high: std_logic := '1';
BEGIN
  imageLatcherD <= imageOrCNN OR doneImage;
  doneDecomp <= doneDMAImage AND decompZeroState;
  busyFFD <= INTR OR busyFFQ;
  busy <= busyFFQ OR INTR;
  imageLatcher: ENTITY work.DFF PORT MAP(imageLatcherD, clk, rst, high, doneImage);
  anyDone <= (doneDMAFC OR doneDMACNN OR doneDecomp) AND zeroState;
  doneWithPhase <= anyDone AND zeroState;
  busyFF: ENTITY work.DFF PORT MAP(busyFFD, clk, anyDone, high, busyFFQ);

  DMAImageOrINTRDelayed <= doneDMAImage OR INTRDelayed;
  imageCounterEnable <= DMAImageOrINTRDelayed AND (NOT zeroState);
  DMAImageOrINTRDelayedSq <= doneDMAImage OR INTRDelayedSq;
  imageLoad <= load AND (NOT imageOrCNN);
  decompDecrementorEnable <= imageLoad AND DMAImageOrINTRDelayed;
  imageRegisterEnable <= imageLoad AND DMAImageOrINTRDelayedSq;
  interfaceMuxEnable <= load;
  interfaceMuxSel <= imageOrCNN;
  --toCNN <= doneDMAImage AND (NOT CNNOrFC); --CNNOrFC is produced form 2 bit counter
  --toFC <=  --Implement counter first
END ARCHITECTURE;