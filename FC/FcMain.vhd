LIBRARY IEEE;
LIBRARY work;
USE IEEE.std_logic_1164.all;
use work.Utiles.ALL;



ENTITY FcMain IS
    PORT(
            cnnDone,clk,reset : IN STD_LOGIC;

            dmaAddRamNeorons : OUT STD_LOGIC_VECTOR(16-1 downto 0);   -- ram address bits
            readRamNeorons :out STD_LOGIC;
            finishRamNeorons:in std_logic;
            dataOutRamNeorons:in STD_LOGIC_VECTOR(79 downto 0);


            dmaAddRamWeights : OUT STD_LOGIC_VECTOR(16-1 downto 0);   -- ram address bits
            readRamWeights :out STD_LOGIC;
            finishRamWeights:in std_logic;
            dataOutRamWeights:in STD_LOGIC_VECTOR(79 downto 0);        


            fcDone: Out STD_LOGIC;
	        MAXPrediction: Out STD_LOGIC_VECTOR(3 downto 0)
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
    CONSTANT RAMDELAY : INTEGER := 1;
    CONSTANT RAMADDRESS : INTEGER := 16;


    --

    TYPE State_type IS (initial,setCounter,delay,loadBias,compareCounter ,loadNeoronAndWeights,Maxmimize,PrintOutput,startMul,startMulBias,resetMax); -- the 4 different states
	SIGNAL state : State_Type;   
    ---- Signal Declaration 

    SIGNAL neoronMuxOutput: STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL loadNumberOFNeorons : STD_LOGIC ;   ---            need to be implemented 
    SIGNAL numberOFNeorons : STD_LOGIC_VECTOR(MaxNeornsNumBitSIZE-1 DOWNTO 0);
    
    SIGNAL decrement : STD_LOGIC;

    SIGNAL oneNeoron : STD_LOGIC_VECTOR(15 downto 0);
    SIGNAL defaultAddressWeights,defaultAddressNeorons: STD_LOGIC_VECTor(RAMADDRESS-1 downto 0);
    SIGNAL neoronValueSelection : STD_LOGIC;

    SIGNAL incrementWeightAdd,incrementNeoronsAdd: STD_LOGIC;

    ----------------------------------
    SIGNAL startMax,doneMax:STD_LOGIC; 
    SIGNAL labelReg : genericArrayofVector16bit (9 downto 0);

    SIGNAL maxNumber: STD_LOGIC_VECTOR( 3 downto 0);
    ---------------------------------------
    SIGNAL mulInputWeight : genericArrayofVector8bit (9 downto 0);
    SIGNAL mulInputNeoron : genericArrayofVector16bit (9 downto 0);
    SIGNAL multiplyWork,multiplyWorkDelayed,multiplyWorkIn,startMultiply:STD_LOGIC;
    SIGNAL dumpDone: STD_LOGIC;
    ---------------------------------------
    SIGNAL clkInverted,bufferTwoInput : STD_LOGIC;

    ---------------------------------------
	SIGNAL resetMul: STD_LOGIC;
    ---------------------------------------

    SIGNAL resetMaxSignal:STD_LOGIC;
    --------------------------------
    SIGNAL cnnDoneOneCycle:STD_LOGIC;

BEGIN
    ---------- initializition
    oneNeoron <= x"0100";
    defaultAddressWeights <= (others => '0');
    defaultAddressNeorons <= (others => '0');
    clkInverted <= NOT clk ;

    ----------------------------------------
    CNNDONEHOLDER : ENTITY work.RisingHolderFullCycle PORT MAP(cnnDone,clk,reset,cnnDoneOneCycle);
    ------------------------------------------
    NEORONSLASTSTAGES: ENTITY work.CounterUpDown GENERIC MAP(16) PORT MAP(dataOutRamWeights(RamWeigthsWIDTH-1 downto RamWeigthsWIDTH - MaxNeornsNumBitSIZE),(15 downto 0 =>'0'),clk,decrement,reset,loadNumberOFNeorons,'1',numberOFNeorons);
    --------------------------
    NEORONREGMux: ENTITY work.mux2 GENERIC MAP(16) PORT MAP( A => dataOutRamNeorons(79 downto 64),B => oneNeoron,S => neoronValueSelection,C => neoronMuxOutput);

    ------------------------------------
    MAXIMIZATIONMAP: ENTITY work.ngetMax GENERIC MAP(16) PORT MAP(labelReg,startMax,clk,resetMaxSignal,maxNumber,doneMax);
    ------------------------------------
    ALUMAP: ENTITY work.Alus8x16 GENERIC MAP(10) PORT MAP(mulInputWeight,mulInputNeoron,labelReg,clk,startMultiply,reset,dumpDone,multiplyWorkIn);
    ----------------------------------------------
    bufferRegOne: ENTITY work.FlibFlob  PORT MAP(multiplyWorkIn,'1',clkInverted,reset,bufferTwoInput);
    bufferRegTwo: ENTITY work.FlibFlob  PORT MAP(bufferTwoInput,'1',clk,reset,multiplyWorkDelayed);
    -----------------------------------------------------------
    
    WeightAddressCounter: ENTITY work.CounterUpDown GENERIC MAP(RAMADDRESS) PORT MAP(defaultAddressWeights,defaultAddressWeights,clk,incrementWeightAdd ,reset,cnnDoneOneCycle,'0',dmaAddRamWeights);
    NeoronAddressCounter: ENTITY work.CounterUpDown GENERIC MAP(RAMADDRESS) PORT MAP(defaultAddressNeorons,defaultAddressNeorons,clk,incrementNeoronsAdd ,reset,cnnDoneOneCycle,'0',dmaAddRamNeorons);

    ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    MAXVALUEREGMAP : ENTITY work.Reg generic map(4) port map(maxNumber,'1',doneMax,reset,MAXPrediction);
    ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    multiplyWork <= (multiplyWorkDelayed and multiplyWorkIn);
    ---------------------------------------------
    WEIGHTVALUEMAP: for I in 0 to 9 generate
    begin
        mulInputWeight(I) <=dataOutRamWeights((I+1)*8-1 downto I*8);
        mulInputNeoron(I) <=neoronMuxOutput;
    END generate WEIGHTVALUEMAP ;
    -------------------------------------------------------------------
    readRamWeights <= '1' when ((state = setCounter)or(state =loadBias)or(state = loadNeoronAndWeights)) else '0'; 
    
    readRamNeorons <= '1' when (state = loadNeoronAndWeights) else '0'; 
    
    loadNumberOFNeorons <='1' when ((state=setCounter) and (finishRamWeights='1')) else
                          '0' ;
   
    --startMultiply <='1' when  ((state = loadBias) and (finishRamWeights ='1')and (multiplyWork='0')) else
    --                '1' when ((state = loadNeoronAndWeights) and (finishRamWeights ='1')and(finishRamNeorons ='1')and(multiplyWork='0'))else
    --                '0';

    startMultiply <= '1' when (state=startMul) or(state=startMulBias) else '0';

    decrement <=startMultiply;
    incrementWeightAdd <= '1' when ((startMultiply='1') or (loadNumberOFNeorons='1')) else '0';

    incrementNeoronsAdd <='1' when ((state = loadNeoronAndWeights) and (finishRamWeights ='1')and(finishRamNeorons ='1')and(multiplyWork='0')) else '0';

    neoronValueSelection<='1' when (state=loadBias) or(state=startMulBias) else '0';

    startMax <='1'when (state = Maxmimize) else '0';

    resetMaxSignal <= '1' when (state= resetMax) else '0';

    fcDone <= '1' when (state = PrintOutput) else '0';

    PROCESS (clk, reset) 
    BEGIN 
        If (reset = '1') THEN   -- Upon reset, set the state to A
            state <= initial;
 
        ELSIF clk'EVENT AND clk='1' THEN
            CASE state IS
                when initial =>
                    if  cnnDoneOneCycle ='1' then
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
                        state <= startMulBias;
                    end if;
                when startMulBias => 
                        state <= compareCounter;
                when startMul => 
                        state <= compareCounter;
                when compareCounter =>
                    if (numberOFNeorons =("0000000000000000"))and(finishRamWeights ='0')and (finishRamNeorons ='0')and((multiplyWork='0')) then 
                        state <= resetMax;
                    elsif (numberOFNeorons =("0000000000000000")) then 
                        state <= compareCounter;
                    elsif (finishRamWeights ='0')and (finishRamNeorons ='0') then
                        state <= loadNeoronAndWeights;
                    end if;
                when loadNeoronAndWeights =>
                   if  (finishRamWeights ='1')and (finishRamNeorons ='1')and ((multiplyWork='0')) then
                        state <= startMul;
                    end if; 
                when resetMax => 
                    state <= Maxmimize;
                when Maxmimize =>
                    if doneMax='1' then
                        state <= PrintOutput;
                    end if ;
                when PrintOutput =>  -- in this state the FCdone will always be one
                     if  cnnDoneOneCycle ='1' then
                         state <= setCounter;
                    end if; 
            END CASE ;
        END if ;

    end process;
            
    
END FcMainArch;
