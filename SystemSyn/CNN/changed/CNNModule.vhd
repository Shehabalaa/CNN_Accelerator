library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


-- cnnmodule entity
-- this module contains all components of the cnn


entity cnnmodulecnn is
    generic (
        filtersize: integer := 8;
        windowsize: integer := 16;
        numunits: integer := 5;
        numrows: integer := 5;
        decodersize: integer := 3;
        weightsaddresssize: integer := 12;
        windowaddresssize: integer := 13
    );
    port (
        startcnn, clk, rst: in std_logic;
        
        -- two rams interface
        
        weightsramdatainbus: in std_logic_vector((filtersize * numunits)-1 downto 0);
        windowramdatainbus: in std_logic_vector((windowsize * numunits)-1 downto 0);
        mfcwindowram: in std_logic;
        mfcweightsram: in std_logic;
        mfcwrite: in std_logic;
        weightsramaddress: out std_logic_vector(weightsaddresssize-1 downto 0);
        windowramaddressread, windowramaddresswrite: out std_logic_vector(windowaddresssize-1 downto 0);
        weightsramread: out std_logic;
        windowramread: out std_logic;
        windowramwrite: out std_logic;
        windowramdataoutbus: out std_logic_vector(windowsize-1 downto 0);
        
        finishnetwork: out std_logic
    );
end cnnmodulecnn;

