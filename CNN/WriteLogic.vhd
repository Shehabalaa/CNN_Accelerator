-- WriteLogic is responsible for:
--    * read word
--    * read window
-- 
-- 
-- 
-- 
-- 
-- onReceiving MFC -> inc unitNumber by one
-- 
-- 
-- optimizations:
--      1- we don't need extra signals of switch state and reset, make the load of the counter => ramBaseAddress and the isLoad => switchRam signal ==> remove all logic of switch ram but keep only when you get switch ram enforce to go to idle like if you have reset 
-- 
--      2- For the state we inc base address counter in, we can inject this increment in the first fetch state and save one cycle

library ieee ;
    use ieee.std_logic_1164.all ;
    use ieee.numeric_std.all ;
use work.Constants.all;



ENTITY WriteLogic IS
GENERIC (
    addressSize: INTEGER := 16;
    internalBusSize: INTEGER := 16
  );
  port (
    clk: IN STD_LOGIC; -- System clock

    resetState: IN STD_LOGIC; -- Signal to reset State to idle state
    switchRam: IN STD_LOGIC; -- Signal to switch the ram base address of the reg
    ramBasedAddress: IN STD_LOGIC_VECTOR(addressSize-1 downto 0); -- Data  set when switchRam is active

    
    -- DMA interface: pass it to dma
    internalBus: IN STD_LOGIC_VECTOR(internalBusSize-1 DOWNTO 0);
    ramWrite: OUT STD_LOGIC; --
    ramDataOutBus: OUT STD_LOGIC_VECTOR(weightsBusSize-1 DOWNTO 0);
    ramAddress: OUT STD_LOGIC_VECTOR(addressSize-1 DOWNTO 0); 
    MFC: IN STD_LOGIC;

    -- CONFIG
    outputSize: IN STD_LOGIC_VECTOR(addressSize-1 downto 0);
    
    
    -- input cnt signals
    write: IN STD_LOGIC; -- signal to take the data at internal bus and put it into the ram in the next write address

    -- output cnt signals
    writeDone: OUT STD_LOGIC; -- output signal set when all the write is done
    writeDoneOne: OUT STD_LOGIC
  );
END WriteLogic ; 

ARCHITECTURE ReadLogicArch OF WriteLogic IS


-- FSM
TYPE FSM IS (
    idleState,
    switchState,
    initState,
    incState,
    writeState
); -- (idle, reset all signals), (switch, state to reset the addressReg with ram base address), (init, initialize the dma), (inc, increment the counter of the baseAddress), (fetch, fetch the data from dma)
SIGNAL currentState, nextState: FSM; -- state reg output and input (hold the state info)



SIGNAL dmaCountIn: STD_LOGIC_VECTOR(maxImageSize-1 downto 0);
SIGNAL addressRegOut, addressRegIn: STD_LOGIC_VECTOR(addressSize-1 downto 0); -- two signals of the baseRegister (windowBaseAddress, filterBaseAddress)


-- internal cnt signals
SIGNAL
    stateRegEn, -- set when you want to go from current state to next state

    -- input cnt signals from dma
    dmaFinishOneWrite,
    dmaFinishAll,
    -- output cnt signals
    dmaWrite,
    dmaInitCounter,
    dmaInitAddress,
    resetAddressReg,
    incBaseAddress -- mean => windowBaseAddress += 1
: STD_LOGIC;

-- after compiling with 93
SIGNAL baseAddressCounterClk: STD_LOGIC;


