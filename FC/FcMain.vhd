LIBRARY IEEE;
LIBRARY work;
USE IEEE.std_logic_1164.all;
use IEEE.math_real.all;
use work.Utiles.ALL;



ENTITY FcMain IS
    PORT(
            cnnDone,clk,reset : IN STD_LOGIC;
            fcDone: Out STD_LOGIC 
        );
END FcMain;

--_____________________________________________________

----------------------------------------------------------------------

ARCHITECTURE FcMainArch OF FcMain IS
    ----------------------------------------
    --CONSTANTS
    CONSTANT RamNeoronsWIDTH : INTEGER := 16*5; 
    CONSTANT RamWeigthsWIDTH : INTEGER := 8*10;
    CONSTANT MaxNeornsNumBitSIZE : INTEGER := 16;
    --

    TYPE State_type IS (initial,setCounter,delay,loadBias,compareCounter ,loadNeoronAndWeights,Maxmimize,PrintOutput,startMul); -- the 4 different states
	SIGNAL state : State_Type;   
    ---- Signal Declaration 
    SIGNAL readRamWeights,readRamNeorons,finishRamWeights,finishRamNeorons: STD_LOGIC;

    SIGNAL dmaAddRamNeorons,dmaAddRamWeights,RamInAddNeorons,RamInAddWeights :STD_LOGIC_VECTOR(4 DOWNTO 0);

    SIGNAL dataOutRamNeorons: STD_LOGIC_VECTOR(RamNeoronsWIDTH-1 DOWNTO 0);
    SIGNAL dataOutRamWeights: STD_LOGIC_VECTOR(RamWeigthsWIDTH-1  DOWNTO 0);

    SIGNAL neoronMuxOutput,neoronRegOutput: STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL loadNumberOFNeorons : STD_LOGIC ;   ---            need to be implemented 
    SIGNAL numberOFNeorons : STD_LOGIC_VECTOR(MaxNeornsNumBitSIZE-1 DOWNTO 0);
    
    SIGNAL decrement : STD_LOGIC;

    SIGNAL oneNeoron : STD_LOGIC_VECTOR(15 downto 0);
    SIGNAL defaultAddressWeights,defaultAddressNeorons: STD_LOGIC_VECTor(4 downto 0);
    SIGNAL neoronValueSelection : STD_LOGIC;

    SIGNAL incrementWeightAdd,incrementNeoronsAdd: STD_LOGIC;

    ----------------------------------
    SIGNAL startMax,doneMax:STD_LOGIC; 
    SIGNAL labelReg,cTemp : genericArrayofVector16bit (9 downto 0);

    SIGNAL maxNumber: STD_LOGIC_VECTOR( 4 downto 0);
    ---------------------------------------
    SIGNAL mulInputWeight : genericArrayofVector8bit (9 downto 0);
    SIGNAL mulInputNeoron : genericArrayofVector16bit (9 downto 0);
    SIGNAL multiplyWork,multiplyWorkDelayed,multiplyWorkIn,startMultiply:STD_LOGIC;
    SIGNAL dumpDone: STD_LOGIC;
    ---------------------------------------
    SIGNAL clkInverted,bufferTwoInput : STD_LOGIC;

    ---------------------------------------

    SIGNAL mulDoneDetection : STD_LOGIC;
    ---------------------------------------

