-- dma controller is responsible for:
--    * switch between two base addresses
--    * make two iologic, one for dealing with filter(weights) ram, and the other for dealing with window ram
-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- 


library ieee ;
use ieee.std_logic_1164.all ;
use ieee.numeric_std.all ;
use work.constants.all;


entity dmacontrollercnn is

  generic (
    weightsaddresssize: integer := 12;
    windowaddresssize: integer := 13;
    filtersize: integer := 8;
    windowsize: integer := 16;
    numunits: integer := 5 -- we have only five units, each unit contains 5 alu
  );
  port (
    -- clk, reset
    clk: in std_logic;
    reset: in std_logic;
    -- internal buses
    weightsinternalbus: out std_logic_vector((filtersize * numunits)-1 downto 0);
    windowinternalbus: out std_logic_vector((windowsize* numunits)-1 downto 0);
    writeinternalbus: in std_logic_vector(windowsize - 1 downto 0);
    
    -- two rams interface
    weightsramaddress: out std_logic_vector(weightsaddresssize-1 downto 0);
    windowramaddressread: out std_logic_vector(windowaddresssize-1 downto 0);
    windowramaddresswrite: out std_logic_vector(windowaddresssize-1 downto 0);
    weightsramdatainbus: in std_logic_vector((filtersize * numunits)-1 downto 0);
    windowramdatainbus: in std_logic_vector((windowsize * numunits)-1 downto 0);
    weightsramread: out std_logic; --
    windowramread: out std_logic; --
    windowramwrite: out std_logic; --
    windowramdataoutbus: out std_logic_vector(windowsize-1 downto 0);
    mfcwindowram: in std_logic;
    mfcweightsram: in std_logic;
    mfcwrite: in std_logic;

    -- input cnt signals
    loadnextfilter: in std_logic; -- signal to specify to me to start reading the filter, here we keep track of the next address to read from
    loadnextwindow: in std_logic; -- same as above but for window
    loadnextrow: in std_logic; -- same as above but for one row
    loadoneword: in std_logic; -- same as above but for read config from filter ram
    loadthreeword: in std_logic; -- same as above but for read config from filter ram
    filterfinished: in std_logic;
    slicefinished: in std_logic;
    layerfinished: in std_logic;
    layertype: in std_logic;
    write: in std_logic; -- signal to specify write the current data in internal bus

    -- config
    weightssizetype: in std_logic;
    inputsize: in std_logic_vector(windowaddresssize-1 downto 0);
    outputsize: in std_logic_vector(windowaddresssize-1 downto 0);
    windowrambaseaddress1, windowrambaseaddress2: in std_logic_vector(windowaddresssize-1 downto 0);
    filterrambaseaddress: in std_logic_vector(weightsaddresssize-1 downto 0);
    
    -- o.p cnt signals
    windowreadone: out std_logic; -- output signal set when one row when loading window is available on internal buses
    windowreadfinal: out std_logic; -- // // // // when final input is available on the internal data bus

    weightsreadone: out std_logic; -- output signal set when one row when loading window is available on internal buses
    weightsreadfinal: out std_logic; -- // // // // when final input is available on the internal data bus

    -- writedoneall: out std_logic;
    writedoneone: out std_logic
    
    -- filteralunumber: out std_logic_vector(2 downto 0); -- 5 bits to say where to set the data within which alu when fetching filter
    -- windowalunumber: out std_logic_vector(2 downto 0) -- 5 bits to say where to set the data within which alu when fetching window
  );
end dmacontrollercnn arch;

architecture dmacontrollercnnarch of dmacontrollercnn is

signal currentreadrambaseaddress, currentwriterambaseaddress: std_logic_vector(windowaddresssize-1 downto 0);
-- signal readlogicramaddress, writelogicramaddress: std_logic_vector(windowaddresssize-1 downto 0)حغح;
signal rambaseaddressselector: std_logic; -- 0 selects address1, 1 selects address 2
signal windowinternalbusrlogic: std_logic_vector((windowsize * numunits)-1 downto 0);
-- internal cnt signals
signal switchram: std_logic;
signal resetlogics: std_logic;
signal windowrlswitchram: std_logic;
signal weightssizeforwindow: std_logic_vector(windowaddresssize-1 downto 0);
signal weightssizeforfilter: std_logic_vector(weightsaddresssize-1 downto 0);

signal loadword: std_logic;
signal filterstep: std_logic_vector(weightsaddresssize-1 downto 0);
signal windowinternalbuswlogic: std_logic_vector(windowsize-1 downto 0);
signal writefinishfilter: std_logic;

-- signal zeros11: std_logic_vector(10 downto 0);
-- signal zeros10: std_logic_vector(9 downto 0);
-- signal zeros9: std_logic_vector(8 downto 0);