BEGIN
    -- after compiling with 93 mapping
    baseAddressCounterClk <= (clk AND incBaseAddress) OR (resetAddressReg AND (not clk));
    --clk => "or"("and"(incBaseAddress, clk),"and"(resetAddressReg, "not"(clk))) -- only count when i set inc signal and count after rising edge

    -- mapping from internal signals to output port
    -- TODO: should be removed and bind these port signals directly
    writeDone <= dmaFinishAll;
    writeDoneOne <= dmaFinishOneWrite;

    -- aluNumber <= unitRegOut;
    dma: ENTITY work.WriteDMA GENERIC MAP(addressSize, internalBusSize) PORT MAP (
        counter => dmaCountIn,
        writeBaseAddress => addressRegOut, --
        writeStep => outputSize,
        internalBus => internalBus,
        ramDataOutBus => ramDataOutBus,
        ramWrite => ramWrite,
        MFC => MFC,
        writeToRam => dmaWrite,
        initCounter => dmaInitCounter,
        initAddress => dmaInitAddress,
        clk => clk,
        writeComplete => dmaFinishAll,
        writeCompleteOne => dmaFinishOneWrite,
        ramWriteAddress=>ramAddress
    );

    baseAddressCounter: entity work.Counter2 generic map (addressSize) port map (
        load => addressRegIn, -- TODO: set here the value BASE_ADDRESS,,,, think again here
        isLoad => resetAddressReg,
        reset => '0', -- reset is always 0, when I need to reset I enable writing(isLoad) and put BASE_ADDRESS(constant value) to data in
        clk => baseAddressCounterClk, -- only count when i set inc signal and count after rising edge
        -- clk => "and"(clk, "or"(resetAddressReg, incBaseAddress)), -- only count when i set inc signal and count after rising edge
        count => addressRegOut
    );

  
    IOLogicCnt: PROCESS(currentState, write, dmaWrite, dmaFinishOneWrite,dmaFinishAll,ramBasedAddress,outputSize)
    BEGIN
        dmaWrite <= '0';
        dmaInitCounter <= '0';
        dmaInitAddress <= '0';
        resetAddressReg <= '0';
        incBaseAddress <= '0';
        dmaCountIn<=(others=>'0');
        addressRegIn<=addressRegIn;
        nextState <= idleState;
        
        CASE currentState IS
            WHEN switchState =>
                -- reset all cnt signals you have
                dmaWrite <= '0';
                dmaInitCounter <= '0';
                dmaInitAddress <= '0';
                resetAddressReg <= '0';
                incBaseAddress <= '0';
                dmaCountIn<=(others=>'0');

                -- reset the baseAddressRegister to RamBaseAddress value
                dmaWrite <= '0';
                resetAddressReg <= '1'; -- open the reset register to enable writing..
                addressRegIn <= ramBasedAddress; -- ..and put the base value to it

                -- transition logic
                stateRegEn <= '1'; -- to go to init state
                nextState <= idleState;

            WHEN idleState =>
                -- reset all cnt signals you have
                dmaWrite <= '0';
                dmaInitCounter <= '0';
                dmaInitAddress <= '0';
                resetAddressReg <= '0';
                incBaseAddress <= '0';
                dmaCountIn<=(others=>'0');
                addressRegIn<=addressRegIn;
                -- transition logic
                stateRegEn <= write; -- to go to init state
                nextState <= initState;

            
            WHEN initState =>
                -- reset all cnt signals you have
                dmaWrite <= '0';
                dmaInitCounter <= '0';
                dmaInitAddress <= '0';
                resetAddressReg <= '0';
                incBaseAddress <= '0';
                addressRegIn<=addressRegIn;


                dmaInitCounter <= '1';
                dmaInitAddress <= '1'; -- dmaReg(startAddress) = baseAddressReg(windowBaseAddress)
                dmaCountIn <= outputSize;
                
                -- transition logic
                nextState <= incState; -- transition logic
                stateRegEn <= '1'; -- always go to nextState (inc or fetch)

            WHEN incState =>
                -- reset all cnt signals you have
                dmaWrite <= '0';
                dmaInitCounter <= '0';
                dmaInitAddress <= '0';
                resetAddressReg <= '0';
                incBaseAddress <= '0';
                dmaCountIn<=(others=>'0');
                addressRegIn<=addressRegIn;

                incBaseAddress <= '1'; -- 
                -- transition logic
                stateRegEn <= '1'; -- always go to fetch state
                nextState <= writeState; -- always take one cycle and doesn't depend on anything
                
            WHEN writeState =>
                -- reset all cnt signals you have
                dmaWrite <= '0';
                dmaInitCounter <= '0';
                dmaInitAddress <= '0';
                resetAddressReg <= '0';
                incBaseAddress <= '0';
                dmaCountIn<=(others=>'0');
                addressRegIn<=addressRegIn;

                dmaWrite <= write;
                stateRegEn <= dmaFinishAll; -- still in the same state till finishing all
                -- readFinal <= dmaFinishAll;
                nextState <= idleState;

            WHEN others =>
                dmaWrite <= '0';
                dmaInitCounter <= '0';
                dmaInitAddress <= '0';
                resetAddressReg <= '0';
                incBaseAddress <= '0';
                dmaCountIn<=(others=>'0');
                addressRegIn<=addressRegIn;
                nextState <= idleState;
        END CASE;
    END PROCESS;


    -- Process to save state and change to next state when enable = 1
    PROCESS(nextState,clk, stateRegEn, resetState, switchRam)
        BEGIN
        IF resetState ='1' THEN -- if reset is equal to 1 set current state to idle state (0)
            currentState <= idleState;
        ELSIF FALLING_EDGE(clk) THEN -- Change value only when enable = 1 and rising edge
            IF switchRam ='1' THEN
                currentState <= switchState;
            ELSIF stateRegEn='1' THEN
                currentState <= nextState;
            END IF;
        END IF;
    END PROCESS;


END ARCHITECTURE;
