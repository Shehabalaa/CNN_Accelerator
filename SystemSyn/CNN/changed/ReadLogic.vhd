library ieee ;
    use ieee.std_logic_1164.all ;
    use ieee.numeric_std.all ;
use work.constants.all;



entity readlogiccnn is
  generic (
    addresssize: integer := 16;
    internalbussize: integer := 16;
    gisfilter: boolean := false

  );
  port (
    clk: in std_logic; -- system clock

    resetstate: in std_logic; -- signal to reset state to idle state
    switchram: in std_logic; -- signal to switch the ram base address of the reg
    -- todo:? can this address sent in internal bus
    rambasedaddress: in std_logic_vector(addresssize-1 downto 0); -- data set when switchram is active

    
    -- dma interface: pass it to dma
    internalbus: out std_logic_vector(internalbussize-1 downto 0);
    ramdatainbus: in std_logic_vector(internalbussize-1 downto 0);
    ramread: out std_logic; --
    -- ramdataoutbus: out std_logic_vector(weightsbussize-1 downto 0);
    ramaddress: out std_logic_vector(addresssize-1 downto 0) ;
    mfc: in std_logic;

    -- config
    inputsize: in std_logic_vector(addresssize-1 downto 0);
    filtersize: in std_logic_vector(addresssize-1 downto 0);
    
    -- input cnt signals
    loadnextwordlist: in std_logic; -- signal to specify to me to start reading the filter, here we keep track of the next address to read from
    loadword: in std_logic; -- same as above but for one row
    finishslice: in std_logic;
    -- output cnt signals
    readone: out std_logic; -- output signal set when one row when loading window is available on internal buses
    readfinal: out std_logic-- // // // // when final input is available on the internal data bus
  );
end readlogiccnn arch; 

architecture readlogiccnnarch of readlogiccnn is


-- fsm
type fsm is (
    idlestate,
    switchstate,
    incfetchstate,
    fetchstate
); -- (idle, reset all signals), (switch, state to reset the addressreg with ram base address), (init, initialize the dma), (inc, increment the counter of the baseaddress), (fetch, fetch the data from dma)
signal currentstate, nextstate: fsm; -- state reg output and input (hold the state info)

-- helper signals:
signal load: std_logic;


signal dmacountin: std_logic_vector(2 downto 0);
signal addressregout, addressregin, addressreginfinal: std_logic_vector(addresssize-1 downto 0); -- two signals of the baseregister (windowbaseaddress, filterbaseaddress)

signal unitregout: std_logic_vector(2 downto 0); -- unit reg output (we don't need to init with special value, so we don't have input)

-- internal cnt signals
signal
    stateregen, -- set when you want to go from current state to next state

    -- input cnt signals from dma
    dmafinishoneread,
    dmafinishall,
    -- output cnt signals
    dmaload,
    dmainitcounter,
    dmainitaddress,
    dmainitrambaseaddress, -- init dmacnn from rambasedaddress (the signal in this entity port) 
    resetaddressreg,
    incbaseaddress, -- mean => windowbaseaddress += 1
    resetunitnumberreg,
    incunitnumber -- mean => unitnumber += 1
: std_logic;

