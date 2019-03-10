-- WriteLogic has the logic of how data is being written in the ram and where, functionalities are:
--    * reset the baseAddress to ramAddress when switch is high
--    * pass the data to dma with current write address when signal write is sent
--    * for write address: every write inc address with o.p size, this should be done (#inc = o.p size time) => then start again from last baseAddress increased by one
-- 


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
    internalBus: INOUT STD_LOGIC_VECTOR(internalBusSize-1 DOWNTO 0);
    ramWrite: OUT STD_LOGIC; --
    ramDataInBus: OUT STD_LOGIC_VECTOR(weightsBusSize-1 DOWNTO 0);
    ramAddress: OUT STD_LOGIC_VECTOR(addressSize-1 DOWNTO 0); 
    MFC: IN STD_LOGIC;

    -- CONFIG
    outputSize: IN STD_LOGIC_VECTOR(maxImageSize-1 downto 0);
    
    
    -- input cnt signals
    write: IN STD_LOGIC; -- signal to take the data at internal bus and put it into the ram in the next write address

    -- output cnt signals
    writeDone: OUT STD_LOGIC -- output signal set when any write is done
  );
END WriteLogic ; 

ARCHITECTURE WriteLogicArch OF WriteLogic IS


-- FSM
-- Enum for State Machine States
TYPE FSM IS (
    idleState,
    switchState,
    initState,
    writeState
); -- Finite Machine States
SIGNAL currentState, nextState: FSM; -- state reg output and input (hold the state info)


SIGNAL dmaCountIn: STD_LOGIC_VECTOR(2 downto 0);
SIGNAL addressRegOut, addressRegIn: STD_LOGIC_VECTOR(addressSize-1 downto 0); -- two signals of the baseRegister (windowBaseAddress, filterBaseAddress)

-- internal cnt signals
SIGNAL
    stateRegEn, -- set when you want to go from current state to next state

    -- input cnt signals from dma
    dmaFinishOne,
    dmaFinishAll,
    -- output cnt signals
    dmaWrite,
    dmaInitCounter,
    dmaInitAddress,
    resetAddressReg,
    incBaseAddress -- mean => windowBaseAddress += 1
: STD_LOGIC;

BEGIN

    dma: ENTITY work.DMAWrite GENERIC MAP(addressSize, internalBusSize) PORT MAP (
        count => dmaCountIn,
        startAddress => addressRegOut, --
        writeStep => outputSize,
        internalBus => internalBus,
        ramDataInBus => ramDataInBus,
        ramWrite => ramWrite,
        MFC => MFC,
        write => dmaWrite,
        initCounter => dmaInitCounter,
        initAddress => dmaInitAddress,
        clk => clk,
        finishedWriting => dmaFinishOne,
        finishedOneWrite => dmaFinishAll
    );

    baseAddressCounter: entity work.Counter generic map (addressSize) port map (
        load => addressRegIn, -- TODO: set here the value BASE_ADDRESS,,,, think again here
        isLoad => resetAddressReg,
        reset => '0', -- reset is always 0, when I need to reset I enable writing(isLoad) and put BASE_ADDRESS(constant value) to data in
        clk => "AND"(clk, incBaseAddress), -- only count when i set inc signal and count after rising edge
        count => addressRegOut
    );

    IOLogicCnt: PROCESS(currentState, write, dmaFinishOne, dmaFinishAll)
    BEGIN
        CASE currentState IS
            WHEN switchState =>
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

                -- transition logic
                stateRegEn <= load; -- to go to init state
                nextState <= initState;

            
            WHEN initState =>
                dmaInitCounter <= '1';
                dmaCountIn <= outputSize;
                incBaseAddress <= '1';
                dmaInitAddress <= '1';

                -- transition logic
                stateRegEn <= '1'; -- go to fetch state
                nextState <= fetchState; -- always take one cycle and doesn't depend on anything
                
            WHEN writeState =>
                dmaWrite <= '1';
                writeDone <= dmaFinishOne;

                -- transition logic
                stateRegEn <= dmaFinishAll; -- still in the same state till finishing all
                nextState <= idleState;
        END CASE;
    END PROCESS;


    -- Process to save state and change to next state when enable = 1
    PROCESS(nextState, clk, stateRegEn, resetState)
        BEGIN
        IF resetState ='1' THEN -- if reset is equal to 1 set current state to idle state (0)
            currentState <= idleState;
        ELSIF switchRam ='1' THEN -- if reset is equal to 1 set current state to idle state (0)
            currentState <= switchState;
        ELSIF FALLING_EDGE(clk) AND stateRegEn='1' THEN -- Change value only when enable = 1 and rising edge
            currentState <= nextState;
        END IF;
    END PROCESS;


END ARCHITECTURE;