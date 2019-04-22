LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

-- Adder4Values Entity



ENTITY Try IS
  PORT(
    filterBus : IN std_logic_vector (39 DOWNTO 0) ;
    windowBus : IN std_logic_vector (79 DOWNTO 0) ;
    decoderRow : IN std_logic_vector (2 DOWNTO 0) ;
    clk : IN std_logic ;
    rst : IN std_logic ;
    writePage1 : IN std_logic ;
    writePage2 : IN std_logic ;
    writeFilter : IN std_logic ;
    shift2To1 : IN std_logic ;
    shift1To2 : IN std_logic ;
    pageTurn : IN std_logic ;
    start : IN std_logic ;
    layerType : IN std_logic ;
    filterType : IN std_logic ;
    done : OUT std_logic ;
    finalSum : OUT std_logic_vector (15 DOWNTO 0)
    );

END Try;

------------------------------------------------------------

-- Adder4Values Architecture

ARCHITECTURE TryArch OF Try IS


    BEGIN

        try: entity work.CNNCores port map (
        filterBus ,
        windowBus ,
        decoderRow ,
        clk ,
        rst ,
        writePage1 ,
        writePage2 ,
        writeFilter ,
        shift2To1 ,
        shift1To2 ,
        pageTurn ,
        start ,
        layerType ,
        filterType ,
        done ,
        finalSum
        ) ;
  

END ARCHITECTURE;