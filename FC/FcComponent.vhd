LIBRARY IEEE;
LIBRARY work;
USE IEEE.std_logic_1164.all;
use work.Utiles.ALL;

-- component that will be used in the Main entity of the project

-- fcinit : signal will be raised for one cycle to tell FC to initialize and to load number number of Neorons from IO memory and load bias and multiply it by one and increment the result
-- cnnFinishNeoron : pipeline signal from cnn to tell that the neoron have been finished
ENTITY FcComponent IS
    PORT(
            fcInit,clk,reset : IN STD_LOGIC;  -- general signals 

            cnnFinishNeoron : IN STD_LOGIC;
            cnnNeoron:in STD_LOGIC_VECTOR(15 downto 0); -- CNN signals

                            
            readRamWeights: Out STD_LOGIC;
            dmaAddRamWeights : out STD_LOGIC_VECTOR(16-1 downto 0);
            finishRamWeights : IN STD_LOGIC;
            dataOutRamWeights:in STD_LOGIC_VECTOR(79 downto 0); -- weight memory signals

             
            fcDone: Out STD_LOGIC;                          -- fc output signals
	        MAXPrediction: Out STD_LOGIC_VECTOR(3 downto 0)
        );
END FcComponent;

--_____________________________________________________

----------------------------------------------------------------------

ARCHITECTURE FcComponentArch OF FcComponent IS
    ----------------------------------------
    --CONSTANTS
    CONSTANT RamNeoronsWIDTH : INTEGER := 16*5; 
    CONSTANT RamWeigthsWIDTH : INTEGER := 8*10;
    CONSTANT MaxNeornsNumBitSIZE : INTEGER := 16;
    CONSTANT RAMDELAY : INTEGER := 4;
    CONSTANT RAMADDRESS : INTEGER := 16;


    -------------------------------------------------

    TYPE State_type IS (initial,setCounter,delay,loadBias,compareCounter ,loadNeoronAndWeights,Maxmimize,PrintOutput,startMul,startMulBias,resetMax); -- the 4 different states
	SIGNAL state : State_Type;   
    ---- Signal Declaration 
    SIGNAL latchedFinishRam,risingFinishRam: STD_LOGIC;


    SIGNAL dataOutRamNeorons: STD_LOGIC_VECTOR(RamNeoronsWIDTH-1 DOWNTO 0);
    --SIGNAL dataOutRamWeights: STD_LOGIC_VECTOR(RamWeigthsWIDTH-1  DOWNTO 0);

    SIGNAL neoronMuxOutput: STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL loadNumberOFNeorons : STD_LOGIC ;   ---            need to be implemented 
    SIGNAL numberOFNeorons : STD_LOGIC_VECTOR(MaxNeornsNumBitSIZE-1 DOWNTO 0);
    
    SIGNAL decrement : STD_LOGIC;

    SIGNAL oneNeoron ,aluNeoronInput: STD_LOGIC_VECTOR(15 downto 0);
    SIGNAL defaultAddressWeights,defaultAddressNeorons: STD_LOGIC_VECTor(RAMADDRESS-1 downto 0);
    SIGNAL neoronValueSelection,latchedFinishNeoron : STD_LOGIC;

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
    SIGNAL fcInitOneCycle:STD_LOGIC;