-- after compiling with 93
signal baseaddresscounterclk, notclk: std_logic;
signal dmareadbaseaddress: std_logic_vector(addresssize-1 downto 0);
signal internalramaddress, ramaddresskeeperout, ramaddresskeeperoutplusfs: std_logic_vector(addresssize -1 downto 0);
signal internalramread: std_logic;
begin
    ramaddress <= internalramaddress;
    ramread <= internalramread;
    -- to compile with 93
    baseaddresscounterclk <= clk and (incbaseaddress or resetaddressreg); -- (clk and incbaseaddress) or (resetaddressreg and clk);
    -- alunumbercounterclk <= (not(clk) and incunitnumber) or (resetunitnumberreg and clk);
    -- alunumbercounterclk <=  ( incunitnumber or resetunitnumberreg) when rising_edge(clk);
    -- "or"("and"(incunitnumber, clk),"and"(resetunitnumberreg, clk))
    -- "or"("and"(incbaseaddress, clk),"and"(resetaddressreg, "not"(clk)))
    notclk <= not clk;

    dmareadbaseaddressmux: entity work.mux2cnn generic map (addresssize) port map (
        a => addressregout,
        b => rambasedaddress,
        s => dmainitrambaseaddress,
        c => dmareadbaseaddress
    );
    -- define helper signals
    load <= loadnextwordlist or loadword;
    -- end define helper signals

    -- mapping from internal signals to output port
    -- todo: should be removed and bind these port signals directly
    readfinal <= dmafinishall;
    readone <= dmafinishoneread;

    dma: entity work.dmacnn generic map(addresssize, internalbussize) port map (
        initialcount => dmacountin,
        readbaseaddress => dmareadbaseaddress, --
        readstep => inputsize,
        internalbus => internalbus,
        ramdatainbus => ramdatainbus,
        ramread => internalramread,
        ramreadaddress => internalramaddress,
        mfc => mfc,
        load => dmaload,
        initcounter => dmainitcounter,
        initaddress => dmainitaddress,
        clk => clk,
        finishedreading => dmafinishall,
        finishedonereadout => dmafinishoneread
    );
    window_g: if gisfilter = false generate
        ramaddressincrement: entity work.nbitaddercnn generic map(addresssize) port map (
            ramaddresskeeperout, filtersize, '0', ramaddresskeeperoutplusfs
        );
        baseaddressloadmux: entity work.mux2cnn generic map(addresssize) port map(
            a => addressregin,
            b => ramaddresskeeperoutplusfs,
            s => finishslice,
            c => addressreginfinal
        );
        baseaddresscounter: entity work.counter2cnn generic map (addresssize) port map (
            load => addressreginfinal, -- todo: set here the value base_address,,,, think again here
            isload => resetaddressreg,
            reset => '0', -- reset is always 0, when i need to reset i enable writing(isload) and put base_address(constant value) to data in
            clk => baseaddresscounterclk,-- only count when i set inc signal and count after rising edge
            -- clk => "and"(clk, "or"(resetaddressreg, incbaseaddress)), -- only count when i set inc signal and count after rising edge
            count => addressregout
        );
        resetaddressreg <= '1' when currentstate = switchstate else finishslice;
        ramaddresskeeper: entity work.regcnn generic map (addresssize) port map (
            internalramaddress,
            internalramread, clk, '0',
            ramaddresskeeperout
        );
    end generate window_g;
    -- filter_g: if gisfilter generate
    --     resetaddressreg <= '1' when currentstate = switchstate else '0';
    -- end generate filter_g;

    iologiccnt: process(currentstate, loadword, loadnextwordlist, load, dmafinishoneread, dmafinishall, rambasedaddress, filtersize)--, clk)
    begin
        dmaload <= '0';
        dmainitcounter <= '0';
        dmainitaddress <= '0';
        -- resetaddressreg <= '0';
        incbaseaddress <= '0';
        resetunitnumberreg <= '0';
        incunitnumber <= '0';
        dmainitrambaseaddress <= '0';
        dmacountin <= (others => '0');
        addressregin<= (others => '0');

        case currentstate is
            when switchstate =>
                -- reset all cnt signals you have
                dmaload <= '0';
                dmainitcounter <= '0';
                dmainitaddress <= '0';
                -- resetaddressreg <= '0';
                incbaseaddress <= '0';
                resetunitnumberreg <= '0';
                incunitnumber <= '0';
                dmainitrambaseaddress <= '0';
                dmacountin <= (others => '0');

                -- reset the baseaddressregister to rambaseaddress value
                if gisfilter then
                    dmainitrambaseaddress <= '1';
                else
                    dmainitrambaseaddress <= '0';
                end if;
                dmainitaddress <= '1'; -- dmareg(startaddress) = baseaddressreg(windowbaseaddress)
                -- resetaddressreg <= '1'; -- open the reset register to enable writing..
                addressregin <= rambasedaddress; -- ..and put the base value to it
                resetunitnumberreg <= '1';
                -- unitregout <= (others => '0');

                -- transition logic
                stateregen <= '1'; -- to go to init state
                nextstate <= idlestate;

            when idlestate => -- init when load
                -- reset all cnt signals you have
                dmaload <= '0';
                dmainitcounter <= '0';
                dmainitaddress <= '0';
                -- resetaddressreg <= '0';
                incbaseaddress <= '0';
                -- resetunitnumberreg <= '0';
                incunitnumber <= '0';
                dmainitrambaseaddress <= '0';
                addressregin <= (others => '0');
                resetunitnumberreg <= '1';


                dmainitcounter <= load;
                stateregen <= load;
                if loadnextwordlist = '1' then
                    nextstate <= incfetchstate; -- transition logic
                    -- resetunitnumberreg <= '1';
                    if gisfilter = false then
                        -- i am window
                        nextstate <= incfetchstate; -- transition logic
                        dmainitaddress <= '1'; -- dmareg(startaddress) = baseaddressreg(windowbaseaddress)
                    else
                        -- i am filter
                        nextstate <= fetchstate;
                        dmainitaddress <= '0';
                    end if;
                    dmacountin <= filtersize(2 downto 0);
                -- todo: optimization -> remove elseif and make it else, it is impossible to be here and the two loads signals is 0 
                elsif loadword = '1' then
                    nextstate <= fetchstate; -- transition logic
                    dmacountin <= (0 => '1', others => '0'); -- todo: check the syntax to set it to "0000000000001"
                else
                    dmacountin <= (others => '0');
                    nextstate <= idlestate;
                end if;

            when incfetchstate =>
                -- reset all cnt signals you have
                dmaload <= '0';
                dmainitcounter <= '0';
                dmainitaddress <= '0';
                -- resetaddressreg <= '0';
                incbaseaddress <= '0';
                resetunitnumberreg <= '0';
                incunitnumber <= '0';
                dmainitrambaseaddress <= '0';
                dmacountin<= (others => '0');
                addressregin<=(others=>'0');

                -- fetch, handle unit number only if loadnextwordlist
                dmaload <= '1';
                incunitnumber <= dmafinishoneread and loadnextwordlist;

                -- increment
                incbaseaddress <= '1'; -- 

                -- transition logic
                stateregen <= '1'; -- always go to fetch state
                nextstate <= fetchstate; -- always take one cycle and doesn't depend on anything
            when fetchstate =>
                -- reset all cnt signals you have
                dmaload <= '0';
                dmainitcounter <= '0';
                dmainitaddress <= '0';
                -- resetaddressreg <= '0';
                incbaseaddress <= '0';
                resetunitnumberreg <= '0';
                incunitnumber <= '0';
                dmainitrambaseaddress <= '0';
                dmacountin<= (others => '0');
                addressregin<=(others=>'0');

                dmaload <= '1';
                stateregen <= dmafinishall; -- still in the same state till finishing all
                -- readfinal <= dmafinishall;
                nextstate <= idlestate;
                if dmafinishoneread = '1' and loadnextwordlist = '1' then
                    incunitnumber <= '1';
                else
                    incunitnumber <= '0';
                end if;
            when others =>
                dmacountin <= (others => '0');--added new
                dmaload <= '0';
                dmainitcounter <= '0';
                dmainitaddress <= '0';
                -- resetaddressreg <= '0';
                incbaseaddress <= '0';
                resetunitnumberreg <= '0';
                incunitnumber <= '0';
                dmainitrambaseaddress <= '0';
                addressregin<=(others=>'0');
        end case;
    end process;


    -- process to save state and change to next state when enable = 1
    process(clk, switchram, resetstate)
        begin
        if resetstate ='1' then -- if reset is equal to 1 set current state to idle state (0)
            currentstate <= idlestate;
        elsif switchram ='1' then
            currentstate <= switchstate;
        elsif falling_edge(clk) then -- change value only when enable = 1 and rising edge
            -- if switchram ='1' then
            --     currentstate <= switchstate;
            if stateregen='1' then
                currentstate <= nextstate;
            end if;
        end if;
    end process;


end architecture;