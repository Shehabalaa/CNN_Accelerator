LIBRARY IEEE;
LIBRARY work;
USE IEEE.std_logic_1164.all;
use work.Utiles.ALL;



ENTITY FcTest2 IS
    PORT(
            cnnDone,ioDone,clk,reset : IN STD_LOGIC;
            fcDone: Out STD_LOGIC;
	        MAXPrediction: Out STD_LOGIC_VECTOR(3 downto 0)
        );
END FcTest2;

ARCHITECTURE FcTest2Arch OF FcTest2 IS
    ----------------------------------------
    --CONSTANTS
    CONSTANT RamNeoronsWIDTH : INTEGER := 16*5; 
    CONSTANT RamWeigthsWIDTH : INTEGER := 8*10;
    CONSTANT RAMDELAY : INTEGER := 1;
    CONSTANT RAMADDRESS : INTEGER := 16;
    CONSTANT RamNeoronAddressSize :INTEGER :=16;
    CONSTANT RamWeightAddressSize :integer := 16;


    signal dmaAddRamNeorons :  STD_LOGIC_VECTOR(RamNeoronAddressSize-1 downto 0);   -- ram address bits
    signal readRamNeorons : STD_LOGIC;
    signal finishRamNeorons: std_logic;
    signal dataOutRamNeorons: STD_LOGIC_VECTOR(79 downto 0);
    
    signal dmaAddRamWeights :  STD_LOGIC_VECTOR(RamWeightAddressSize-1 downto 0);   -- ram address bits
    signal readRamWeights : STD_LOGIC;
    signal finishRamWeights: std_logic;
    signal dataOutRamWeights: STD_LOGIC_VECTOR(399 downto 0);   

    signal test :STD_LOGIC_VECTOR(3 downto 0);

    signal nclk:std_LOGIC;
      -- signal declaration
    SIGNAL delayOutputNeorons,delayOutputWeights : STD_LOGIC_VECTOR (RAMDELAY+1 DOWNTO 0);
    signal resetDelayCounterNeorons,resetDelayCounterWeights: std_logic;

begin
    FCENT: entity work.FcMain port map(cnnDone,ioDone,clk,reset,
    dmaAddRamNeorons,readRamNeorons,finishRamNeorons,dataOutRamNeorons,
    dmaAddRamWeights,readRamWeights,finishRamWeights,dataOutRamWeights(79 downto 0),
    fcDone,MAXPrediction);

    test <= "00"&"11";
    nclk <= not clk;
    ------------------------------
    RAMWEIGHTS: ENTITY work.RAM2 GENERIC MAP(RAMADDRESS,80,400) PORT MAP(nclk,readRamWeights,'0',reset,dmaAddRamWeights,(15 downto 0 =>'0'),(79 downto 0 =>'0'),dataOutRamWeights,finishRamWeights);

    RAMNEORONS: ENTITY work.RAM2 GENERIC MAP(RAMADDRESS,16) PORT MAP(nclk,readRamNeorons,'0',reset,dmaAddRamNeorons,(15 downto 0 =>'0'),(15 downto 0 =>'0'),dataOutRamNeorons,finishRamNeorons);
    ------------------------------------

    --finishRamNeorons <= delayOutputNeorons(RAMDELAY);
    --resetDelayCounterNeorons <= delayOutputNeorons(RAMDELAY) or  reset;
    --DELAYNEORONS: ENTITY work.ShiftRegSynRst GENERIC MAP(RAMDELAY+1) PORT MAP(delayOutputNeorons,clk,readRamNeorons,resetDelayCounterNeorons);
	------------------------------

    --finishRamWeights <= delayOutputWeights(RAMDELAY);
    --resetDelayCounterWeights <= delayOutputWeights(RAMDELAY) or  reset;
    --DELAYWeights: ENTITY work.ShiftRegSynRst GENERIC MAP(RAMDELAY+1) PORT MAP(delayOutputWeights,clk,readRamWeights,resetDelayCounterWeights);
	------------------------------

END FcTest2Arch;
