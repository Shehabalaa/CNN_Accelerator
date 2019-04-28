LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

--
ENTITY IO IS
  GENERIC (chipInputSize: integer :=16;
           chipOutputSize: integer :=4
          );
  PORT(
      Din: in std_logic_vector(chipInputSize - 1 DOWNTO 0);
      doneDMAFC, doneDMACNN, doneDMAImage, INTR, load, clk, rst, processing, imageOrCNN, 
      decompZeroState: in std_logic;
      doneWithPhase, CNNCounterEnable, imageCounterEnable, FCCounterEnable, decompDecrementorEnable,
      busy, toCNN, toFC: out std_logic;
      INTRDelayed, imageLoad, imageRegisterEnable, CNNRegisterEnable, FCRegisterEnable,
      imageRamEnable, CNNRamEnable, FCRamEnable: inout std_logic;
      interfaceOutput: inout std_logic_vector(chipInputSize - 1 DOWNTO 0);
      FCRamWriteOld: in std_logic;
      result: out std_logic_vector(chipOutputSize - 1 DOWNTO 0);
      FCResult: in std_logic_vector(chipOutputSize - 1 DOWNTO 0);
      FCDone: in std_logic
  );
END ENTITY;


ARCHITECTURE IOArch OF IO IS
  SIGNAL interfaceRegEnable, interfaceMuxSel, interfaceMuxEnable, globalCounterEnable, 
         zeroState, globalCounterLoad: std_logic;
  BEGIN
    Interface: ENTITY work.IOInterface GENERIC MAP(chipInputSize, chipOutputSize) 
                      PORT MAP(Din, INTR, clk, rst, globalCounterEnable, 
                      globalCounterLoad, zeroState, interfaceOutput, result, FCResult, FCDone);
    Controller: ENTITY work.Controller GENERIC MAP(chipInputSize, chipOutputSize) 
                      PORT MAP(doneDMAFC, doneDMACNN, doneDMAImage, INTR, load, clk, processing, imageOrCNN, zeroState,
                      decompZeroState, rst, FCRamWriteOld, INTRDelayed, globalCounterLoad, imageLoad, imageRegisterEnable, 
                      imageRamEnable, CNNRegisterEnable, CNNRamEnable, FCRegisterEnable, FCRamEnable, busy, 
                      doneWithPhase, interfaceRegEnable, interfaceMuxSel, interfaceMuxEnable, CNNCounterEnable, 
                      FCCounterEnable, decompDecrementorEnable, imageCounterEnable, globalCounterEnable, toCNN, toFC);
END ARCHITECTURE;
