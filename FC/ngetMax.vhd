LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;
use IEEE.NUMERIC_STD.ALL;
use work.Utiles.ALL;

-- Single bit Adder Entity

ENTITY ngetMax IS  
    GENERIC (wordSize : integer := 16;
    labels : integer := 10);
     PORT( 
            inputArray : IN genericArrayofVector16bit(9 downto 0);
            en, clk, rst: in STD_LOGIC;
            outLabel : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
            done: OUT STD_LOGIC
          );
END ngetMax;

------------------------------------------------------------

-- Single bit Adder Architecture

ARCHITECTURE GetMaxArch OF ngetMax IS

Component RegTony IS
	Generic(wordSize:integer :=32);
	PORT(
			D: in STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0);
			load: in STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0);
			en, clk, rst: in STD_LOGIC;
            Q: out STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0);
            Qbar: out STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0)
		);
END Component;
Component CounterUpDown IS

    GENERIC (n: integer :=4);

        PORT(
            load,resetValue: in std_logic_vector(n-1 downto 0);
            clk, en, rst, isLoad,upOrDown: in std_logic;
            count: out std_logic_vector(n-1 downto 0)
        );

    
END Component;
Component Comparator IS
        GENERIC (wordSize : integer := 32);
    PORT(
            inputA : IN STD_LOGIC_VECTOR(wordSize-1  DOWNTO 0);
            inputB : IN STD_LOGIC_VECTOR(wordSize-1  DOWNTO 0);
            outputG : OUT STD_LOGIC;
            outputEqual: OUT STD_LOGIC
        );

END Component;

Signal regMaxout : STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0);
Signal regMaxin : STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0);
Signal indexMaxin : STD_LOGIC_VECTOR(3 DOWNTO 0);
Signal indexMaxout : STD_LOGIC_VECTOR(3 DOWNTO 0);
Signal ComparatorG : STD_LOGIC; 
Signal ComparatorEqual : STD_LOGIC;
Signal Count : STD_LOGIC_VECTOR (3 DOWNTO 0);
Signal InputBcomparator : STD_LOGIC_VECTOR(wordSize-1 downto 0);
Signal enableReg : STD_LOGIC;
Signal load: STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0):="1000000000000000";
--Signal counterEnable, loadCounter : STD_LOGIC;
  
BEGIN

    
    regMaxValue : RegTony generic map(wordSize) port map(regMaxin,load,en,clk,rst,regMaxout);
    regMaxIndex : RegTony generic map(4) port map(indexMaxin,"0000",en,clk,rst,indexMaxout);
    CounterLabel : CounterUpDown generic map(4) port map((others =>'0'),(others =>'0'),clk,en,rst,'0','0',Count);
    ComparatorLabel: Comparator generic map(wordSize) port map(regMaxout,InputBcomparator,ComparatorG,ComparatorEqual);
    
    InputBcomparator <= inputArray(to_integer(unsigned(Count))) when Count <="1001" and rst ='0';
    done <= '1' when Count = "1001" else '0';
    indexMaxin <= Count when ComparatorG = '1' else indexMaxout;
    
    regMaxin <= ("1000000000000000" ) when rst='1'
		else InputBcomparator when ComparatorG = '1' 
		else regMaxout;
   
    outLabel <= indexMaxout; 
END GetMaxArch;
