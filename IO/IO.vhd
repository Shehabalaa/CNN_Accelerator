LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

--
ENTITY IO IS
  GENERIC (chipInputSize: integer :=16;
           chipOutputSize: integer :=4
          );
  PORT(
      Din: in std_logic_vector(chipInputSize - 1 DOWNTO 0);
      doneDMAFC, doneDMACNN, doneDMAImage, doneDecomp, INTR, clk, rst, processing, imageOrCNN, 
      decompZeroState: in std_logic;
      doneWithPhase, CNNCounterEnable, CNNRegisterEnable, imageCounterEnable,
      imageRegisterEnable, busy, toCNN, toFC: out std_logic;
      INTRDelayed: inout std_logic;
      interfaceOutput: inout std_logic_vector(chipInputSize - 1 DOWNTO 0);
      result: out std_logic_vector(chipOutputSize - 1 DOWNTO 0)
  );
END ENTITY;


ARCHITECTURE IOArch OF IO IS
  SIGNAL load, interfaceRegEnable, interfaceMuxSel, interfaceMuxEnable, globalCounterEnable, 
         zeroState, globalCounterLoad: std_logic;
  BEGIN
    Interface: ENTITY work.IOInterface GENERIC MAP(chipInputSize, chipOutputSize) 
                      PORT MAP(Din, INTR, clk, rst, globalCounterEnable, 
                      globalCounterLoad, zeroState, interfaceOutput, result);
    Controller: ENTITY work.Controller GENERIC MAP(chipInputSize, chipOutputSize) 
                      PORT MAP(doneDMAFC, doneDMACNN, doneDMAImage, INTR, clk, processing, imageOrCNN, zeroState,
                      decompZeroState, rst, INTRDelayed, load, globalCounterLoad,
                      busy, doneWithPhase, interfaceRegEnable, interfaceMuxSel, interfaceMuxEnable, 
                      CNNCounterEnable, CNNRegisterEnable, imageCounterEnable, imageRegisterEnable,
                      globalCounterEnable, toCNN, toFC);
END ARCHITECTURE;
