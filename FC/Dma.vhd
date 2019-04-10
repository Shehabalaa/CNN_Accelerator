LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
use IEEE.math_real.all;


ENTITY Dma IS
        Generic(delayCounter: integer := 5;addressBits : integer :=5);
    PORT(
            clk,reset,inc,load : IN STD_LOGIC;
            defaultAddress : IN STD_LOGIC_VECTOR(addressBits-1  DOWNTO 0);
            readSignal:IN STD_LOGIC;
            finishSignal : OUT STD_LOGIC;
            addressOut :OUT STD_LOGIC_VECTOR(addressBits-1  DOWNTO 0)
        );

END Dma;

--_____________________________________________________

----------------------------------------------------------------------

ARCHITECTURE DmaArch OF Dma IS

  -- signal declaration
  SIGNAL delayOutput : STD_LOGIC_VECTOR (delayCounter+1 DOWNTO 0);
  SIGNAL enableDelayCounter,resetDelayCounter : STD_LOGIC ;
  SIGNAL addReg : STD_LOGIC_VECTOR(addressBits-1 DOWNTO 0);
  
BEGIN

    -- signal initialization
    finishSignal <= delayOutput(delayCounter);
    resetDelayCounter <= delayOutput(delayCounter) or  reset;
    REGADDRESS: ENTITY work.CounterUpDown GENERIC MAP(addressBits) PORT MAP(defaultAddress,defaultAddress,clk,inc ,reset,load,'0',addressOut);

    DELAYCOUNTERMAP: ENTITY work.ShiftRegSynRst GENERIC MAP(delayCounter+1) PORT MAP(delayOutput,clk,readSignal,resetDelayCounter);

END DmaArch;