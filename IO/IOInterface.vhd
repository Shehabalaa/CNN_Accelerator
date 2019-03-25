LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

--IO Interface entity is responsible for reading data from CPU and writing the final result
ENTITY IOInterface IS
  GENERIC (chipInputSize: integer :=16;
           chipOutputSize: integer :=4);
  PORT(
      Din: in std_logic_vector(chipInputSize - 1 DOWNTO 0);
      INTR, clk, rst, globalCounterEnable: in std_logic;
      zeroState: out std_logic;
      Q: inout std_logic_vector(chipInputSize - 1 DOWNTO 0);
      result: out std_logic_vector(chipOutputSize - 1 DOWNTO 0)
  );
END ENTITY;

ARCHITECTURE IOInterfaceArch OF IOInterface IS
SIGNAL globalCounterLoad, myZeroState, myGlobalCounterEnable: std_logic;
SIGNAL globalCounterOutputBar, globalCounterOutput, temp: std_logic_vector(chipInputSize - 1 DOWNTO 0);
BEGIN
  --globalCounterOutputBar(chipInputSize - 1 DOWNTO 0) <= NOT globalCounterOutput(chipInputSize - 1 DOWNTO 0);
  globalCounterOutputBar <= NOT globalCounterOutput;
  temp(0) <= globalCounterOutputBar(0);
  gen: FOR i IN 1 TO chipInputSize - 1 GENERATE
        temp(i) <= temp(i-1) AND globalCounterOutputBar(i);
    END GENERATE; 
  myZeroState <= temp(chipInputSize-1);
  zeroState <= myZeroState;
  --zeroState2 <= '1' WHEN Q(chipInputSize - 1 DOWNTO 0) = (others => '0')
  --               ELSE <= '0'; 
  globalCounterLoad <= INTR AND myZeroState;
  myGlobalCounterEnable <= globalCounterEnable OR globalCounterLoad;
  GlobalCounter: ENTITY work.DownCounterAsyncLoad GENERIC MAP(chipInputSize) 
                        PORT MAP(Q, myGlobalCounterEnable, globalCounterLoad, rst, clk, globalCounterOutput);

  DataReg: ENTITY work.Reg GENERIC MAP(chipInputSize) PORT MAP(Din, INTR, clk, rst, Q);
END ARCHITECTURE;