BEGIN
    ---------- initializition
    oneNeoron <= x"0100";
    defaultAddressWeights <= (others => '0');
    defaultAddressNeorons <= (others => '0');
    clkInverted <= NOT clk ;

    ----------------------------------------
    fcInitHOLDER : ENTITY work.RisingHolderFullCycle PORT MAP(fcInit,clk,reset,fcInitOneCycle);
    ------------------------------------------
    NEORONSLASTSTAGES: ENTITY work.CounterUpDown GENERIC MAP(16) PORT MAP(dataOutRamWeights(RamWeigthsWIDTH-1 downto RamWeigthsWIDTH - MaxNeornsNumBitSIZE),(15 downto 0 =>'0'),clk,decrement,reset,loadNumberOFNeorons,'1',numberOFNeorons);
    --------------------------
    NEORONREGMux: ENTITY work.mux2 GENERIC MAP(16) PORT MAP( A => aluNeoronInput ,B => oneNeoron,S => neoronValueSelection,C => neoronMuxOutput);
    ------------------------------------
    MAXIMIZATIONMAP: ENTITY work.ngetMax GENERIC MAP(16) PORT MAP(labelReg,startMax,clk,resetMaxSignal,maxNumber,doneMax);
    ------------------------------------
    ALUMAP: ENTITY work.Alus8x16 GENERIC MAP(10) PORT MAP(mulInputWeight,mulInputNeoron,labelReg,clk,startMultiply,reset,dumpDone,multiplyWorkIn);
    ----------------------------------------------
    bufferRegOne: ENTITY work.FlibFlob  PORT MAP(multiplyWorkIn,'1',clkInverted,reset,bufferTwoInput);
    bufferRegTwo: ENTITY work.FlibFlob  PORT MAP(bufferTwoInput,'1',clk,reset,multiplyWorkDelayed);
    -----------------------------------------------------------
    REGADDRESS: ENTITY work.CounterUpDown GENERIC MAP(RAMADDRESS) PORT MAP(defaultAddressWeights,defaultAddressWeights,clk,incrementWeightAdd ,reset,fcInitOneCycle,'0',dmaAddRamWeights);
    ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    MAXVALUEREGMAP : ENTITY work.Reg generic map(4) port map(maxNumber,'1',doneMax,reset,MAXPrediction);
    ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    NEORONREGMAP : ENTITY work.Reg generic map(16) port map(cnnNeoron,'1',cnnFinishNeoron,reset,aluNeoronInput);
    latchFinishRam: ENTITY work.FlibFlob  PORT MAP('1',finishRamWeights,clk,startMultiply,latchedFinishRam);
    RiseFinishRam: ENTITY work.FlibFlob  PORT MAP('1','1',finishRamWeights,startMultiply,risingFinishRam);  

    ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    multiplyWork <= (multiplyWorkDelayed and multiplyWorkIn);
    ---------------------------------------------
    WEIGHTVALUEMAP: for I in 0 to 9 generate
    begin
        mulInputWeight(I) <=dataOutRamWeights((I+1)*8-1 downto I*8);
        mulInputNeoron(I) <=neoronMuxOutput;
    END generate WEIGHTVALUEMAP ;
    -------------------------------------------------------------------
    readRamWeights <= '1' when ((state = setCounter)or(state =loadBias)) else 
                      '1' when (state = loadNeoronAndWeights) and (latchedFinishRam='0') else
                      '0' ; 
    
    
    loadNumberOFNeorons <='1' when ((state=setCounter) and (finishRamWeights='1')) else
                          '0' ;
   

    startMultiply <= '1' when (state=startMul) or(state=startMulBias) else '0';

    decrement <=startMultiply;
    incrementWeightAdd <= '1' when ((startMultiply='1') or (loadNumberOFNeorons='1')) else '0';

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
                    if  fcInitOneCycle ='1' then
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
                    if (numberOFNeorons =("0000000000000000"))and(risingFinishRam ='0')and (cnnFinishNeoron ='0')and((multiplyWork='0')) then 
                        state <= resetMax;
                    elsif (numberOFNeorons =("0000000000000000")) then 
                        state <= compareCounter;
                    elsif (risingFinishRam ='0') then
                        state <= loadNeoronAndWeights;
                    end if;
                when loadNeoronAndWeights =>
                   if  (risingFinishRam ='1')and (cnnFinishNeoron ='1')and ((multiplyWork='0')) then
                        state <= startMul;
                    end if; 
                when resetMax => 
                    state <= Maxmimize;
                when Maxmimize =>
                    if doneMax='1' then
                        state <= PrintOutput;
                    end if ;
                when PrintOutput =>  -- in this state the FCdone will always be one
                     if  fcInitOneCycle ='1' then
                         state <= setCounter;
                    end if; 
            END CASE ;
        END if ;

    end process;
            
    
END FcComponentArch;