begin

    -- zeros11 <= "00000000000";
    -- zeros10 <= "0000000000";
    
    writefinishfilter <= filterfinished or (layertype and slicefinished);

    loadword <= loadoneword or loadthreeword;
    
    -- size = 12
    filterstep <= (0 => '1', others => '0') when loadoneword = '1'
    else (1 => '1', 0 => '1', others => '0') when loadthreeword = '1'
    else weightssizeforfilter;

    -- filterstep <= zeros11&'1' when loadoneword = '1'
    -- else zeros10&"11" when loadthreeword = '1'
    -- else weightssizeforfilter;

    -- size = 13
    -- map weightssizetype to bits
    weightssizeforwindow <= (0 => '1', 1 => '1', others => '0') when weightssizetype = '0' 
    else (0 => '1', 2 => '1', others => '0');

    -- weightssizeforwindow <= zeros11&"11" when weightssizetype = '0' 
    -- else zeros10&"101";

    -- size = 12
    -- weightssizeforfilter <= (0 => '1', 1 => '1', others => '0') when weightssizetype = '0'
    weightssizeforfilter <= std_logic_vector(to_unsigned(3, weightsaddresssize)) when weightssizetype = '0' 
    else (0 => '1', 2 => '1', others => '0');

    -- weightssizeforfilter <= zeros10&"11" when weightssizetype = '0' 
    -- else zeros9&"101";

    -- rambaseaddressselector <= '0' when reset = '1' else '1';
    switchram <= reset or layerfinished;
    windowrlswitchram <= switchram or filterfinished;
    resetlogics <= '0'; -- till now we always switch ram with reset
    readrammux: entity work.mux2cnn generic map(windowaddresssize) port map(
      a => windowrambaseaddress1,
      b => windowrambaseaddress2,
      s => rambaseaddressselector,
      c => currentreadrambaseaddress
    );
    writerammux: entity work.mux2cnn generic map(windowaddresssize) port map(
      a => windowrambaseaddress2,
      b => windowrambaseaddress1,
      s => rambaseaddressselector,
      c => currentwriterambaseaddress
    );

    -- mux to select which address should enter to the window ram, address from write or address from read
--    windowramaddressmux: entity work.mux2cnn generic map(windowaddresssize) port map(
--      a => readlogicramaddress,
--      b => writelogicramaddress,
--      s => write,
--      c => windowramaddress
--    );

    -- tristate for window internal bus
    readlogictri: entity work.tristatecnn generic map(windowsize * numunits) port map (
      input => windowinternalbusrlogic,
      output => windowinternalbus,
      en => '1'
    ); 
    writelogictri: entity work.tristatecnn generic map(windowsize) port map (
      input => writeinternalbus,
      output => windowinternalbuswlogic,
      en => '1'
    ); 

    windowreadlogicent: entity work.readlogiccnn generic map (windowaddresssize, (windowsize * numunits), false) port map (
      clk => clk,

      resetstate => resetlogics,
      switchram => windowrlswitchram,
      rambasedaddress => currentreadrambaseaddress,
      
      -- ram and internal bus
      internalbus => windowinternalbusrlogic,
      ramdatainbus => windowramdatainbus,
      ramread => windowramread,
      ramaddress => windowramaddressread,
      mfc => mfcwindowram,

      -- config
      inputsize => inputsize,
      filtersize => weightssizeforwindow,
      -- isfilter => '0',
      
      -- input cnt signals
      loadnextwordlist => loadnextwindow,
      loadword => loadnextrow,
      finishslice => slicefinished,
      -- output cnt signals
      readone => windowreadone,
      readfinal => windowreadfinal
    );

    filterreadlogicent: entity work.readlogiccnn generic map (weightsaddresssize, (filtersize * numunits), true) port map (
      clk => clk,

      resetstate => resetlogics,
      switchram => reset,
      rambasedaddress => filterrambaseaddress,
      
      -- dma interface => interface to dma
      internalbus => weightsinternalbus,
      ramdatainbus => weightsramdatainbus,
      ramread => weightsramread,
      ramaddress => weightsramaddress,
      mfc => mfcweightsram,

      -- config
      inputsize => filterstep,
      filtersize => weightssizeforfilter,
      -- isfilter => '1',
      
      -- input cnt signals
      loadnextwordlist => loadnextfilter,
      loadword => loadword,
      finishslice => '0',

      -- output cnt signals
      readone => weightsreadone,
      readfinal => weightsreadfinal
    );

    writelogicent: entity work.writelogiccnn generic map (windowaddresssize, windowsize) port map (
      clk => clk,

      resetstate => resetlogics,
      switchram => switchram,
      rambasedaddress => currentwriterambaseaddress,

      
      -- dma interface => interface to dma
      internalbus => windowinternalbuswlogic,
      ramwrite => windowramwrite,
      ramdataoutbus => windowramdataoutbus,
      ramaddress => windowramaddresswrite,
      mfc => mfcwrite,

      -- config
      outputsize => outputsize,
      
      
      -- input cnt signals
      write => write, -- signal to take the data at internal bus and put it into the ram in the next write address
      finishfilter => writefinishfilter, -- finishfilter || finishslice & pool
      -- output cnt signals
      -- writedone => writedoneall, -- output signal set when any write is done
      writedoneone => writedoneone -- output signal set when any write is done
    );
  

    switchbaseaddressproc: process(layerfinished,reset)
    begin
    if reset = '1' then
      rambaseaddressselector <= '0';
    elsif rising_edge(layerfinished) then --? todo: can be simplified to layerfinished = '1' without rising edge ?
      rambaseaddressselector <= not rambaseaddressselector;
      -- switchram <= '1';
    end if;
    end process switchbaseaddressproc; 


end architecture ; -- dmacontrollerarch