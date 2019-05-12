library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.types.all;

entity outputbuffercnn is
    generic(
        --windowbussize:integer:=16*5;
        weightsbussize:integer:=8*5;
        numregisters:integer :=22*22;
        windowsize:integer :=16;
        filtersize:integer :=8;
        registerselectorsize :integer :=9;
        filterdecimal: integer := 6
    );
    
    port(
        --windowbus: in std_logic_vector(windowbussize-1 downto 0);
        suminput: in std_logic_vector(windowsize-1 downto 0);
        weightsbus: in std_logic_vector(weightsbussize-1 downto 0);
        writebus: out std_logic_vector(windowsize-1 downto 0);
        allread:in std_logic;
        enabledecoder:in std_logic;      
        selectedregistermuxoutput:out std_logic_vector(windowsize-1 downto 0) ;
        clk:in std_logic;
        finishslice : in std_logic;
        resetregisters:in std_logic;
        tristateenable:in std_logic;
        counterenable: in std_logic;
        ispool: in std_logic
        --tristateoutput:out std_logic_vector(internalbussize-1 downto 0) ;
        --negativeorpositive:in std_logic
    );
end outputbuffercnn;


architecture outputbuffercnnarch of outputbuffercnn is
    signal decoderoutput:std_logic_vector(2**registerselectorsize-1 downto 0) ;
  --  signal andoutput:std_logic_vector(numregisters-1 downto 0) ;
    signal registeroutputs:arrayofregs16(0 to 511) ;
    signal inputregisters:arrayofregs16(0 to 511) ;
    signal relumuxoutuput:std_logic_vector(windowsize-1 downto 0) ;
    signal tempselectedregistermuxoutput:std_logic_vector(windowsize-1 downto 0) ;
    signal temptristateoutput:std_logic_vector(windowsize-1 downto 0) ;
    signal enableregister:std_logic_vector(2**registerselectorsize-1 downto 0) ;
    signal registerselector: std_logic_vector(registerselectorsize-1 downto 0) ;
    signal notclk: std_logic;
    signal resetcounter : std_logic;
    signal othersallread: std_logic_vector(2**registerselectorsize-1  downto 0);
    signal weightsinputmux: std_logic_vector(windowsize-1 downto 0);
    signal zeros:std_logic_vector(windowsize-1 downto 0);
    signal outtoram: std_logic_vector(windowsize-1 downto 0);
    signal isrelu: std_logic;
   -- constant zeros2:std_logic_vector(80-16-1 downto 0) :=(others =>'0');  --80-16
    
   begin
        selectedregistermuxoutput <= tempselectedregistermuxoutput;
        writebus <= temptristateoutput;
        zeros <= (others => '0');

        weightsinputmux(filtersize+1 downto filtersize-filterdecimal) <= weightsbus(filtersize-1 downto 0);
        weightsinputmux(filtersize-filterdecimal-1 downto 0) <= (others => '0');
        weightsinputmux(windowsize-1 downto filtersize+2) <= (others => weightsbus(filtersize-1));
        --windowbus(internalbussize-1-wordsize downto 0)<=(others =>'0');
        
        decoderlabel:entity work.decodercnn generic map(registerselectorsize) port map(
            t =>registerselector,
            en =>enabledecoder,
            decoded=>decoderoutput
        );
        
       
        loop1: for i in 0 to (numregisters -1)
        generate

        y: entity work.mux2cnn generic map(windowsize) port map(
            a=>suminput,
            b=>weightsinputmux,
            s=>allread,
            c=>inputregisters(i)
        );

        x:entity work.regcnn generic map(windowsize) port map(
            d=>inputregisters(i) ,--the input to the registers will be the left most word of the window bus
            en=>enableregister(i),
            clk=>clk,
            rst=>resetregisters,
            q=>registeroutputs(i)
        );
        end generate;
        
        selectedregistermux:entity work.muxcnn generic map(512) port map(
            inputs=>registeroutputs,
            selectionlines=>registerselector,
            output=>tempselectedregistermuxoutput
        );

        isrelu <= outtoram(windowsize-1) and not ispool;

        relumux:entity work.mux2cnn generic map(windowsize) port map(
          a=>outtoram,
          b=>zeros,
          s=>isrelu,
          c=> relumuxoutuput  
        );

        tristatebuffer:entity work.tristatecnn generic map(windowsize) port map(
            input=>relumuxoutuput,
            en=>tristateenable,
            output=>temptristateoutput
        );
        -- mai momkn others=>all read wa b3den n3ml decoderoutput or all read
        
        -- process(registerselector)
        -- begin
        --     loop1 : for i in 0 to 2**registerselectorsize-1 loop
        --         enableregister(i) <= decoderoutput(i) or allread; 
        --     end loop ; -- loop
           
        -- end process;

        othersallread <= (others => allread);

        enableregister <= decoderoutput or othersallread;

        notclk <= not clk;

        resetcounter <= finishslice or resetregisters;

        counterselector: entity work.countercnn generic map(registerselectorsize) port map(
            counterenable, resetcounter, notclk, registerselector
        );


        outputregmap: entity work.regcnn generic map(windowsize) port map(
            d=>suminput,
            en=>enabledecoder,
            clk=>clk,
            rst=>resetregisters,
            q=>outtoram
        );

    end architecture;