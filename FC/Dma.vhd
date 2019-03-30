LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
use IEEE.math_real.all;


ENTITY Dma IS
        Generic(delayCounter: integer := 5; wordSize: integer :=32;addressBits : integer :=5);
    PORT(
            clk,reset : IN STD_LOGIC;
            addressIn : IN STD_LOGIC_VECTOR(addressBits-1  DOWNTO 0);
            readSignal:IN STD_LOGIC;
            finishSignal : OUT STD_LOGIC;
            addressOut :OUT STD_LOGIC_VECTOR(addressBits-1  DOWNTO 0)
        );

END Dma;

--_____________________________________________________

----------------------------------------------------------------------

ARCHITECTURE DmaArch OF Dma IS

  -- signal declaration
  SIGNAL delayOutput : STD_LOGIC_VECTOR (delayCounter DOWNTO 0);
  SIGNAL enableDelayCounter,resetDelayCounter : STD_LOGIC ;
  SIGNAL addReg : STD_LOGIC_VECTOR(addressBits-1 DOWNTO 0);
BEGIN

    -- signal initialization
    finishSignal <= delayOutput(delayCounter-1);

    DELAYCOUNTERMAP: ENTITY work.ShiftReg GENERIC MAP(delayCounter) PORT MAP(delayOutput,clk,'1',readSignal);
    ADDREGMAP: ENTITY work.Reg GENERIC MAP(addressBits) PORT MAP(addressIn,readSignal,clk,reset,addressOut);

END DmaArch;
