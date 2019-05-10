LIBRARY IEEE;
LIBRARY work;
USE IEEE.std_logic_1164.all;
use work.Utiles.ALL;



ENTITY FcTest IS
    PORT(
            cnnDone,ioDone,clk,reset : IN STD_LOGIC;
            fcDone: Out STD_LOGIC;
	        MAXPrediction: Out STD_LOGIC_VECTOR(3 downto 0)
        );
END FcTest;

ARCHITECTURE FcTestArch OF FcTest IS
    ----------------------------------------
    --CONSTANTS
    CONSTANT RamNeoronsWIDTH : INTEGER := 16*5; 
    CONSTANT RamWeigthsWIDTH : INTEGER := 8*10;
    CONSTANT MaxNeornsNumBitSIZE : INTEGER := 16;
    CONSTANT RAMDELAY : INTEGER := 1;
    CONSTANT RAMADDRESS : INTEGER := 16;

    signal dmaAddRamNeorons :  STD_LOGIC_VECTOR(16-1 downto 0);   -- ram address bits
    signal readRamNeorons : STD_LOGIC;
    signal finishRamNeorons: std_logic;
    signal dataOutRamNeorons: STD_LOGIC_VECTOR(79 downto 0);
    
    signal dmaAddRamWeights :  STD_LOGIC_VECTOR(16-1 downto 0);   -- ram address bits
    signal readRamWeights : STD_LOGIC;
    signal finishRamWeights: std_logic;
    signal dataOutRamWeights: STD_LOGIC_VECTOR(79 downto 0);   

      -- signal declaration
    SIGNAL delayOutput : STD_LOGIC_VECTOR (delayCounter+1 DOWNTO 0);
    SIGNAL enableDelayCounter,resetDelayCounter : STD_LOGIC ;
    SIGNAL addReg : STD_LOGIC_VECTOR(addressBits-1 DOWNTO 0);

begin
    FCENT: entity work.FcMain port map(cnnDone,ioDone,clk,reset,
    dmaAddRamNeorons,readRamNeorons,finishRamNeorons,finishRamNeorons,
    dmaAddRamWeights,readRamWeights,finishRamWeights,dataOutRamWeights
    fcDone,MAXPrediction
    );

    ------------------------------
    RAMWEIGHTS: ENTITY work.RAM GENERIC MAP(RAMADDRESS,RamWeigthsWIDTH) PORT MAP(clk,'0',dmaAddRamWeights,(79 downto 0 =>'0'),dataOutRamWeights);

    RAMNEORONS: ENTITY work.RAM GENERIC MAP(RAMADDRESS,RamNeoronsWIDTH) PORT MAP(clk,'0' ,dmaAddRamNeorons,(79 downto 0 =>'0'),dataOutRamNeorons);
    ------------------------------------

    readRamNeorons <= readSignal;
    readRamWeights <= readSignal;
    finishRamNeorons <= finishSignal;
    finishRamWeights <= finishSignal;

    -- signal initialization
    finishSignal <= delayOutput(delayCounter);
    resetDelayCounter <= delayOutput(delayCounter) or  reset;
    DELAYCOUNTERMAP: ENTITY work.ShiftRegSynRst GENERIC MAP(delayCounter+1) PORT MAP(delayOutput,clk,readSignal,resetDelayCounter);


            
    
END FcTestArch;