BEGIN
    ---------- initializition
    oneNeoron(15 downto 1 ) <= (others => '0');
    oneNeoron (0)<='1';
    defaultAddressWeights <= (others => '0');
    defaultAddressNeorons <= (others => '0');
    clkInverted <= NOT clk ;

    ----------------------------------------

    
    NEORONSLASTSTAGES: ENTITY work.CounterUpDown GENERIC MAP(16) PORT MAP(dataOutRamWeights(RamWeigthsWIDTH-1 downto RamWeigthsWIDTH - MaxNeornsNumBitSIZE),(others =>'0'),clk,decrement,reset,loadNumberOFNeorons,'1',numberOFNeorons);
    --------------------------
    NEORONREGMux: ENTITY work.mux2 GENERIC MAP(16) PORT MAP( dataOutRamNeorons(15 downto 0),oneNeoron,neoronValueSelection, neoronMuxOutput);

    ------------------------------
    RAMWEIGHTS: ENTITY work.RAM GENERIC MAP(5,RamWeigthsWIDTH) PORT MAP( clk,'0',dmaAddRamWeights,dataOutRamWeights,dataOutRamWeights);

    RAMNEORONS: ENTITY work.RAM GENERIC MAP(5,RamNeoronsWIDTH) PORT MAP(clk,'0' ,dmaAddRamNeorons,dataOutRamNeorons,dataOutRamNeorons);

    ------------------------------------
    MAXIMIZATIONMAP: ENTITY work.ngetMax GENERIC MAP(16) PORT MAP(labelReg,startMax,clk,cnnDone,maxNumber,doneMax);
    ------------------------------------
    ALUMAP: ENTITY work.Alus8x16 GENERIC MAP(10) PORT MAP(mulInputWeight,mulInputNeoron,labelReg,clk,startMultiply,reset,dumpDone,multiplyWorkIn);
    ----------------------------------------------
    bufferRegOne: ENTITY work.FlibFlob  PORT MAP(multiplyWorkIn,'1',clkInverted,reset,bufferTwoInput);
    bufferRegTwo: ENTITY work.FlibFlob  PORT MAP(bufferTwoInput,'1',clk,reset,multiplyWorkDelayed);
    -----------------------------------------------------------
    DMAWEIGHTS : ENTITY work.Dma  GENERIC MAP (2,5) PORT MAP(clk,reset,incrementWeightAdd,cnnDone,defaultAddressWeights,readRamWeights,finishRamWeights,dmaAddRamWeights);
    
    DMANEORONS : ENTITY work.Dma GENERIC MAP (2,5) PORT MAP(clk,reset,incrementNeoronsAdd,cnnDone,defaultAddressNeorons,readRamNeorons,finishRamNeorons,dmaAddRamNeorons);
    ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    multiplyWork <= (multiplyWorkDelayed and multiplyWorkIn);
    ---------------------------------------------
    WEIGHTVALUEMAP: for I in 0 to 9 generate
    begin
        mulInputWeight(I) <=dataOutRamWeights((I+1)*8-1 downto I*8);
        mulInputNeoron(I) <=neoronMuxOutput;
        cTemp (I) <=(others => '0');
    END generate WEIGHTVALUEMAP ;
    -------------------------------------------------------------------
    readRamWeights <= '1' when ((state = setCounter)or(state =loadBias)or(state = loadNeoronAndWeights)) else '0'; 
    
    readRamNeorons <= '1' when (state = loadNeoronAndWeights) else '0'; 
    
    loadNumberOFNeorons <='1' when ((state=setCounter) and (finishRamWeights='1')) else
                          '0' ;
   
    --startMultiply <='1' when  ((state = loadBias) and (finishRamWeights ='1')and (multiplyWork='0')) else
    --                '1' when ((state = loadNeoronAndWeights) and (finishRamWeights ='1')and(finishRamNeorons ='1')and(multiplyWork='0'))else
    --                '0';

    startMultiply <= '1' when (state=startMul) else '0';

    decrement <=startMultiply;
    incrementWeightAdd <= '1' when ((startMultiply='1') or (loadNumberOFNeorons='1')) else '0';

    incrementNeoronsAdd <='1' when ((state = loadNeoronAndWeights) and (finishRamWeights ='1')and(finishRamNeorons ='1')and(multiplyWork='0')) else '0';

    neoronValueSelection<='1' when (state=loadBias) else '0';

    startMax <='1'when (state = Maxmimize) else '0';

    fcDone <= '1' when (state = PrintOutput) else '0';

    PROCESS (clk, reset) 
    BEGIN 
        If (reset = '1') THEN   -- Upon reset, set the state to A
            state <= initial;
 
        ELSIF clk'EVENT AND clk='1' THEN
            CASE state IS
                when initial =>
                    if  cnnDone ='1' then
                        state <= setCounter;
                    end if; 
                when setCounter =>
                    if  finishRamWeights ='1' then
                        state <= delay;
                    end if; 
                when delay =>
                    if  finishRamWeights ='0' then
                        state <= loadBias;
                    end if; 
                when loadBias =>
                    if (finishRamWeights ='1')and ((multiplyWork='0')) then
                        state <= startMul;
                    end if; 
                when startMul => 
                        state <= compareCounter;
                when compareCounter =>
                    if (numberOFNeorons =("00000000"))and(finishRamWeights ='0')and (finishRamNeorons ='0')and((multiplyWork='0')) then 
                        state <= Maxmimize;
                    elsif (numberOFNeorons =("00000000")) then 
                        state <= compareCounter;
                    elsif (finishRamWeights ='0')and (finishRamNeorons ='0') then
                        state <= loadNeoronAndWeights;
                    end if;
                when loadNeoronAndWeights =>
                   if  (finishRamWeights ='1')and (finishRamNeorons ='1')and ((multiplyWork='0')) then
                        state <= startMul;
                    end if; 
                when Maxmimize =>
                    if doneMax='1' then
                        state <= PrintOutput;
                    end if ;
                when PrintOutput =>  -- in this state the FCdone will always be one
                     if  cnnDone ='1' then
                         state <= setCounter;
                    end if; 
            END CASE ;
        END if ;

    end process;
            
    
END FcMainArch;