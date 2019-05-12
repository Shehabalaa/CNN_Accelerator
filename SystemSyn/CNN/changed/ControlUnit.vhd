library ieee;
use ieee.std_logic_1164.all;

entity controlunitcnn is
    port(
        clk :in std_logic;

        layersnumber : in std_logic_vector(1 downto 0);
        filtersnumber : in std_logic_vector(2 downto 0);
        filterdepth : in std_logic_vector(2 downto 0);
        filteroutputsize: in std_logic_vector(4 downto 0);

        startnetwork: in std_logic;
        layertype : in std_logic;

        convfinish,dmaafinish,dmabfinish,dmacfinish : in std_logic;

        resetnetwork : in std_logic;
        slicefirstload: out std_logic;
        loadlayerconfig, loadnetworkconfig, loadfilterconfig : out std_logic;
        loadwindow, loadfilter,conv,pool,shift12,shift21,readnextcol,addtooutputbuffer,outputbufferen,savetoram : out std_logic;
        currentpage : out std_logic_vector(0 downto 0);

        finishcurrentslice, finishfilter, finishonelayer, finishnetwork : out std_logic
    );

end controlunitcnn;


architecture controlunitcnnarch of controlunitcnn is 
    

    -- convolution and pooling


    -- dma signals
        

    -- network controller signals
        
    -- one layer signals
        signal startonelayer:std_logic;
       

    -- filter signals
        signal startfilter,filterlastlayer ,internalfinishfilter:std_logic;


    -- slice of filter signals
        signal startslice,finishslice : std_logic;


    -- finishing one layer
        signal onelayeringfinish: std_logic;
 
    begin

        finishonelayer <= onelayeringfinish;
        finishcurrentslice <= finishslice;
        finishfilter <= internalfinishfilter;

        networkmap: entity work.networkcontrollercnn port map(startnetwork,dmaafinish,onelayeringfinish,resetnetwork,clk,layersnumber,loadnetworkconfig,startonelayer,finishnetwork);

        onelayermap : entity work.layercontrollercnn port map(startonelayer,dmaafinish,internalfinishfilter,resetnetwork,clk,filtersnumber,loadlayerconfig,startfilter,onelayeringfinish );

        filtermap : entity work.filtercontrollercnn port map(startfilter,layertype,dmaafinish,finishslice,resetnetwork,clk,filterdepth,startslice,loadfilterconfig,filterlastlayer,internalfinishfilter);

        slicefiltermap : entity work.slicefiltercontrollercnn port map(startslice,layertype,filterlastlayer,convfinish,dmaafinish,dmabfinish,dmacfinish,
        resetnetwork,clk,filteroutputsize,currentpage,slicefirstload,loadfilter,loadwindow,conv,pool,shift12,shift21,readnextcol,addtooutputbuffer,outputbufferen,savetoram,finishslice);



        
end architecture;