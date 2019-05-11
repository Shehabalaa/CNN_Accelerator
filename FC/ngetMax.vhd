LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;
use IEEE.NUMERIC_STD.ALL;
use work.Types.ALL;
-- Single bit Adder Entity

ENTITY ngetMax IS  
    GENERIC (wordSize : integer := 16;
    labels : integer := 10);
     PORT( 
            inputArray : IN ARRAYOFINTEGERES(9 downto 0);
            en, clk, rst: in STD_LOGIC;
            outLabel : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
            done: OUT STD_LOGIC
          );
END ngetMax;

------------------------------------------------------------

-- Single bit Adder Architecture

ARCHITECTURE GetMaxArch OF ngetMax IS

Component Reg IS
	Generic(wordSize:integer :=32);
	PORT(
			D: in STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0);
			en, clk, rst: in STD_LOGIC;
			Q: out STD_LOGIC_VECTOR(wordSize-1 DOWNTO 0)
		);
END Component;
Component Counter IS

    GENERIC (n: integer := 4);

    PORT(
        load: in STD_LOGIC_VECTOR(n-1 downto 0);
        reset, clk, isLoad: IN STD_LOGIC;
        count: out STD_LOGIC_VECTOR(n-1 downto 0)
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
Signal indexMaxin : STD_LOGIC_VECTOR(4 DOWNTO 0);
Signal indexMaxout : STD_LOGIC_VECTOR(4 DOWNTO 0);
Signal ComparatorG : STD_LOGIC;
Signal ComparatorEqual : STD_LOGIC;
Signal Count : STD_LOGIC_VECTOR (4 DOWNTO 0);
signal InputBcomparator : STD_LOGIC_VECTOR(wordSize-1 downto 0);
signal enableReg, enableModule : STD_LOGIC;
signal counterEnable, loadCounter : STD_LOGIC;
signal dCount: STD_LOGIC_VECTOR (4 DOWNTO 0);
BEGIN
    enableModule <= '1' when (en = '1' and  (signed(Count) <= "01001")) else '0';
    done <= '1' when Count = "01010" else '0';
    dCount <= Count when (enableModule ='1' and  (signed(Count) <= "01001" and signed(Count) >= "00000")) else "00000";
    regMaxValue : Reg generic map(wordSize) port map(regMaxin,enableModule,clk,rst,regMaxout);
    regMaxIndex : Reg generic map(5) port map(indexMaxin,enableModule,clk,rst,indexMaxout);
    InputBcomparator <= inputArray(to_integer(unsigned(dCount)));
    CounterLabel : Counter generic map(5) port map("00000",rst,clk,'0',Count);
    Comoarator: Comparator generic map(wordSize) port map(regMaxout,InputBcomparator,ComparatorG,ComparatorEqual);
    
    indexMaxin <= dCount when ComparatorG = '1' else indexMaxout;   
    regMaxin <= ("1000000000000000" ) when dCount = "00000" 
		else InputBcomparator when ComparatorG = '1' 
		else regMaxout;

    
    outLabel <= indexMaxout; 
END GetMaxArch;
