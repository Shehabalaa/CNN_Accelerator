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
    internalBusSize: INTEGER:=16
  );
  port (
    count: IN std_logic_vector(2 downto 0); -- three bit to include max count size which is 5
    startAddress: IN std_logic_vector(addressSize-1 downto 0) ; -- the start address of the fetching (fetch -> inc with offsetAddress -> fetch again tell the counter ends)
    readStep: IN std_logic_vector(maxImageSize-1 downto 0); -- three bit to include max count size which is 5
    initAddress: in std_logic;
    initCounter:in std_logic;
    load: in std_logic;
    internalBus: INOUT STD_LOGIC_VECTOR(internalBusSize-1 DOWNTO 0);
    finishedOneRead:out std_logic ;
    finishedReading:out std_logic;
    clk:in std_logic;
    -- RAM
    ramDataInBus: IN STD_LOGIC_VECTOR(weightsBusSize-1 DOWNTO 0);
    ramRead: OUT STD_LOGIC; 
    ramReadAddress:OUT std_logic_vector(addressSize-1 downto 0) ;
    ramWrite: OUT STD_LOGIC; --
    ramDataOutBus: OUT STD_LOGIC_VECTOR(weightsBusSize-1 DOWNTO 0);
    MFC: IN STD_LOGIC
  );
END DMA ; 

ARCHITECTURE DMAArch OF DMA IS
Signal currentCount:std_logic_vector(2 downto 0) ;
Signal tobeAdded:std_logic_vector(15 downto 0) ;
BEGIN
  addressRegister:Entity work.MultiStepCounter Generic Map(addressSize) PORT MAP(startAddress,tobeAdded,'0',clk,initAddress,MFC,ramReadAddress);
  counter:Entity work.DownCounter Generic Map(3) PORT MAP(count,MFC,initCounter,currentCount);
  readStepRegister:Entity work.Reg Generic Map(16) PORT MAP(readStep,'1',init,'0',tobeAdded);
  process(MFC,load)
    begin
      if currentCount(2)='0' AND MFC='1' then--finished counting and data is ready
        finishedReading<='1';
      elsif MFC='1' THEN
        finishedOneRead<='1';
      elsif load='1' AND not currentCount(2)='0' then
        ramRead<='1';
      end if;
      end process;
END ARCHITECTURE;