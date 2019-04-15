--
-- This file is for fetching from mem
-- Address register: address to read from 
-- counter register:this register 
-- readStep register:this register will contain the value that will be added to the address register 
-- init signal:sets the address register and counter register 
-- load signal :start reading from ram using the current registers
-- on receiving MFC pass it to the IOLogic
-- when the counter equals zero send finished signal to IOLogic

library ieee ;
	use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;
	use work.constants.all;

ENTITY DMA IS
GENERIC (
    addressSize: INTEGER:=16;
    wordSize : INTEGER := 16;
    readStepSize:INTEGER :=16;
    internalBusSize: INTEGER:=16
  );
  port (
    initialCount: IN std_logic_vector(2 downto 0); -- three bit to include max count size which is 5
    readBaseAddress: IN std_logic_vector(addressSize-1 downto 0) ; -- the start address of the fetching (fetch -> inc with offsetAddress -> fetch again tell the counter ends)
    readStep: IN std_logic_vector(addressSize-1 downto 0); -- three bit to include max count size which is 5
    initAddress: in std_logic;
    initCounter:in std_logic;
    load: in std_logic;
    internalBus: out STD_LOGIC_VECTOR(internalBusSize-1 DOWNTO 0);
    finishedOneRead:out std_logic ;
    finishedReading:out std_logic;
    clk:in std_logic;
    -- RAM
    ramDataInBus: IN STD_LOGIC_VECTOR(weightsBusSize-1 DOWNTO 0);
    ramRead: OUT STD_LOGIC; 
    ramReadAddress:OUT std_logic_vector(addressSize-1 downto 0) ;
    MFC: IN STD_LOGIC
  );
END DMA ; 

ARCHITECTURE DMAArch OF DMA IS
Signal currentCount:std_logic_vector(2 downto 0) ;
Signal tobeAdded:std_logic_vector(addressSize-1 downto 0) ;
signal enableCount:std_logic;
signal enableTristate:std_logic;

signal internalFinishedReading: std_logic;

BEGIN
  addressRegister:Entity work.MultiStepCounter Generic Map(addressSize) PORT MAP(readBaseAddress,tobeAdded,'0',clk,initAddress,MFC,ramReadAddress);
  counter:Entity work.DownCounter Generic Map(3) PORT MAP(initialCount,enableCount ,clk,initCounter,currentCount);
  readStepRegister:Entity work.Reg Generic Map(addressSize) PORT MAP(readStep,'1',initCounter,'0',tobeAdded);
  tristateLabel:Entity work.Tristate Generic Map(internalBusSize) PORT MAP(ramDataInBus,enableTristate,internalBus);
  finishedReading <= internalFinishedReading;
  ramRead <= load;
  process(MFC, load, ramDataInBus, currentCount, initCounter, clk)
    begin
      -- reset all
      finishedOneRead <= '0';
      enableTristate<='0';

      -- finishedReading <= MFC AND ( (clk AND currentCount = "000") OR ((NOT clk) AND currentCount="001") );
      IF MFC = '1' AND load = '1' AND ( clk = '0' AND currentCount = "001") THEN
        internalFinishedReading <= '1';
      ELSIF MFC = '0' THEN
        internalFinishedReading <= '0';
      ELSE
        internalFinishedReading <= internalFinishedReading;
      END IF;

      if MFC='1' AND load = '1' THEN
        finishedOneRead<='1';
        enableTristate<='1';
        --internalBus<=ramDataInBus;
      end if;
      enableCount<= MFC or initCounter;
      end process;
END ARCHITECTURE;