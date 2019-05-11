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

    signal dmaAddRamNeorons,default :  STD_LOGIC_VECTOR(16-1 downto 0);   -- ram address bits
    signal readRamNeorons : STD_LOGIC;
    signal finishRamNeorons: std_logic;
    signal dataOutRamNeorons: STD_LOGIC_VECTOR(79 downto 0);
    
    signal dmaAddRamWeights :  STD_LOGIC_VECTOR(16-1 downto 0);   -- ram address bits
    signal readRamWeights : STD_LOGIC;
    signal finishRamWeights: std_logic;
    signal dataOutRamWeights: STD_LOGIC_VECTOR(79 downto 0);   

      -- signal declaration
    SIGNAL delayOutputNeorons,delayOutputWeights : STD_LOGIC_VECTOR (RAMDELAY+1 DOWNTO 0);
    signal resetDelayCounterNeorons,resetDelayCounterWeights: std_logic;

    signal nclk:std_LOGIC;


begin

    default <= (others => '0');
    nclk <= not clk;
    FCENT: entity work.FcMain GENERIC MAP(16,16) port map(cnnDone,ioDone,clk,reset,
    default,dmaAddRamNeorons,readRamNeorons,finishRamNeorons,dataOutRamNeorons,
    dmaAddRamWeights,readRamWeights,finishRamWeights,dataOutRamWeights,
    fcDone,MAXPrediction);

    ------------------------------
    RAMWEIGHTS: ENTITY work.RAM GENERIC MAP(16,80) PORT MAP(clk,'0',dmaAddRamWeights,(79 downto 0 =>'0'),dataOutRamWeights);

    RAMNEORONS: ENTITY work.RAM GENERIC MAP(16,80) PORT MAP(clk,'0' ,dmaAddRamNeorons,(79 downto 0 =>'0'),dataOutRamNeorons);
    ------------------------------------

    finishRamNeorons <= delayOutputNeorons(RAMDELAY);
    resetDelayCounterNeorons <= delayOutputNeorons(RAMDELAY) or  reset;
    DELAYNEORONS: ENTITY work.ShiftRegSynRst GENERIC MAP(RAMDELAY+1) PORT MAP(delayOutputNeorons,clk,readRamNeorons,resetDelayCounterNeorons);
	------------------------------

    finishRamWeights <= delayOutputWeights(RAMDELAY);
    resetDelayCounterWeights <= delayOutputWeights(RAMDELAY) or  reset;
    DELAYWeights: ENTITY work.ShiftRegSynRst GENERIC MAP(RAMDELAY+1) PORT MAP(delayOutputWeights,clk,readRamWeights,resetDelayCounterWeights);
	------------------------------


            
    
END FcTestArch;
