-- writelogic is responsible for:
--    * read word
--    * read window
-- 
-- 
-- 
-- 
-- 
-- onreceiving mfc -> inc unitnumber by one
-- 
-- 
-- optimizations:
--      1- we don't need extra signals of switch state and reset, make the load of the counter => rambaseaddress and the isload => switchram signal ==> remove all logic of switch ram but keep only when you get switch ram enforce to go to idle like if you have reset 
-- 
--      2- for the state we inc base address counter in, we can inject this increment in the first fetch state and save one cycle

library ieee ;
    use ieee.std_logic_1164.all ;
    use ieee.numeric_std.all ;
use work.constants.all;



entity writelogiccnn is
generic (
    addresssize: integer := 16;
    internalbussize: integer := 16
  );
  port (
    clk: in std_logic; -- system clock

    resetstate: in std_logic; -- signal to reset state to idle state
    switchram: in std_logic; -- signal to switch the ram base address of the reg
    rambasedaddress: in std_logic_vector(addresssize-1 downto 0); -- data  set when switchram is active

    
    -- dma interface: pass it to dma
    internalbus: in std_logic_vector(internalbussize-1 downto 0);
    ramwrite: out std_logic; --
    ramdataoutbus: out std_logic_vector(internalbussize-1 downto 0);
    ramaddress: out std_logic_vector(addresssize-1 downto 0); 
    mfc: in std_logic;

    -- config
    outputsize: in std_logic_vector(addresssize-1 downto 0);
    
    
    -- input cnt signals
    write: in std_logic; -- signal to take the data at internal bus and put it into the ram in the next write address
    finishfilter: in std_logic;

    -- output cnt signals
    -- writedone: out std_logic; -- output signal set when all the write is done
    writedoneone: out std_logic
  );
end writelogiccnn arch; 

architecture writelogiccnnarch of writelogiccnn is


-- fsm
type fsm is (
    idlestate,
    switchstate,
    initstate,
    incstate,
    writestate
); -- (idle, reset all signals), (switch, state to reset the addressreg with ram base address), (init, initialize the dma), (inc, increment the counter of the baseaddress), (fetch, fetch the data from dma)
signal currentstate, nextstate: fsm; -- state reg output and input (hold the state info)



signal dmacountin: std_logic_vector(maximagesize-1 downto 0);
signal addressregout, addressregin, addressreginfinal: std_logic_vector(addresssize-1 downto 0); -- two signals of the baseregister (windowbaseaddress, filterbaseaddress)


-- internal cnt signals
signal
    stateregen, -- set when you want to go from current state to next state

    -- input cnt signals from dma
    dmafinishonewrite,
    dmafinishall,
    -- output cnt signals
    dmawrite,
    dmainitcounter,
    dmainitaddress,
    resetaddressreg,
    incbaseaddress -- mean => windowbaseaddress += 1
: std_logic;

