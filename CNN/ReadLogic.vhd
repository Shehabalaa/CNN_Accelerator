library ieee ;
    use ieee.std_logic_1164.all ;
    use ieee.numeric_std.all ;
use work.Constants.all;



ENTITY ReadLogic IS
  GENERIC (
    addressSize: INTEGER := 16;
    internalBusSize: INTEGER := 16;
    gIsFilter: BOOLEAN := false

  );
  port (
    clk: IN STD_LOGIC; -- System clock

    resetState: IN STD_LOGIC; -- Signal to reset State to idle state
    switchRam: IN STD_LOGIC; -- Signal to switch the ram base address of the reg
    -- TODO:? can this address sent in internal bus
    ramBasedAddress: IN STD_LOGIC_VECTOR(addressSize-1 downto 0); -- Data set when switchRam is active

    
    -- DMA interface: pass it to dma
    internalBus: out STD_LOGIC_VECTOR(internalBusSize-1 DOWNTO 0);
    ramDataInBus: IN STD_LOGIC_VECTOR(internalBusSize-1 DOWNTO 0);
    ramRead: OUT STD_LOGIC; --
    -- ramDataOutBus: OUT STD_LOGIC_VECTOR(weightsBusSize-1 DOWNTO 0);
    ramAddress: OUT std_logic_vector(addressSize-1 downto 0) ;
    MFC: IN STD_LOGIC;

    -- CONFIG
    inputSize: IN STD_LOGIC_VECTOR(addressSize-1 downto 0);
    filterSize: IN STD_LOGIC_VECTOR(addressSize-1 downto 0);
    isFilter: IN STD_LOGIC;
    
    -- input cnt signals
    loadNextWordList: IN STD_LOGIC; -- signal to specify to me to start reading the filter, here we keep track of the next address to read from
    loadWord: IN STD_LOGIC; -- same as above but for one row
    -- output cnt signals
    readOne: OUT STD_LOGIC; -- output signal set when one row when loading window is available on internal buses
    readFinal: OUT STD_LOGIC;-- // // // // when final input is available on the internal data bus
    aluNumber: OUT STD_LOGIC_VECTOR(2 downto 0) -- 5 bits to say where to set the data within which ALU
  );
END ReadLogic ; 

ARCHITECTURE ReadLogicArch OF ReadLogic IS


-- FSM
TYPE FSM IS (
    idleState,
    switchState,
    incFetchState,
    fetchState
); -- (idle, reset all signals), (switch, state to reset the addressReg with ram base address), (init, initialize the dma), (inc, increment the counter of the baseAddress), (fetch, fetch the data from dma)
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
    dmaInitRamBaseAddress, -- init dma from ramBasedAddress (the signal in this entity port) 
    resetAddressReg,
    incBaseAddress, -- mean => windowBaseAddress += 1
    resetUnitNumberReg,
    incUnitNumber -- mean => unitNumber += 1
: STD_LOGIC;