architecture cnnmodulecnnarch of cnnmodulecnn is
    
    --signal startproduct: std_logic;-- from control unit to cnn module to conv the dot product operation
    signal conv,pool, layertype, filtertype, slicefirstload: std_logic; -- from control unit to cnn module to conv its operation
    signal currentpage : std_logic_vector(0 downto 0);

    signal filterbus: std_logic_vector((numunits*filtersize)-1 downto 0);
    signal windowbus: std_logic_vector((numunits*windowsize)-1 downto 0);
    signal writebus: std_logic_vector(windowsize-1 downto 0);
    signal decoderrow: std_logic_vector(decodersize-1 downto 0);
    signal writepage1, writepage2, writefilter, shift2to1, shift1to2, pageturn, donecores, startconv, dmafilterfinish, loadoneword, loadtwoword, readallfinish, writeonefinish: std_logic;--, dmawindowfinish, dmaramfinish
    signal sumoutcores: std_logic_vector(windowsize-1 downto 0);

    -- dma signals
    signal loadlayerconfig, loadnetworkconfig, loadfilterconfig, loadwindow, loadfilter, readnextcol, finishlayer, finishslice: std_logic; --, weightssize
    signal inputsizeaddress, outputsizeaddress, baseaddressone, baseaddresstwo, outputsizeaddressfordma: std_logic_vector(windowaddresssize-1 downto 0);
    signal zeros: std_logic_vector(windowaddresssize-1 downto 0);
    signal filterramaddressbase: std_logic_vector(weightsaddresssize-1 downto 0);
    signal finishreadrowwindow, finishreadrowfilter, writedoneall: std_logic;
    signal alunumberwindow, alunumberfilter, decoderrowwindow: std_logic_vector(2 downto 0);


    -- signals comes from dma after reading from ram
    signal layersnumber : std_logic_vector(1 downto 0);
    signal filtersnumber, filterdepth : std_logic_vector(2 downto 0);
    signal inputsize, outputsize : std_logic_vector(4 downto 0);
    -- signal filteroutputsize: std_logic_vector(4 downto 0);

    -- signals to output buffer
    signal addtooutputbuffer, outputbufferen, savetoram, allread: std_logic;
    signal currentregfromoutbuffer, finaladderout, inputtofinaladder: std_logic_vector(windowsize - 1 downto 0);


    signal readnumlayers, readlayerconfig: std_logic;
    signal finishfilter, dangling2: std_logic;

    begin

        zeros <= (others => '0');
        baseaddressone <= (others => '0');
        baseaddresstwo <= "0111100100000";
        filterramaddressbase <= (others => '0');
    
        -- cnncores mapping
        coresmap: entity work.cnncores generic map(
            filtersize,
            windowsize,
            numunits,
            numrows,
            decodersize
        ) port map (
            filterbus, windowbus, decoderrow,
            clk, rst, writepage1, writepage2, writefilter, shift2to1, shift1to2, pageturn, startconv, layertype, filtertype,
            donecores, sumoutcores
        );


        startconv <= conv or pool;

        pageturn <= '0' when currentpage = "0"
        else '1';

        writepage1 <= finishreadrowwindow and ( (not pageturn and slicefirstload) or (pageturn and (readnextcol or loadwindow) )  );
        writepage2 <=finishreadrowwindow and ( ( pageturn and slicefirstload ) or (not pageturn and (readnextcol or loadwindow) )  );
        writefilter <= finishreadrowfilter and loadfilter;

        -- dmawindowfinish <= readallfinish or writeonefinish;

        decoderrow <= decoderrowwindow when loadwindow = '1'
                else "010" when readnextcol = '1' and filtertype = '0'
                else "100" when readnextcol = '1' and filtertype = '1';


        decodermap: entity work.rowdecodercnn port map(
            loadwindow, finishreadrowwindow, clk, decoderrowwindow
        );

        
        -- control unit mapping
        controlunitmap: entity work.controlunitcnn port map(
            clk,
            layersnumber,
            filtersnumber,
            filterdepth,
            -- filteroutputsize,
            outputsize,
            startcnn,
            layertype,
            donecores, dmafilterfinish, readallfinish, writeonefinish,
            rst,
            slicefirstload,
            loadlayerconfig, loadnetworkconfig, loadfilterconfig,
            loadwindow, loadfilter, conv, pool, 
            shift1to2, shift2to1, readnextcol, addtooutputbuffer, outputbufferen, savetoram,
            currentpage,
            finishslice, finishfilter, finishlayer, finishnetwork
        );

        loadoneword <= loadnetworkconfig or loadfilterconfig;
        loadtwoword <= loadlayerconfig;


        inputsizeaddress <= zeros(windowaddresssize-6 downto 0) & inputsize;--((4 downto 0) => inputsize, others => '0');
        outputsizeaddress <= zeros(windowaddresssize-6 downto 0) & outputsize;--((4 downto 0) => outputsize, others => '0');

        outputsizeaddmap: entity work.nbitaddercnn generic map(windowaddresssize) port map (
            outputsizeaddress, zeros, '1', outputsizeaddressfordma
        );

        -- dma mapping
        dmacontrollermap: entity work.dmacontroller generic map(
            weightsaddresssize, 
            windowaddresssize, 
            filtersize, 
            windowsize, 
            numunits
            ) port map (
            clk => clk,
            reset => rst,

            -- internal buses
            weightsinternalbus => filterbus,
            windowinternalbus => windowbus,
            writeinternalbus => writebus,
            
            -- two rams interface
            weightsramaddress => weightsramaddress,
            windowramaddressread => windowramaddressread,
            windowramaddresswrite => windowramaddresswrite,
            weightsramdatainbus => weightsramdatainbus,
            windowramdatainbus => windowramdatainbus,  
            weightsramread => weightsramread,  
            windowramread => windowramread,  
            windowramwrite => windowramwrite,  
            windowramdataoutbus => windowramdataoutbus,  
            mfcwindowram => mfcwindowram,  
            mfcwrite => mfcwrite,
            mfcweightsram => mfcweightsram,  

            -- input cnt signals
            loadnextfilter => loadfilter,
            loadnextwindow => loadwindow,
            loadnextrow => readnextcol,
            loadoneword => loadoneword,
            loadthreeword => loadtwoword,
            slicefinished => finishslice,
            filterfinished => finishfilter,
            layerfinished => finishlayer,
            layertype => layertype,
            write => savetoram,

            -- config
            weightssizetype => filtertype,
            inputsize => inputsizeaddress, 
            outputsize => outputsizeaddressfordma, 
            windowrambaseaddress1 => baseaddressone,
            windowrambaseaddress2 => baseaddresstwo,
            filterrambaseaddress => filterramaddressbase,
            
            -- o.p cnt signals
            windowreadone => finishreadrowwindow,
            windowreadfinal => readallfinish,

            weightsreadone => finishreadrowfilter,
            weightsreadfinal => dmafilterfinish,

            writedoneone => writeonefinish
            -- writedoneall => writedoneall,  
            
        );
        
        allread <= dmafilterfinish and loadfilterconfig;

        outbuffermap: entity work.outputbuffercnn generic map(numunits*filtersize, 22*22, windowsize, filtersize, 9, 6) port map (
            finaladderout, filterbus, writebus, allread, outputbufferen,
            currentregfromoutbuffer,
            clk, finishslice, rst,
            savetoram, outputbufferen, layertype
        );


        convorpoolmuxmap: entity work.mux2cnn generic map(windowsize) port map(
            currentregfromoutbuffer,
            "0000000000000000",
            layertype,
            inputtofinaladder
        );

        finaladdermap: entity work.nbitaddercnn generic map(windowsize) port map (
            a => inputtofinaladder,
            b => sumoutcores,
            carryin => '0',
            sum => finaladderout,
            carryout => dangling2
        );

        
        -- trifinalsummap: entity work.tristatecnn generic map(windowsize) port map(
        --     input => finaladderout,
        --     en => outputbufferen,
        --     output => windowbus(windowsize-1 downto 0)
        -- );
       
        readnumlayers <= loadnetworkconfig and finishreadrowfilter;
        readlayerconfig <= loadlayerconfig and finishreadrowfilter;


        configmap: entity work.configcnn generic map(filtersize*numunits) port map(
            filterbus, 
            clk, rst, readnumlayers, readlayerconfig,
            layersnumber, layertype, filtertype, filtersnumber,
            filterdepth, inputsize, outputsize
        );

end architecture; 