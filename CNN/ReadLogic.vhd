-- ReadLogic is responsible for:
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
--      we don't need extra signals of switch state and reset, make the load of the counter => ramBaseAddress and the isLoad => switchRam signal ==> remove all logic of switch ram but keep only when you get switch ram enforce to go to idle like if you have reset 
-- 

library ieee ;
    use ieee.std_logic_1164.all ;
    use ieee.numeric_std.all ;
use work.Constants.all;



ENTITY ReadLogic IS
  GENERIC (
    addressSize: INTEGER := 16;
    internalBusSize: INTEGER := 16
  );
  port (
    clk: IN STD_LOGIC; -- System clock

    resetState: IN STD_LOGIC; -- Signal to reset State to idle state
    switchRam: IN STD_LOGIC; -- Signal to switch the ram base address of the reg
    -- TODO:? can this address sent in internal bus
    ramBasedAddress: IN STD_LOGIC_VECTOR(addressSize-1 downto 0); -- Data set when switchRam is active

    
    -- DMA interface: pass it to dma
    internalBus: INOUT STD_LOGIC_VECTOR(internalBusSize-1 DOWNTO 0);
    ramDataInBus: IN STD_LOGIC_VECTOR(weightsBusSize-1 DOWNTO 0);
    ramRead: OUT STD_LOGIC; --
    ramWrite: OUT STD_LOGIC; --
    ramDataOutBus: OUT STD_LOGIC_VECTOR(weightsBusSize-1 DOWNTO 0);
    MFC: IN STD_LOGIC;

    -- CONFIG
    inputSize: IN STD_LOGIC_VECTOR(maxImageSize-1 downto 0);
    filterSize: IN STD_LOGIC_VECTOR(3-1 downto 0);
    
    
    -- input cnt signals
    loadNextWordList: IN STD_LOGIC; -- signal to specify to me to start reading the filter, here we keep track of the next address to read from
    loadWord: IN STD_LOGIC; -- same as above but for one row
    -- output cnt signals
    readOne: OUT STD_LOGIC; -- output signal set when one row when loading window is available on internal buses
    readFinal: OUT STD_LOGIC;-- // // // // when final input is available on the internal data bus
    aluNumber: OUT STD_LOGIC_VECTOR(4 downto 0) -- 5 bits to say where to set the data within which ALU
  );
END ReadLogic ; 

ARCHITECTURE ReadLogicArch OF ReadLogic IS


-- FSM
-- Enum for State Machine States
TYPE FSM IS (
    idleState,
    switchState,
    initState,
    fetchState
); -- Finite Machine States
SIGNAL currentState, nextState: FSM; -- state reg output and input (hold the state info)

-- helper signals:
SIGNAL load: STD_LOGIC;


SIGNAL dmaCountIn: STD_LOGIC_VECTOR(2 downto 0);
SIGNAL addressRegOut, addressRegIn: STD_LOGIC_VECTOR(addressSize-1 downto 0); -- two signals of the baseRegister (windowBaseAddress, filterBaseAddress)

SIGNAL unitRegOut: STD_LOGIC_VECTOR(2 downto 0); -- unit reg output (we don't need to init with special value, so we don't have input)

-- internal cnt signals
SIGNAL
    stateRegEn, -- set when you want to go from current state to next state

    -- input cnt signals from dma
    dmaFinishOneRead,
    dmaFinishAll,
    -- output cnt signals
    dmaLoad,
    dmaInitCounter,
    dmaInitAddress,
    resetAddressReg,
    incBaseAddress, -- mean => windowBaseAddress += 1
    resetUnitNumberReg,
    incUnitNumber -- mean => unitNumber += 1
: STD_LOGIC;

