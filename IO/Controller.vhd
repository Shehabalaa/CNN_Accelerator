LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

--Controller entity is responsible for controlling and enabling all modules
--Is also responsible for identifying state and sending synchronization signals to CPU
ENTITY Controller IS
  GENERIC (chipInputSize: integer :=16;
           chipOutputSize: integer :=4);
  PORT(
      doneDecomp, doneDMAFC, doneDMACNN, INTR, clk, loadOrProcess, rst, imageOrCNN: in std_logic;
      busy, donePhase, interfaceEnable: out std_logic
  );
END ENTITY;

ARCHITECTURE ControllerArch OF Controller IS
BEGIN

END ARCHITECTURE;