 library ieee;
use ieee.std_logic_1164.all;


entity configcnn is
  generic (bussize : integer := 8*5);
  port(
      filterbus: in std_logic_vector(bussize-1 downto 0);
      clk, rst, readnumlayers, readlayerconfig: in std_logic;
      numlayers: out std_logic_vector(1 downto 0);
      layertype, filtertype: out std_logic;
      numfilters, filterdepth: out std_logic_vector(2 downto 0);
      inputsize, outputsize: out std_logic_vector(4 downto 0)
    );

end configcnn;

------------------------------------------------------------

-- configcnn architecture

architecture configcnnarch of configcnn is

    signal layerandfiltertype: std_logic_vector(1 downto 0);

    begin

        numlayerregmap: entity work.regcnn generic map(2) port map(filterbus(7 downto 6), readnumlayers, clk, rst, numlayers);
        numfiltersregmap: entity work.regcnn generic map(3) port map(filterbus(5 downto 3), readlayerconfig, clk, rst, numfilters);
        filterdepthregmap: entity work.regcnn generic map(3) port map(filterbus(2 downto 0), readlayerconfig, clk, rst, filterdepth);
        layertyperegmap: entity work.regcnn generic map(2) port map(filterbus(7 downto 6), readlayerconfig, clk, rst, layerandfiltertype);        
        inputsizeregmap: entity work.regcnn generic map(5) port map(filterbus(15 downto 11), readlayerconfig, clk, rst, inputsize);
        outputsizeregmap: entity work.regcnn generic map(5) port map(filterbus(23 downto 19), readlayerconfig, clk, rst, outputsize);

        layertype <= layerandfiltertype(1);
        filtertype <= layerandfiltertype(0);
        
end architecture;