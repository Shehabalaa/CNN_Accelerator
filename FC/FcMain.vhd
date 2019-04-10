LIBRARY IEEE;
LIBRARY work;
USE IEEE.std_logic_1164.all;
use IEEE.math_real.all;
use work.Utiles.all;



ENTITY FcMain IS
    PORT(
            cnnDone,clk,reset : IN STD_LOGIC;
            fcDone: Out STD_LOGIC 
        );
END FcMain;

--_____________________________________________________

----------------------------------------------------------------------

ARCHITECTURE FcMainArch OF FcMain IS

    TYPE State_type IS (initial,setCounter,delay,loadBias,compareCounter ,loadNeoronAndWeights,Maxmimize); -- the 4 different states
	SIGNAL state : State_Type;   
    ---- Signal Declaration 
    SIGNAL readRamWeights,readRamNeorons,finishRamWeights,finishRamNeorons: STD_LOGIC;
    
    SIGNAL multiplyWork,startMultiply:STD_LOGIC;

    SIGNAL dmaAddRamNeorons,dmaAddRamWeights :STD_LOGIC_VECTOR(4 DOWNTO 0);

    SIGNAL dataOutRamNeorons: STD_LOGIC_VECTOR(16*5-1 DOWNTO 0);
    SIGNAL dataOutRamWeights: STD_LOGIC_VECTOR(8*10-1  DOWNTO 0);

    SIGNAL neoronMuxOutput,neoronRegOutput: STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL loadNumberOFNeorons : STD_LOGIC ;   ---            need to be implemented 
    SIGNAL numberOFNeorons : STD_LOGIC_VECTOR(7 DOWNTO 0);
    
    SIGNAL decrement : STD_LOGIC;

    SIGNAL oneNeoron : STD_LOGIC_VECTOR(15 downto 0);
    SIGNAL defaultAddressWeights,defaultAddressNeorons: STD_LOGIC_VECTor(4 downto 0);
    SIGNAL neoronValueSelection : STD_LOGIC;

    SIGNAL incrementWeightAdd,incrementNeoronsAdd: STD_LOGIC;
    SIGNAL startMax,doneMax:STD_LOGIC;


BEGIN
    ---------- initializition
    oneNeoron(15 downto 1 ) <= (others => '0');
    oneNeoron (0)<='1';
    defaultAddressWeights <= (others => '0');
    defaultAddressNeorons <= (others => '0');
    ----------------------------------------

    
    NEORONSLASTSTAGES: ENTITY work.CounterUpDown GENERIC MAP(8) PORT MAP(dataOutRamWeights(7 downto 0),(others =>'0'),clk,decrement,reset,loadNumberOFNeorons,'1',numberOFNeorons);
    --------------------------
    NEORONREGMux: ENTITY work.mux2 GENERIC MAP(16) PORT MAP( dataOutRamNeorons(15 downto 0),oneNeoron,neoronValueSelection, neoronMuxOutput);
    NEORONSREGADDRESS: ENTITY work.CounterUpDown GENERIC MAP(5) PORT MAP(defaultAddressNeorons,defaultAddressNeorons,clk,incrementNeoronsAdd ,reset,cnnDone,'0',dmaAddRamNeorons);

    ------------------------------
    WEIGHTSREGADDRESS: ENTITY work.CounterUpDown GENERIC MAP(5) PORT MAP(defaultAddressWeights,defaultAddressWeights,clk,incrementWeightAdd ,reset,cnnDone,'0',dmaAddRamWeights);
    ----------------------------------
    readRamWeights <= '1' when ((state = setCounter)or(state =loadBias)or(state = loadNeoronAndWeights)) else '0'; 
                
    readRamNeorons <= '1' when (state = loadNeoronAndWeights) else '0'; 
                    
    loadNumberOFNeorons <='1' when ((state=setCounter) and (finishRamWeights='1')) else
                          '0' ;
   
    startMultiply <='1' when  ((state = loadBias) and (finishRamWeights ='1')and (multiplyWork='0')) else
                    '1' when ((state = loadNeoronAndWeights) and (finishRamWeights ='1')and(finishRamNeorons ='1')and(multiplyWork='0'))else
                    '0';

    decrement <=startMultiply;
    incrementWeightAdd <= '1' when ((startMultiply='1') or (loadNumberOFNeorons='1')) else '0';

    incrementNeoronsAdd <='1' when ((state = loadNeoronAndWeights) and (finishRamWeights ='1')and(finishRamNeorons ='1')and(multiplyWork='0')) else '0';

    neoronValueSelection<='1' when (state=loadBias) else '0';

    startMax <='1'when (state =Maxmimize) else '0';

    

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
                        state <= compareCounter;
                    end if; 
                when compareCounter =>
                    if (numberOFNeorons =("00000000"))and(finishRamWeights ='0')and (finishRamNeorons ='0') then 
                        state <= Maxmimize;
                    elsif (finishRamWeights ='0')and (finishRamNeorons ='0') then
                        state <= loadNeoronAndWeights;
                    end if;
                when loadNeoronAndWeights =>
                   if  (finishRamWeights ='1')and (finishRamNeorons ='1')and ((multiplyWork='0')) then
                        state <= compareCounter;
                    end if; 
                when Maxmimize =>
                    if doneMax='1' then
                        state <= initial;
                    end if ;
            END CASE ;
        END if ;

    end process;
            
    
END FcMainArch;
