LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

--
ENTITY IO IS
  GENERIC (chipInputSize: integer :=16;
           chipOutputSize: integer :=4
          );
END ENTITY;


ARCHITECTURE IOArch OF IO IS
  SIGNAL Din, interfaceOutput: std_logic_vector(chipInputSize - 1 DOWNTO 0);
  SIGNAL result: std_logic_vector(chipOutputSize - 1 DOWNTO 0);
  SIGNAL INTR, clk, loadOrProcess, rst, imageOrCNN, busy, donePhase, doneDMAFC, doneDecomp, doneDMACNN, 
         interfaceEnable, globalCounterEnable, zeroState: std_logic;
  BEGIN
    Interface: ENTITY work.IOInterface GENERIC MAP(chipInputSize, chipOutputSize) 
                      PORT MAP(Din, INTR, clk, rst, globalCounterEnable, zeroState, interfaceOutput, result);
    Controller: ENTITY work.Controller GENERIC MAP(chipInputSize, chipOutputSize) 
                      PORT MAP(doneDecomp, doneDMAFC, doneDMACNN, INTR, clk, loadOrProcess, rst, imageOrCNN, 
                               busy, donePhase, interfaceEnable);
END ARCHITECTURE;