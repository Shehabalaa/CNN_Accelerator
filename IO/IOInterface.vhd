LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

--IO Interface entity is responsible for reading data from CPU and writing the final result
--Din: Data placed by CPU on the bus
--INTR: Signal set by CPU when placing data on bus, to alert the chip, forwarded from the controller to the interface
--clk: The chip's clock, forwarded from the controller
--rst: Signal for resetting the registers, used as initialization for the chip
--zeroState: Signal informs the controller if the global counter has reached its zero state
--Q: Data outputted by the IO Interface register
--result: 4 bits containing the class of the input image (0->9)
ENTITY IOInterface IS
  GENERIC (chipInputSize: integer :=16;
           chipOutputSize: integer :=4);
  PORT(
      Din: in std_logic_vector(chipInputSize - 1 DOWNTO 0);
      INTR, clk, rst, globalCounterEnable, globalCounterLoad: in std_logic;
      zeroState: out std_logic;
      Q: inout std_logic_vector(chipInputSize - 1 DOWNTO 0);
      result: out std_logic_vector(chipOutputSize - 1 DOWNTO 0);
      FCResult: in std_logic_vector(chipOutputSize - 1 DOWNTO 0);
      FCDone: in std_logic
  );
END ENTITY;

ARCHITECTURE IOInterfaceArch OF IOInterface IS
SIGNAL myZeroState, myGlobalCounterEnable: std_logic;
SIGNAL globalCounterOutput, zeros: std_logic_vector(chipInputSize - 1 DOWNTO 0);
BEGIN
  zeros <= (OTHERS => '0');
  
  myZeroState <= '1' WHEN globalCounterOutput = zeros
                   ELSE '0';

  zeroState <= myZeroState;
  myGlobalCounterEnable <= globalCounterEnable OR globalCounterLoad;
  GlobalCounter: ENTITY work.DownCounterSyncLoad GENERIC MAP(chipInputSize) 
                        PORT MAP(Din, myGlobalCounterEnable, globalCounterLoad, rst, clk, globalCounterOutput);

  DataReg: ENTITY work.Reg GENERIC MAP(chipInputSize) PORT MAP(Din, INTR, clk, rst, Q);
  result <= FCResult WHEN FCDone = '1'
            ELSE "0000";
END ARCHITECTURE;