-- after compiling with 93
SIGNAL baseAddressCounterClk, aluNumberCounterClk: STD_LOGIC;
SIGNAL dmaReadBaseAddress: STD_LOGIC_VECTOR(addressSize-1 downto 0);
SIGNAL zerosSignal: STD_LOGIC_VECTOR(2 DOWNTO 0);
BEGIN
    zerosSignal <= (others => '0');
    -- to compile with 93
    baseAddressCounterClk <= (clk AND incBaseAddress) OR (resetAddressReg AND (not clk));
    -- aluNumberCounterClk <= (not(clk) AND incUnitNumber) OR (resetUnitNumberReg AND clk);
    aluNumberCounterClk <= ( incUnitNumber) OR (resetAddressReg AND (not clk));
    -- aluNumberCounterClk <=  ( incUnitNumber OR resetUnitNumberReg) WHEN rising_edge(clk);
    -- "or"("and"(incUnitNumber, clk),"and"(resetUnitNumberReg, clk))
    -- "or"("and"(incBaseAddress, clk),"and"(resetAddressReg, "not"(clk)))

    dmaReadBaseAddressMux: ENTITY work.MUX2 GENERIC MAP (addressSize) PORT MAP (
        A => addressRegOut,
        B => ramBasedAddress,
        S => dmaInitRamBaseAddress,
        C => dmaReadBaseAddress
    );
    -- define helper signals
    load <= loadNextWordList OR loadWord;
    -- end define helper signals

    -- mapping from internal signals to output port
    -- TODO: should be removed and bind these port signals directly
    readFinal <= dmaFinishAll;
    readOne <= dmaFinishOneRead;
    aluNumber <= unitRegOut;

    dma: ENTITY work.DMA GENERIC MAP(addressSize, internalBusSize) PORT MAP (
        initialCount => dmaCountIn,
        readBaseAddress => dmaReadBaseAddress, --
        readStep => inputSize,
        internalBus => internalBus,
        ramDataInBus => ramDataInBus,
        ramRead => ramRead,
        ramReadAddress => ramAddress,
        MFC => MFC,
        load => dmaLoad,
        initCounter => dmaInitCounter,
        initAddress => dmaInitAddress,
        clk => clk,
        finishedReading => dmaFinishAll,
        finishedOneRead => dmaFinishOneRead
    );


    Normal_g: if gIsFilter = false generate
    baseAddressCounter: entity work.Counter2 generic map (addressSize) port map (
        load => addressRegIn, -- TODO: set here the value BASE_ADDRESS,,,, think again here
        isLoad => resetAddressReg,
        reset => '0', -- reset is always 0, when I need to reset I enable writing(isLoad) and put BASE_ADDRESS(constant value) to data in
        clk => baseAddressCounterClk,-- only count when i set inc signal and count after rising edge
        -- clk => "and"(clk, "or"(resetAddressReg, incBaseAddress)), -- only count when i set inc signal and count after rising edge
        count => addressRegOut
    );
    END GENERATE Normal_g;


    aluNumberCounter: entity work.Counter2 generic map (3) port map (
        load => zerosSignal, -- we don't need this functionality
        isLoad => '0', -- we don't need this functionality
        reset => resetUnitNumberReg, -- reset is always 0, when I need to reset I enable writing(isLoad) and put BASE_ADDRESS(constant value) to data in
        -- clk => "AND"(clk, "or"(incUnitNumber, resetUnitNumberReg)), -- only count when i set inc signal, count after rinsing edge to let CNN controller read the value first and then inc
        clk => aluNumberCounterClk,
        count => unitRegOut
    );

    IOLogicCnt: PROCESS(currentState, loadWord, loadNextWordList, load, dmaFinishOneRead, dmaFinishAll, ramBasedAddress, filterSize, clk)
    BEGIN
        dmaLoad <= '0';
        dmaInitCounter <= '0';
        dmaInitAddress <= '0';
        resetAddressReg <= '0';
        incBaseAddress <= '0';
        resetUnitNumberReg <= '0';
        incUnitNumber <= '0';
        dmaInitRamBaseAddress <= '0';
        dmaCountIn <= (others => '0');
        addressRegIn<= (others => '0');

        CASE currentState IS
            WHEN switchState =>
                -- reset all cnt signals you have
                dmaLoad <= '0';
                dmaInitCounter <= '0';
                dmaInitAddress <= '0';
                resetAddressReg <= '0';
                incBaseAddress <= '0';
                resetUnitNumberReg <= '0';
                incUnitNumber <= '0';
                dmaInitRamBaseAddress <= '0';
                dmaCountIn <= (others => '0');

                -- reset the baseAddressRegister to RamBaseAddress value
                IF gIsFilter THEN
                    dmaInitRamBaseAddress <= '1';
                ELSE
                    dmaInitRamBaseAddress <= '0';
                END IF;
                dmaInitAddress <= '1'; -- dmaReg(startAddress) = baseAddressReg(windowBaseAddress)
                resetAddressReg <= '1'; -- open the reset register to enable writing..
                addressRegIn <= ramBasedAddress; -- ..and put the base value to it
                resetUnitNumberReg <= '1';
                -- unitRegOut <= (others => '0');

                -- transition logic
                stateRegEn <= '1'; -- to go to init state
                nextState <= idleState;

            WHEN idleState => -- init when load
                -- reset all cnt signals you have
                dmaLoad <= '0';
                dmaInitCounter <= '0';
                dmaInitAddress <= '0';
                resetAddressReg <= '0';
                incBaseAddress <= '0';
                resetUnitNumberReg <= '0';
                incUnitNumber <= '0';
                dmaInitRamBaseAddress <= '0';
                addressRegIn <= (others => '0');


                dmaInitCounter <= load;
                stateRegEn <= load;
                IF loadNextWordList = '1' THEN
                    nextState <= incFetchState; -- transition logic
                    resetUnitNumberReg <= '1';
                    if gIsFilter = false THEN
                        -- i am window
                        nextState <= incFetchState; -- transition logic
                        dmaInitAddress <= '1'; -- dmaReg(startAddress) = baseAddressReg(windowBaseAddress)
                    ELSE
                        -- i am filter
                        nextState <= fetchState;
                        dmaInitAddress <= '0';
                    END IF;
                    dmaCountIn <= filterSize(2 DOWNTO 0);
                -- TODO: optimization -> remove elseif and make it else, it is impossible to be here and the two loads signals is 0 
                ELSIF loadWord = '1' THEN
                    nextState <= fetchState; -- transition logic
                    dmaCountIn <= (0 => '1', others => '0'); -- TODO: check the syntax to set it to "0000000000001"
                ELSE
                    dmaCountIn <= (others => '0');
                    nextState <= idleState;
                END IF;

            WHEN incFetchState =>
                -- reset all cnt signals you have
                dmaLoad <= '0';
                dmaInitCounter <= '0';
                dmaInitAddress <= '0';
                resetAddressReg <= '0';
                incBaseAddress <= '0';
                resetUnitNumberReg <= '0';
                incUnitNumber <= '0';
                dmaInitRamBaseAddress <= '0';
                dmaCountIn<= (others => '0');
                addressRegIn<=(others=>'0');

                -- fetch, handle unit number only if loadNextWordList
                dmaLoad <= '1';
                incUnitNumber <= dmaFinishOneRead AND loadNextWordList;

                -- increment
                incBaseAddress <= '1'; -- 

                -- transition logic
                stateRegEn <= '1'; -- always go to fetch state
                nextState <= fetchState; -- always take one cycle and doesn't depend on anything
            WHEN fetchState =>
                -- reset all cnt signals you have
                dmaLoad <= '0';
                dmaInitCounter <= '0';
                dmaInitAddress <= '0';
                resetAddressReg <= '0';
                incBaseAddress <= '0';
                resetUnitNumberReg <= '0';
                incUnitNumber <= '0';
                dmaInitRamBaseAddress <= '0';
                dmaCountIn<= (others => '0');
                addressRegIn<=(others=>'0');

                dmaLoad <= '1';
                stateRegEn <= dmaFinishAll; -- still in the same state till finishing all
                -- readFinal <= dmaFinishAll;
                nextState <= idleState;
                IF dmaFinishOneRead = '1' AND loadNextWordList = '1' AND clk = '1' THEN
                    incUnitNumber <= '1';
                ELSE
                    incUnitNumber <= '0';
                END IF;
            when others =>
                dmaCountIn <= (others => '0');--added new
                dmaLoad <= '0';
                dmaInitCounter <= '0';
                dmaInitAddress <= '0';
                resetAddressReg <= '0';
                incBaseAddress <= '0';
                resetUnitNumberReg <= '0';
                incUnitNumber <= '0';
                dmaInitRamBaseAddress <= '0';
                addressRegIn<=(others=>'0');
        END CASE;
    END PROCESS;


    -- Process to save state and change to next state when enable = 1
    PROCESS(clk, resetState)
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