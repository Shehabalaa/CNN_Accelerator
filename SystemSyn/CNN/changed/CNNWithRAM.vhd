library ieee;
use ieee.std_logic_1164.all;

entity cnnwithramcnn is
  generic (
    filtersize: integer := 8;
    windowsize: integer := 16;
    numunits: integer := 5;
    numrows: integer := 5;
    decodersize: integer := 3;
    weightsaddresssize: integer := 12;
    windowaddresssize: integer := 13
  );
  port(
      clk, rst, start: in std_logic;
      finishcnn: out std_logic
    );

end cnnwithramcnn;

------------------------------------------------------------


architecture cnnwithramcnnarch of cnnwithramcnn is

    signal weightsramdatainbus: std_logic_vector((filtersize * numunits)-1 downto 0);
    signal windowramdatainbus: std_logic_vector((windowsize * numunits)-1 downto 0);
    signal mfcwindowram: std_logic;
    signal mfcweightsram: std_logic;
    signal mfcwrite: std_logic;
    signal weightsramaddress: std_logic_vector(weightsaddresssize-1 downto 0);
    signal windowramaddressread, windowramaddresswrite: std_logic_vector(windowaddresssize-1 downto 0);
    signal weightsramread: std_logic;
    signal windowramread: std_logic;
    signal windowramwrite: std_logic;
    signal mfcwrite2: std_logic;
    signal windowramdataoutbus: std_logic_vector(windowsize-1 downto 0);


    begin

    cnnmap: entity work.cnnmodule 
        generic map (
            filtersize,
            windowsize,
            numunits,
            numrows,
            decodersize,
            weightsaddresssize,
            windowaddresssize
        )
        port map (
            startcnn => start,
            clk => clk,
            rst => rst,
            weightsramdatainbus => weightsramdatainbus,
            windowramdatainbus => windowramdatainbus,
            mfcwindowram => mfcwindowram,
            mfcweightsram => mfcweightsram,
            mfcwrite => mfcwrite,
            weightsramaddress => weightsramaddress,
            windowramaddressread => windowramaddressread,
            windowramaddresswrite => windowramaddresswrite,
            weightsramread => weightsramread,
            windowramread => windowramread,
            windowramwrite => windowramwrite,
            windowramdataoutbus => windowramdataoutbus,
            finishnetwork => finishcnn
        );

    
    weightsram: entity work.ram 
        generic map(weightsaddresssize, filtersize, filtersize * 5)
        port map(
            clk, weightsramread, '0', rst,
            weightsramaddress, weightsramaddress, --address write here is for io
            "00000000",
            weightsramdatainbus,
            mfcweightsram,
            mfcwrite2
        );

    windowram: entity work.ram 
    generic map(windowaddresssize, windowsize, windowsize * 5)
    port map(
        clk, windowramread, windowramwrite, rst,
        windowramaddressread, windowramaddresswrite,
        windowramdataoutbus,
        windowramdatainbus,
        mfcwindowram,
        mfcwrite
    );

end architecture;