--
-- This file is for fetching from mem
-- 
-- 
-- 

library ieee ;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

ENTITY DMA IS
GENERIC (
    addressSize: INTEGER;
    internalBusSize: INTEGER
  );
  port (
    count: std_logic_vector(2 downto 0); -- three bit to include max count size which is 5
    startAddress: std_logic_vector(addressSize-1 downto 0) ; -- the start address of the fetching (fetch -> inc with offsetAddress -> fetch again tell the counter ends)
    readStep: std_logic_vector(maxImageSize-1 downto 0); -- three bit to include max count size which is 5

    internalBus: INOUT STD_LOGIC_VECTOR(internalBusSize-1 DOWNTO 0);

    -- RAM
    ramDataInBus: IN STD_LOGIC_VECTOR(weightsBusSize-1 DOWNTO 0);
    ramRead: OUT STD_LOGIC, --
    ramWrite: OUT STD_LOGIC, --
    ramDataOutBus: OUT STD_LOGIC_VECTOR(weightsBusSize-1 DOWNTO 0);
    MFC: IN STD_LOGIC

    
  );
END DMA ; 

ARCHITECTURE DMAArch OF DMA IS

BEGIN

END ARCHITECTURE;