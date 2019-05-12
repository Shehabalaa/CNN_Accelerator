library ieee;
library work;
use ieee.std_logic_1164.all;
use work.utiles.all;



entity fcmainfc is
    generic (
        weightaddresssize : integer :=16;
        neoronaddresssize : integer :=13
    );

    port(
            cnndone,iodone,clk,reset : in std_logic;


            defaultaddressneorons : in std_logic_vector(neoronaddresssize-1 downto 0);   -- ram address bits
            dmaaddramneorons : out std_logic_vector(neoronaddresssize-1 downto 0);   -- ram address bits
            readramneorons :out std_logic;
            finishramneorons:in std_logic;
            dataoutramneorons:in std_logic_vector(79 downto 0);



            dmaaddramweights : out std_logic_vector(weightaddresssize-1 downto 0);   -- ram address bits
            readramweights :out std_logic;
            finishramweights:in std_logic;
            dataoutramweights:in std_logic_vector(79 downto 0);        


            fcdone: out std_logic;
	        maxprediction: out std_logic_vector(3 downto 0)
        );
end fcmainfc;

--_____________________________________________________

----------------------------------------------------------------------

architecture fcmainfcarch of fcmainfc is
    ----------------------------------------
    --constants
    constant ramneoronswidth : integer := 16*5; 
    constant ramweigthswidth : integer := 8*10;
    constant maxneornsnumbitsize : integer := 16;
    --constant ramaddress : integer := 16;


    --

    type state_type is (initial,setcounter,delay,loadbias,comparecounter ,loadneoronandweights,maxmimize,printoutput,startmul,startmulbias,resetmax); -- the 4 different states
	signal state : state_type;   
    ---- signal declaration 

    signal neoronmuxoutput: std_logic_vector(15 downto 0);
    signal loadnumberofneorons : std_logic ;   ---            need to be implemented 
    signal numberofneorons : std_logic_vector(maxneornsnumbitsize-1 downto 0);
    
    signal decrement : std_logic;

    signal oneneoron : std_logic_vector(15 downto 0);
    
    signal defaultaddressweights: std_logic_vector(weightaddresssize-1 downto 0);

    signal neoronvalueselection : std_logic;

    signal incrementweightadd,incrementneoronsadd: std_logic;

    ----------------------------------
    signal startmax,donemax:std_logic; 
    signal labelreg : genericarrayofvector16bit (9 downto 0);

    signal maxnumber: std_logic_vector( 3 downto 0);
    ---------------------------------------
    signal mulinputweight : genericarrayofvector8bit (9 downto 0);
    signal mulinputneoron : genericarrayofvector16bit (9 downto 0);
    signal multiplywork,multiplyworkdelayed,multiplyworkin,startmultiply:std_logic;
    signal dumpdone: std_logic;
    ---------------------------------------
    signal clkinverted,buffertwoinput : std_logic;

    ---------------------------------------
	signal resetmul: std_logic;
    ---------------------------------------

    signal resetmaxsignal:std_logic;
    --------------------------------
    signal cnndoneonecycle:std_logic;
    signal beginsignal:std_logic;

