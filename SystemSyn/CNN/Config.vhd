 LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;


ENTITY Config IS
  GENERIC (busSize : INTEGER := 8*5);
  PORT(
      filterBus: IN STD_LOGIC_VECTOR(busSize-1 DOWNTO 0);
      clk, rst, readNumLayers, readLayerConfig: IN STD_LOGIC;
      numLayers: OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      layerType, filterType: OUT STD_LOGIC;
      numFilters, filterDepth: OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      inputSize, outputSize: OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
    );

END Config;

------------------------------------------------------------

-- Config Architecture

ARCHITECTURE ConfigArch OF Config IS

    SIGNAL layerAndFilterType: STD_LOGIC_VECTOR(1 DOWNTO 0);

    BEGIN

        numLayerRegMap: ENTITY work.Reg GENERIC MAP(2) PORT MAP(filterBus(7 downto 6), readNumLayers, clk, rst, numLayers);
        numFiltersRegMap: ENTITY work.Reg GENERIC MAP(3) PORT MAP(filterBus(5 downto 3), readLayerConfig, clk, rst, numFilters);
        filterDepthRegMap: ENTITY work.Reg GENERIC MAP(3) PORT MAP(filterBus(2 downto 0), readLayerConfig, clk, rst, filterDepth);
        layerTypeRegMap: ENTITY work.Reg GENERIC MAP(2) PORT MAP(filterBus(7 downto 6), readLayerConfig, clk, rst, layerAndFilterType);        
        inputSizeRegMap: ENTITY work.Reg GENERIC MAP(5) PORT MAP(filterBus(15 downto 11), readLayerConfig, clk, rst, inputSize);
        outputSizeRegMap: ENTITY work.Reg GENERIC MAP(5) PORT MAP(filterBus(23 downto 19), readLayerConfig, clk, rst, outputSize);

        layerType <= layerAndFilterType(1);
        filterType <= layerAndFilterType(0);
        
END ARCHITECTURE;