-- after compiling with 93
signal baseaddresscounterclk, internalramwrite: std_logic;
signal internalramaddress, ramaddresskeeperout, ramaddresskeeperoutplus1, zeros: std_logic_vector(addresssize -1 downto 0);
begin
    zeros <= (others => '0');
    ramaddress <= internalramaddress;
    ramwrite <= internalramwrite;
    -- after compiling with 93 mapping
    baseaddresscounterclk <= (clk and incbaseaddress) or (resetaddressreg and (not clk));
    --clk => "or"("and"(incbaseaddress, clk),"and"(resetaddressreg, "not"(clk))) -- only count when i set inc signal and count after rising edge

    -- mapping from internal signals to output port
    -- todo: should be removed and bind these port signals directly
    -- writedone <= dmafinishall;
    writedoneone <= dmafinishonewrite;

    resetaddressreg <= '1' when currentstate = switchstate else finishfilter;
    ramaddresskeeper: entity work.regcnn generic map (addresssize) port map (
        internalramaddress,
        internalramwrite, clk, '0',
        ramaddresskeeperout
    );
    -- alunumber <= unitregout;
    dma: entity work.writedmacnn generic map(addresssize, internalbussize) port map (
        counter => dmacountin,
        writebaseaddress => addressregout, --
        writestep => outputsize,
        internalbus => internalbus,
        ramdataoutbus => ramdataoutbus,
        ramwrite => internalramwrite,
        mfc => mfc,
        writetoram => dmawrite,
        initcounter => dmainitcounter,
        initaddress => dmainitaddress,
        clk => clk,
        writecomplete => dmafinishall,
        writecompleteoneout => dmafinishonewrite,
        ramwriteaddress=>internalramaddress
    );

    ramaddressincrement: entity work.nbitaddercnn generic map(addresssize) port map (
        ramaddresskeeperout, zeros, '1', ramaddresskeeperoutplus1
    );
    baseaddressloadmux: entity work.mux2cnn generic map(addresssize) port map(
      a => addressregin,
      b => ramaddresskeeperoutplus1,
      s => finishfilter,
      c => addressreginfinal
    );
    baseaddresscounter: entity work.counter2cnn generic map (addresssize) port map (
        load => addressreginfinal, -- todo: set here the value base_address,,,, think again here
        isload => resetaddressreg,
        reset => '0', -- reset is always 0, when i need to reset i enable writing(isload) and put base_address(constant value) to data in
        clk => baseaddresscounterclk, -- only count when i set inc signal and count after rising edge
        -- clk => "and"(clk, "or"(resetaddressreg, incbaseaddress)), -- only count when i set inc signal and count after rising edge
        count => addressregout
    );

  
    iologiccnt: process(currentstate, write, dmafinishall, rambasedaddress, outputsize)
    begin
        dmawrite <= '0';
        dmainitcounter <= '0';
        dmainitaddress <= '0';
        -- resetaddressreg <= '0';
        incbaseaddress <= '0';
        dmacountin<=(others=>'0');
        addressregin<= (others => '0');
        nextstate <= idlestate;
        
        case currentstate is
            when switchstate =>
                -- reset all cnt signals you have
                dmawrite <= '0';
                dmainitcounter <= '0';
                dmainitaddress <= '0';
                -- resetaddressreg <= '0';
                incbaseaddress <= '0';
                dmacountin<=(others=>'0');

                -- reset the baseaddressregister to rambaseaddress value
                dmawrite <= '0';
                -- resetaddressreg <= '1'; -- open the reset register to enable writing..
                addressregin <= rambasedaddress; -- ..and put the base value to it

                -- transition logic
                stateregen <= '1'; -- to go to init state
                nextstate <= idlestate;

            when idlestate =>
                -- reset all cnt signals you have
                dmawrite <= '0';
                dmainitcounter <= '0';
                dmainitaddress <= '0';
                -- resetaddressreg <= '0';
                incbaseaddress <= '0';
                dmacountin<=(others=>'0');
                addressregin <= (others => '0');
                -- transition logic
                stateregen <= write; -- to go to init state
                nextstate <= initstate;

            
            when initstate =>
                -- reset all cnt signals you have
                dmawrite <= '0';
                dmainitcounter <= '0';
                dmainitaddress <= '0';
                -- resetaddressreg <= '0';
                incbaseaddress <= '0';
                addressregin<= (others => '0');


                dmainitcounter <= '1';
                dmainitaddress <= '1'; -- dmareg(startaddress) = baseaddressreg(windowbaseaddress)
                dmacountin <= outputsize(maximagesize-1 downto 0);
                
                -- transition logic
                nextstate <= incstate; -- transition logic
                stateregen <= '1'; -- always go to nextstate (inc or fetch)

            when incstate =>
                -- reset all cnt signals you have
                dmawrite <= '0';
                dmainitcounter <= '0';
                dmainitaddress <= '0';
                -- resetaddressreg <= '0';
                incbaseaddress <= '0';
                dmacountin<=(others=>'0');
                addressregin<= (others => '0');

                incbaseaddress <= '1'; -- 
                -- transition logic
                stateregen <= '1'; -- always go to fetch state
                nextstate <= writestate; -- always take one cycle and doesn't depend on anything
                
            when writestate =>
                -- reset all cnt signals you have
                dmawrite <= '0';
                dmainitcounter <= '0';
                dmainitaddress <= '0';
                -- resetaddressreg <= '0';
                incbaseaddress <= '0';
                dmacountin<=(others=>'0');
                addressregin<= (others => '0');

                dmawrite <= write;
                stateregen <= dmafinishall; -- still in the same state till finishing all
                -- readfinal <= dmafinishall;
                nextstate <= idlestate;

            when others =>
                dmawrite <= '0';
                dmainitcounter <= '0';
                dmainitaddress <= '0';
                -- resetaddressreg <= '0';
                incbaseaddress <= '0';
                dmacountin<=(others=>'0');
                addressregin <= (others => '0');
                nextstate <= idlestate;
        end case;
    end process;


    -- process to save state and change to next state when enable = 1
    process(clk, resetstate)
        begin
        if resetstate ='1' then -- if reset is equal to 1 set current state to idle state (0)
            currentstate <= idlestate;
        elsif falling_edge(clk) then -- change value only when enable = 1 and rising edge
            if switchram ='1' then
                currentstate <= switchstate;
            elsif stateregen='1' then
                currentstate <= nextstate;
            end if;
        end if;
    end process;


end architecture;