begin
    beginsignal <= cnndone and iodone;
    ---------- initializition
    oneneoron <= x"0100";
    defaultaddressweights <= (others => '0');
    clkinverted <= not clk ;

    ----------------------------------------
    cnndoneholder : entity work.risingholderfullcyclefc port map(beginsignal,clk,reset,cnndoneonecycle);
    ------------------------------------------
    neoronslaststages: entity work.counterupdownfc generic map(16) port map(dataoutramweights(maxneornsnumbitsize-1 downto 0),(15 downto 0 =>'0'),clk,decrement,reset,loadnumberofneorons,'1',numberofneorons);
    --------------------------
    neoronregmux: entity work.mux2fc generic map(16) port map( a => dataoutramneorons(15 downto 0),b => oneneoron,s => neoronvalueselection,c => neoronmuxoutput);

    ------------------------------------
    maximizationmap: entity work.ngetmaxfc generic map(16) port map(labelreg,startmax,clk,resetmaxsignal,maxnumber,donemax);
    ------------------------------------
    alumap: entity work.alus8x16fc generic map(10) port map(mulinputweight,mulinputneoron,labelreg,clk,startmultiply,cnndoneonecycle,dumpdone,multiplyworkin);
    ----------------------------------------------
    bufferregone: entity work.flibflobfc  port map(multiplyworkin,'1',clkinverted,reset,buffertwoinput);
    bufferregtwo: entity work.flibflobfc  port map(buffertwoinput,'1',clk,reset,multiplyworkdelayed);
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    
    weightaddresscounter: entity work.counterupdownfc generic map(weightaddresssize) port map(defaultaddressweights,defaultaddressweights,clk,incrementweightadd ,reset,cnndoneonecycle,'0',dmaaddramweights);
    neoronaddresscounter: entity work.counterupdownfc generic map(neoronaddresssize) port map(defaultaddressneorons,defaultaddressneorons,clk,incrementneoronsadd ,reset,cnndoneonecycle,'0',dmaaddramneorons);

    ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    maxvalueregmap : entity work.regfc generic map(4) port map(maxnumber,'1',donemax,reset,maxprediction);
    ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    multiplywork <= (multiplyworkdelayed and multiplyworkin);
    ---------------------------------------------
    weightvaluemap: for i in 0 to 9 generate
    begin
        mulinputweight(i) <=dataoutramweights((i+1)*8-1 downto i*8);
        mulinputneoron(i) <=neoronmuxoutput;
    end generate weightvaluemap ;
    -------------------------------------------------------------------
    readramweights <= '1' when ((state = setcounter)or(state =loadbias)or(state = loadneoronandweights)) else '0'; 
    
    readramneorons <= '1' when (state = loadneoronandweights) else '0'; 
    
    loadnumberofneorons <='1' when ((state=setcounter) and (finishramweights='1')) else
                          '0' ;
   
    --startmultiply <='1' when  ((state = loadbias) and (finishramweights ='1')and (multiplywork='0')) else
    --                '1' when ((state = loadneoronandweights) and (finishramweights ='1')and(finishramneorons ='1')and(multiplywork='0'))else
    --                '0';

    startmultiply <= '1' when (state=startmul) or(state=startmulbias) else '0';

    decrement <=startmultiply;
    incrementweightadd <= '1' when ((startmultiply='1') or (loadnumberofneorons='1')) else '0';

    incrementneoronsadd <='1' when ((state = loadneoronandweights) and (finishramweights ='1')and(finishramneorons ='1')and(multiplywork='0')) else '0';

    neoronvalueselection<='1' when (state=loadbias) or(state=startmulbias) else '0';

    startmax <='1'when (state = maxmimize) else '0';

    resetmaxsignal <= '1' when (state= resetmax) else '0';

    fcdone <= '1' when (state = printoutput) else '0';

    process (clk, reset) 
    begin 
        if (reset = '1') then   -- upon reset, set the state to a
            state <= initial;
 
        elsif clk'event and clk='1' then
            case state is
                when initial =>
                    if  cnndoneonecycle ='1' then
                        state <= setcounter;
                    end if; 
                when setcounter =>
                    if  finishramweights ='1' then
                        state <= delay;
                    end if; 
                when delay =>
                    if  finishramweights ='0' then
                        state <= loadbias;
                    end if; 
                when loadbias =>
                    if (finishramweights ='1')and ((multiplywork='0')) then
                        state <= startmulbias;
                    end if;
                when startmulbias => 
                        state <= comparecounter;
                when startmul => 
                        state <= comparecounter;
                when comparecounter =>
                    if (numberofneorons =("0000000000000000"))and(finishramweights ='0')and (finishramneorons ='0')and((multiplywork='0')) then 
                        state <= resetmax;
                    elsif (numberofneorons =("0000000000000000")) then 
                        state <= comparecounter;
                    elsif (finishramweights ='0')and (finishramneorons ='0') then
                        state <= loadneoronandweights;
                    end if;
                when loadneoronandweights =>
                   if  (finishramweights ='1')and (finishramneorons ='1')and ((multiplywork='0')) then
                        state <= startmul;
                    end if; 
                when resetmax => 
                    state <= maxmimize;
                when maxmimize =>
                    if donemax='1' then
                        state <= printoutput;
                    end if ;
                when printoutput =>  -- in this state the fcdone will always be one
                     if  cnndoneonecycle ='1' then
                         state <= setcounter;
                    end if; 
            end case ;
        end if ;

    end process;
            
    
end fcmainfcarch;
