library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.numeric_std.all;
use work.utiles.all;

-- single bit adder entity

entity ngetmaxfc is  
    generic (wordsize : integer := 16;
    labels : integer := 10);
     port( 
            inputarray : in genericarrayofvector16bit(9 downto 0);
            en, clk, rst: in std_logic;
            outlabel : out std_logic_vector(3 downto 0);
            done: out std_logic
          );
end ngetmaxfc;

------------------------------------------------------------

-- single bit adder architecture

architecture ngetmaxfcarch of ngetmaxfc is

component regtonyfc is
	generic(wordsize:integer :=32);
	port(
			d: in std_logic_vector(wordsize-1 downto 0);
			load: in std_logic_vector(wordsize-1 downto 0);
			en, clk, rst: in std_logic;
            q: out std_logic_vector(wordsize-1 downto 0);
            qbar: out std_logic_vector(wordsize-1 downto 0)
		);
end component;
component counterupdownfc is

    generic (n: integer :=4);

        port(
            load,resetvalue: in std_logic_vector(n-1 downto 0);
            clk, en, rst, isload,upordown: in std_logic;
            count: out std_logic_vector(n-1 downto 0)
        );

    
end component;
component comparatorfc is
        generic (wordsize : integer := 32);
    port(
            inputa : in std_logic_vector(wordsize-1  downto 0);
            inputb : in std_logic_vector(wordsize-1  downto 0);
            outputg : out std_logic;
            outputequal: out std_logic
        );

end component;

signal regmaxout : std_logic_vector(wordsize-1 downto 0);
signal regmaxin : std_logic_vector(wordsize-1 downto 0);
signal indexmaxin : std_logic_vector(3 downto 0);
signal indexmaxout : std_logic_vector(3 downto 0);
signal comparatorg : std_logic; 
signal comparatorequal : std_logic;
signal count : std_logic_vector (3 downto 0);
signal inputbcomparator : std_logic_vector(wordsize-1 downto 0);
signal enablereg : std_logic;
signal load: std_logic_vector(wordsize-1 downto 0):="1000000000000000";
signal zeros: std_logic_vector(3 downto 0) := "0000";
--signal counterenable, loadcounter : std_logic;
  
begin

    
    regmaxvalue : regtonyfc generic map(wordsize) port map(regmaxin,load,en,clk,rst,regmaxout);
    regmaxindex : regtonyfc generic map(4) port map(indexmaxin,"0000",en,clk,rst,indexmaxout);
    counterlabel : counterupdownfc generic map(4) port map(zeros,zeros,clk,en,rst,'0','0',count);
    comparatorlabel: comparatorfc generic map(wordsize) port map(regmaxout,inputbcomparator,comparatorg,comparatorequal);
    
    inputbcomparator <= inputarray(to_integer(unsigned(count))) when count <="1001" and rst ='0';
    done <= '1' when count = "1010" else '0';
    indexmaxin <= count when comparatorg = '1' else indexmaxout;
    
    regmaxin <= ("1000000000000000" ) when rst='1'
		else inputbcomparator when comparatorg = '1' 
		else regmaxout;
   
    outlabel <= indexmaxout; 
end ngetmaxfcarch;
