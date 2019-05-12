library IEEE;
use IEEE.STD_LOGIC_1164.all;


ENTITY FcMain IS
    generic (
        WeightADDRESSSize : integer :=16;
        NeoronADDRESSSize : integer :=13
    );

    PORT(
            cnnDone,ioDone,clk,reset : IN STD_LOGIC;


            defaultAddressNeorons : in STD_LOGIC_VECTOR(NeoronADDRESSSize-1 downto 0);   -- ram address bits
            dmaAddRamNeorons : OUT STD_LOGIC_VECTOR(NeoronADDRESSSize-1 downto 0);   -- ram address bits
            readRamNeorons :out STD_LOGIC;
            finishRamNeorons:in std_logic;
            dataOutRamNeorons:in STD_LOGIC_VECTOR(79 downto 0);



            dmaAddRamWeights : OUT STD_LOGIC_VECTOR(WeightADDRESSSize-1 downto 0);   -- ram address bits
            readRamWeights :out STD_LOGIC;
            finishRamWeights:in std_logic;
            dataOutRamWeights:in STD_LOGIC_VECTOR(79 downto 0);        


            fcDone: Out STD_LOGIC;
	        MAXPrediction: Out STD_LOGIC_VECTOR(3 downto 0)
        );
END FcMain;

--_____________________________________________________

----------------------------------------------------------------------

ARCHITECTURE FcMainArch OF FcMain IS
BEGIN
  
    
END FcMainArch;