BEGIN
    -- define helper signals
    load <= loadNextWordList OR loadWord;
    -- end define helper signals

    dma: ENTITY work.DMA GENERIC MAP(addressSize, internalBusSize) PORT MAP (
        count => dmaCountIn,
        startAddress => addressRegOut, --
        readStep => inputSize,
        internalBus => internalBus,
        ramDataInBus => ramDataInBus,
        ramRead => ramRead,
        ramWrite => ramWrite,
        ramDataOutBus => ramDataOutBus,
        MFC => MFC,
        load => dmaLoad,
        initCounter => dmaInitCounter,
        initAddress => dmaInitAddress,
        clk => clk,
        finishedReading => dmaFinishOneRead,
        finishedOneRead => dmaFinishAll
    );

    baseAddressCounter: entity work.Counter generic map (addressSize) port map (
        load => addressRegIn, -- TODO: set here the value BASE_ADDRESS,,,, think again here
        isLoad => resetAddressReg,
        reset => '0', -- reset is always 0, when I need to reset I enable writing(isLoad) and put BASE_ADDRESS(constant value) to data in
        clk => "or"("and"(incBaseAddress, clk),"and"(resetAddressReg, "not"(clk))), -- only count when i set inc signal and count after rising edge
        count => addressRegOut
    );

    aluNumberCounter: entity work.Counter generic map (3) port map (
        load => (others => '0'), -- we don't need this functionality
        isLoad => '0', -- we don't need this functionality
        reset => resetUnitNumberReg, -- reset is always 0, when I need to reset I enable writing(isLoad) and put BASE_ADDRESS(constant value) to data in
        clk => "AND"(clk,incUnitNumber), -- only count when i set inc signal, count after rinsing edge to let CNN controller read the value first and then inc
        count => unitRegOut
    );

    IOLogicCnt: PROCESS(currentState, loadWord, loadNextWordList, dmaFinishOneRead,dmaFinishAll)
    BEGIN
        CASE currentState IS
            WHEN switchState =>
                -- reset the baseAddressRegister to RamBaseAddress value
                dmaLoad <= '0';
                resetAddressReg <= '1'; -- open the reset register to enable writing..
                addressRegIn <= ramBasedAddress; -- ..and put the base value to it
                resetUnitNumberReg <= '1';

                -- transition logic
                stateRegEn <= '1'; -- to go to init state
                nextState <= idleState;

            WHEN idleState =>
                -- reset all cnt signals you have
                dmaLoad <= '0';
                dmaInitCounter <= '0';
                dmaInitAddress <= '0';
                resetAddressReg <= '0';
                incBaseAddress <= '0';
                resetUnitNumberReg <= '0';
                incUnitNumber <= '0';

                -- transition logic
                stateRegEn <= load; -- to go to init state
                nextState <= initState;

            
            WHEN initState =>
                dmaInitCounter <= '1';
                IF loadNextWordList = '1' THEN
                    dmaCountIn <= filterSize;
                    incBaseAddress <= '1'; -- 
                    dmaInitAddress <= '1'; -- dmaReg(startAddress) = baseAddressReg(windowBaseAddress)
                ELSIF loadWord = '1' THEN
                    dmaCountIn <= (0 => '1', others => '0'); -- TODO: check the syntax to set it to "0000000000001"
                ELSE
                    -- TODO: print error message here
                    nextState <= idleState;
                    stateRegEn <= '1';
                END IF;

                -- transition logic
                stateRegEn <= '1'; -- go to fetch state
                nextState <= fetchState; -- always take one cycle and doesn't depend on anything
                
            WHEN fetchState =>
                dmaLoad <= '1';
                stateRegEn <= dmaFinishAll; -- still in the same state till finishing all
                readFinal <= dmaFinishAll;
                nextState <= idleState;
                IF dmaFinishOneRead = '1' THEN
                    incUnitNumber <= '1';
                ELSE
                    incUnitNumber <= '0';
                END IF;
        END CASE;
    END PROCESS;


    -- Process to save state and change to next state when enable = 1
    PROCESS(nextState,clk, stateRegEn, resetState, switchRam)
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