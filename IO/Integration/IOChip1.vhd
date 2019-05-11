
-- 
-- Definition of  IOChip
-- 
--      Sat May 11 16:45:37 2019
--      
--      LeonardoSpectrum Level 3, 2018a.2
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity Reg_16 is
   port (
      D : IN std_logic_vector (15 DOWNTO 0) ;
      en : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      Q : OUT std_logic_vector (15 DOWNTO 0)) ;
end Reg_16 ;

architecture RegArch of Reg_16 is
   signal Q_15_EXMPLR, Q_14_EXMPLR, Q_13_EXMPLR, Q_12_EXMPLR, Q_11_EXMPLR, 
      Q_10_EXMPLR, Q_9_EXMPLR, Q_8_EXMPLR, Q_7_EXMPLR, Q_6_EXMPLR, 
      Q_5_EXMPLR, Q_4_EXMPLR, Q_3_EXMPLR, Q_2_EXMPLR, Q_1_EXMPLR, Q_0_EXMPLR, 
      nx228, nx238, nx248, nx258, nx268, nx278, nx288, nx298, nx308, nx318, 
      nx328, nx338, nx348, nx358, nx368, nx378, nx441, nx443, nx445, nx447, 
      nx449, nx451, nx453, nx455: std_logic ;

begin
   Q(15) <= Q_15_EXMPLR ;
   Q(14) <= Q_14_EXMPLR ;
   Q(13) <= Q_13_EXMPLR ;
   Q(12) <= Q_12_EXMPLR ;
   Q(11) <= Q_11_EXMPLR ;
   Q(10) <= Q_10_EXMPLR ;
   Q(9) <= Q_9_EXMPLR ;
   Q(8) <= Q_8_EXMPLR ;
   Q(7) <= Q_7_EXMPLR ;
   Q(6) <= Q_6_EXMPLR ;
   Q(5) <= Q_5_EXMPLR ;
   Q(4) <= Q_4_EXMPLR ;
   Q(3) <= Q_3_EXMPLR ;
   Q(2) <= Q_2_EXMPLR ;
   Q(1) <= Q_1_EXMPLR ;
   Q(0) <= Q_0_EXMPLR ;
   reg_Q_0 : dffr port map ( Q=>Q_0_EXMPLR, QB=>OPEN, D=>nx228, CLK=>clk, R
      =>nx451);
   ix229 : mux21_ni port map ( Y=>nx228, A0=>Q_0_EXMPLR, A1=>D(0), S0=>nx443
   );
   reg_Q_1 : dffr port map ( Q=>Q_1_EXMPLR, QB=>OPEN, D=>nx238, CLK=>clk, R
      =>nx451);
   ix239 : mux21_ni port map ( Y=>nx238, A0=>Q_1_EXMPLR, A1=>D(1), S0=>nx443
   );
   reg_Q_2 : dffr port map ( Q=>Q_2_EXMPLR, QB=>OPEN, D=>nx248, CLK=>clk, R
      =>nx451);
   ix249 : mux21_ni port map ( Y=>nx248, A0=>Q_2_EXMPLR, A1=>D(2), S0=>nx443
   );
   reg_Q_3 : dffr port map ( Q=>Q_3_EXMPLR, QB=>OPEN, D=>nx258, CLK=>clk, R
      =>nx451);
   ix259 : mux21_ni port map ( Y=>nx258, A0=>Q_3_EXMPLR, A1=>D(3), S0=>nx443
   );
   reg_Q_4 : dffr port map ( Q=>Q_4_EXMPLR, QB=>OPEN, D=>nx268, CLK=>clk, R
      =>nx451);
   ix269 : mux21_ni port map ( Y=>nx268, A0=>Q_4_EXMPLR, A1=>D(4), S0=>nx443
   );
   reg_Q_5 : dffr port map ( Q=>Q_5_EXMPLR, QB=>OPEN, D=>nx278, CLK=>clk, R
      =>nx451);
   ix279 : mux21_ni port map ( Y=>nx278, A0=>Q_5_EXMPLR, A1=>D(5), S0=>nx443
   );
   reg_Q_6 : dffr port map ( Q=>Q_6_EXMPLR, QB=>OPEN, D=>nx288, CLK=>clk, R
      =>nx451);
   ix289 : mux21_ni port map ( Y=>nx288, A0=>Q_6_EXMPLR, A1=>D(6), S0=>nx443
   );
   reg_Q_7 : dffr port map ( Q=>Q_7_EXMPLR, QB=>OPEN, D=>nx298, CLK=>clk, R
      =>nx453);
   ix299 : mux21_ni port map ( Y=>nx298, A0=>Q_7_EXMPLR, A1=>D(7), S0=>nx445
   );
   reg_Q_8 : dffr port map ( Q=>Q_8_EXMPLR, QB=>OPEN, D=>nx308, CLK=>clk, R
      =>nx453);
   ix309 : mux21_ni port map ( Y=>nx308, A0=>Q_8_EXMPLR, A1=>D(8), S0=>nx445
   );
   reg_Q_9 : dffr port map ( Q=>Q_9_EXMPLR, QB=>OPEN, D=>nx318, CLK=>clk, R
      =>nx453);
   ix319 : mux21_ni port map ( Y=>nx318, A0=>Q_9_EXMPLR, A1=>D(9), S0=>nx445
   );
   reg_Q_10 : dffr port map ( Q=>Q_10_EXMPLR, QB=>OPEN, D=>nx328, CLK=>clk, 
      R=>nx453);
   ix329 : mux21_ni port map ( Y=>nx328, A0=>Q_10_EXMPLR, A1=>D(10), S0=>
      nx445);
   reg_Q_11 : dffr port map ( Q=>Q_11_EXMPLR, QB=>OPEN, D=>nx338, CLK=>clk, 
      R=>nx453);
   ix339 : mux21_ni port map ( Y=>nx338, A0=>Q_11_EXMPLR, A1=>D(11), S0=>
      nx445);
   reg_Q_12 : dffr port map ( Q=>Q_12_EXMPLR, QB=>OPEN, D=>nx348, CLK=>clk, 
      R=>nx453);
   ix349 : mux21_ni port map ( Y=>nx348, A0=>Q_12_EXMPLR, A1=>D(12), S0=>
      nx445);
   reg_Q_13 : dffr port map ( Q=>Q_13_EXMPLR, QB=>OPEN, D=>nx358, CLK=>clk, 
      R=>nx453);
   ix359 : mux21_ni port map ( Y=>nx358, A0=>Q_13_EXMPLR, A1=>D(13), S0=>
      nx445);
   reg_Q_14 : dffr port map ( Q=>Q_14_EXMPLR, QB=>OPEN, D=>nx368, CLK=>clk, 
      R=>nx455);
   ix369 : mux21_ni port map ( Y=>nx368, A0=>Q_14_EXMPLR, A1=>D(14), S0=>
      nx447);
   reg_Q_15 : dffr port map ( Q=>Q_15_EXMPLR, QB=>OPEN, D=>nx378, CLK=>clk, 
      R=>nx455);
   ix379 : mux21_ni port map ( Y=>nx378, A0=>Q_15_EXMPLR, A1=>D(15), S0=>
      nx447);
   ix440 : inv01 port map ( Y=>nx441, A=>en);
   ix442 : inv02 port map ( Y=>nx443, A=>nx441);
   ix444 : inv02 port map ( Y=>nx445, A=>nx441);
   ix446 : inv02 port map ( Y=>nx447, A=>nx441);
   ix448 : inv01 port map ( Y=>nx449, A=>rst);
   ix450 : inv02 port map ( Y=>nx451, A=>nx449);
   ix452 : inv02 port map ( Y=>nx453, A=>nx449);
   ix454 : inv02 port map ( Y=>nx455, A=>nx449);
end RegArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity FullSubtractor is
   port (
      x : IN std_logic ;
      y : IN std_logic ;
      bin : IN std_logic ;
      difference : OUT std_logic ;
      bout : OUT std_logic) ;
end FullSubtractor ;

architecture Behavioral of FullSubtractor is
   signal nx71, nx73: std_logic ;

begin
   ix11 : mux21_ni port map ( Y=>bout, A0=>nx71, A1=>bin, S0=>nx73);
   ix72 : inv01 port map ( Y=>nx71, A=>x);
   ix74 : xnor2 port map ( Y=>nx73, A0=>x, A1=>y);
   ix13 : xnor2 port map ( Y=>difference, A0=>nx73, A1=>bin);
end Behavioral ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity NBitSubtractor_16 is
   port (
      x : IN std_logic_vector (15 DOWNTO 0) ;
      y : IN std_logic_vector (15 DOWNTO 0) ;
      bin : IN std_logic ;
      difference : OUT std_logic_vector (15 DOWNTO 0) ;
      borrowOut : OUT std_logic) ;
end NBitSubtractor_16 ;

architecture NBitSubtractorArch of NBitSubtractor_16 is
   component FullSubtractor
      port (
         x : IN std_logic ;
         y : IN std_logic ;
         bin : IN std_logic ;
         difference : OUT std_logic ;
         bout : OUT std_logic) ;
   end component ;
   signal temp_14, temp_13, temp_12, temp_11, temp_10, temp_9, temp_8, 
      temp_7, temp_6, temp_5, temp_4, temp_3, temp_2, temp_1, temp_0: 
   std_logic ;

begin
   f0 : FullSubtractor port map ( x=>x(0), y=>y(0), bin=>bin, difference=>
      difference(0), bout=>temp_0);
   loop1_1_fx : FullSubtractor port map ( x=>x(1), y=>y(1), bin=>temp_0, 
      difference=>difference(1), bout=>temp_1);
   loop1_2_fx : FullSubtractor port map ( x=>x(2), y=>y(2), bin=>temp_1, 
      difference=>difference(2), bout=>temp_2);
   loop1_3_fx : FullSubtractor port map ( x=>x(3), y=>y(3), bin=>temp_2, 
      difference=>difference(3), bout=>temp_3);
   loop1_4_fx : FullSubtractor port map ( x=>x(4), y=>y(4), bin=>temp_3, 
      difference=>difference(4), bout=>temp_4);
   loop1_5_fx : FullSubtractor port map ( x=>x(5), y=>y(5), bin=>temp_4, 
      difference=>difference(5), bout=>temp_5);
   loop1_6_fx : FullSubtractor port map ( x=>x(6), y=>y(6), bin=>temp_5, 
      difference=>difference(6), bout=>temp_6);
   loop1_7_fx : FullSubtractor port map ( x=>x(7), y=>y(7), bin=>temp_6, 
      difference=>difference(7), bout=>temp_7);
   loop1_8_fx : FullSubtractor port map ( x=>x(8), y=>y(8), bin=>temp_7, 
      difference=>difference(8), bout=>temp_8);
   loop1_9_fx : FullSubtractor port map ( x=>x(9), y=>y(9), bin=>temp_8, 
      difference=>difference(9), bout=>temp_9);
   loop1_10_fx : FullSubtractor port map ( x=>x(10), y=>y(10), bin=>temp_9, 
      difference=>difference(10), bout=>temp_10);
   loop1_11_fx : FullSubtractor port map ( x=>x(11), y=>y(11), bin=>temp_10, 
      difference=>difference(11), bout=>temp_11);
   loop1_12_fx : FullSubtractor port map ( x=>x(12), y=>y(12), bin=>temp_11, 
      difference=>difference(12), bout=>temp_12);
   loop1_13_fx : FullSubtractor port map ( x=>x(13), y=>y(13), bin=>temp_12, 
      difference=>difference(13), bout=>temp_13);
   loop1_14_fx : FullSubtractor port map ( x=>x(14), y=>y(14), bin=>temp_13, 
      difference=>difference(14), bout=>temp_14);
   loop1_15_fx : FullSubtractor port map ( x=>x(15), y=>y(15), bin=>temp_14, 
      difference=>difference(15), bout=>borrowOut);
end NBitSubtractorArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity Mux2_16 is
   port (
      A : IN std_logic_vector (15 DOWNTO 0) ;
      B : IN std_logic_vector (15 DOWNTO 0) ;
      S : IN std_logic ;
      C : OUT std_logic_vector (15 DOWNTO 0)) ;
end Mux2_16 ;

architecture Mux2Arch of Mux2_16 is
   signal nx173, nx175, nx177, nx179: std_logic ;

begin
   ix7 : mux21_ni port map ( Y=>C(0), A0=>A(0), A1=>B(0), S0=>nx175);
   ix15 : mux21_ni port map ( Y=>C(1), A0=>A(1), A1=>B(1), S0=>nx175);
   ix23 : mux21_ni port map ( Y=>C(2), A0=>A(2), A1=>B(2), S0=>nx175);
   ix31 : mux21_ni port map ( Y=>C(3), A0=>A(3), A1=>B(3), S0=>nx175);
   ix39 : mux21_ni port map ( Y=>C(4), A0=>A(4), A1=>B(4), S0=>nx175);
   ix47 : mux21_ni port map ( Y=>C(5), A0=>A(5), A1=>B(5), S0=>nx175);
   ix55 : mux21_ni port map ( Y=>C(6), A0=>A(6), A1=>B(6), S0=>nx175);
   ix63 : mux21_ni port map ( Y=>C(7), A0=>A(7), A1=>B(7), S0=>nx177);
   ix71 : mux21_ni port map ( Y=>C(8), A0=>A(8), A1=>B(8), S0=>nx177);
   ix79 : mux21_ni port map ( Y=>C(9), A0=>A(9), A1=>B(9), S0=>nx177);
   ix87 : mux21_ni port map ( Y=>C(10), A0=>A(10), A1=>B(10), S0=>nx177);
   ix95 : mux21_ni port map ( Y=>C(11), A0=>A(11), A1=>B(11), S0=>nx177);
   ix103 : mux21_ni port map ( Y=>C(12), A0=>A(12), A1=>B(12), S0=>nx177);
   ix111 : mux21_ni port map ( Y=>C(13), A0=>A(13), A1=>B(13), S0=>nx177);
   ix119 : mux21_ni port map ( Y=>C(14), A0=>A(14), A1=>B(14), S0=>nx179);
   ix127 : mux21_ni port map ( Y=>C(15), A0=>A(15), A1=>B(15), S0=>nx179);
   ix172 : inv01 port map ( Y=>nx173, A=>S);
   ix174 : inv02 port map ( Y=>nx175, A=>nx173);
   ix176 : inv02 port map ( Y=>nx177, A=>nx173);
   ix178 : inv02 port map ( Y=>nx179, A=>nx173);
end Mux2Arch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity DownCounterSyncLoad_16 is
   port (
      loadData : IN std_logic_vector (15 DOWNTO 0) ;
      en : IN std_logic ;
      load : IN std_logic ;
      rst : IN std_logic ;
      clk : IN std_logic ;
      counterOutput : OUT std_logic_vector (15 DOWNTO 0)) ;
end DownCounterSyncLoad_16 ;

architecture DownCounterSyncLoadArch of DownCounterSyncLoad_16 is
   component Reg_16
      port (
         D : IN std_logic_vector (15 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         Q : OUT std_logic_vector (15 DOWNTO 0)) ;
   end component ;
   component NBitSubtractor_16
      port (
         x : IN std_logic_vector (15 DOWNTO 0) ;
         y : IN std_logic_vector (15 DOWNTO 0) ;
         bin : IN std_logic ;
         difference : OUT std_logic_vector (15 DOWNTO 0) ;
         borrowOut : OUT std_logic) ;
   end component ;
   component Mux2_16
      port (
         A : IN std_logic_vector (15 DOWNTO 0) ;
         B : IN std_logic_vector (15 DOWNTO 0) ;
         S : IN std_logic ;
         C : OUT std_logic_vector (15 DOWNTO 0)) ;
   end component ;
   signal counterOutput_15_EXMPLR, counterOutput_14_EXMPLR, 
      counterOutput_13_EXMPLR, counterOutput_12_EXMPLR, 
      counterOutput_11_EXMPLR, counterOutput_10_EXMPLR, 
      counterOutput_9_EXMPLR, counterOutput_8_EXMPLR, counterOutput_7_EXMPLR, 
      counterOutput_6_EXMPLR, counterOutput_5_EXMPLR, counterOutput_4_EXMPLR, 
      counterOutput_3_EXMPLR, counterOutput_2_EXMPLR, counterOutput_1_EXMPLR, 
      counterOutput_0_EXMPLR, counterInput_15, counterInput_14, 
      counterInput_13, counterInput_12, counterInput_11, counterInput_10, 
      counterInput_9, counterInput_8, counterInput_7, counterInput_6, 
      counterInput_5, counterInput_4, counterInput_3, counterInput_2, 
      counterInput_1, counterInput_0, subtractorOutput_15, 
      subtractorOutput_14, subtractorOutput_13, subtractorOutput_12, 
      subtractorOutput_11, subtractorOutput_10, subtractorOutput_9, 
      subtractorOutput_8, subtractorOutput_7, subtractorOutput_6, 
      subtractorOutput_5, subtractorOutput_4, subtractorOutput_3, 
      subtractorOutput_2, subtractorOutput_1, subtractorOutput_0, 
      dummyInput_15, PWR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   counterOutput(15) <= counterOutput_15_EXMPLR ;
   counterOutput(14) <= counterOutput_14_EXMPLR ;
   counterOutput(13) <= counterOutput_13_EXMPLR ;
   counterOutput(12) <= counterOutput_12_EXMPLR ;
   counterOutput(11) <= counterOutput_11_EXMPLR ;
   counterOutput(10) <= counterOutput_10_EXMPLR ;
   counterOutput(9) <= counterOutput_9_EXMPLR ;
   counterOutput(8) <= counterOutput_8_EXMPLR ;
   counterOutput(7) <= counterOutput_7_EXMPLR ;
   counterOutput(6) <= counterOutput_6_EXMPLR ;
   counterOutput(5) <= counterOutput_5_EXMPLR ;
   counterOutput(4) <= counterOutput_4_EXMPLR ;
   counterOutput(3) <= counterOutput_3_EXMPLR ;
   counterOutput(2) <= counterOutput_2_EXMPLR ;
   counterOutput(1) <= counterOutput_1_EXMPLR ;
   counterOutput(0) <= counterOutput_0_EXMPLR ;
   counterReg : Reg_16 port map ( D(15)=>counterInput_15, D(14)=>
      counterInput_14, D(13)=>counterInput_13, D(12)=>counterInput_12, D(11)
      =>counterInput_11, D(10)=>counterInput_10, D(9)=>counterInput_9, D(8)
      =>counterInput_8, D(7)=>counterInput_7, D(6)=>counterInput_6, D(5)=>
      counterInput_5, D(4)=>counterInput_4, D(3)=>counterInput_3, D(2)=>
      counterInput_2, D(1)=>counterInput_1, D(0)=>counterInput_0, en=>en, 
      clk=>clk, rst=>rst, Q(15)=>counterOutput_15_EXMPLR, Q(14)=>
      counterOutput_14_EXMPLR, Q(13)=>counterOutput_13_EXMPLR, Q(12)=>
      counterOutput_12_EXMPLR, Q(11)=>counterOutput_11_EXMPLR, Q(10)=>
      counterOutput_10_EXMPLR, Q(9)=>counterOutput_9_EXMPLR, Q(8)=>
      counterOutput_8_EXMPLR, Q(7)=>counterOutput_7_EXMPLR, Q(6)=>
      counterOutput_6_EXMPLR, Q(5)=>counterOutput_5_EXMPLR, Q(4)=>
      counterOutput_4_EXMPLR, Q(3)=>counterOutput_3_EXMPLR, Q(2)=>
      counterOutput_2_EXMPLR, Q(1)=>counterOutput_1_EXMPLR, Q(0)=>
      counterOutput_0_EXMPLR);
   nextCount : NBitSubtractor_16 port map ( x(15)=>counterOutput_15_EXMPLR, 
      x(14)=>counterOutput_14_EXMPLR, x(13)=>counterOutput_13_EXMPLR, x(12)
      =>counterOutput_12_EXMPLR, x(11)=>counterOutput_11_EXMPLR, x(10)=>
      counterOutput_10_EXMPLR, x(9)=>counterOutput_9_EXMPLR, x(8)=>
      counterOutput_8_EXMPLR, x(7)=>counterOutput_7_EXMPLR, x(6)=>
      counterOutput_6_EXMPLR, x(5)=>counterOutput_5_EXMPLR, x(4)=>
      counterOutput_4_EXMPLR, x(3)=>counterOutput_3_EXMPLR, x(2)=>
      counterOutput_2_EXMPLR, x(1)=>counterOutput_1_EXMPLR, x(0)=>
      counterOutput_0_EXMPLR, y(15)=>dummyInput_15, y(14)=>dummyInput_15, 
      y(13)=>dummyInput_15, y(12)=>dummyInput_15, y(11)=>dummyInput_15, 
      y(10)=>dummyInput_15, y(9)=>dummyInput_15, y(8)=>dummyInput_15, y(7)=>
      dummyInput_15, y(6)=>dummyInput_15, y(5)=>dummyInput_15, y(4)=>
      dummyInput_15, y(3)=>dummyInput_15, y(2)=>dummyInput_15, y(1)=>
      dummyInput_15, y(0)=>dummyInput_15, bin=>PWR, difference(15)=>
      subtractorOutput_15, difference(14)=>subtractorOutput_14, 
      difference(13)=>subtractorOutput_13, difference(12)=>
      subtractorOutput_12, difference(11)=>subtractorOutput_11, 
      difference(10)=>subtractorOutput_10, difference(9)=>subtractorOutput_9, 
      difference(8)=>subtractorOutput_8, difference(7)=>subtractorOutput_7, 
      difference(6)=>subtractorOutput_6, difference(5)=>subtractorOutput_5, 
      difference(4)=>subtractorOutput_4, difference(3)=>subtractorOutput_3, 
      difference(2)=>subtractorOutput_2, difference(1)=>subtractorOutput_1, 
      difference(0)=>subtractorOutput_0, borrowOut=>DANGLING(0));
   muxloadOrCurrent : Mux2_16 port map ( A(15)=>subtractorOutput_15, A(14)=>
      subtractorOutput_14, A(13)=>subtractorOutput_13, A(12)=>
      subtractorOutput_12, A(11)=>subtractorOutput_11, A(10)=>
      subtractorOutput_10, A(9)=>subtractorOutput_9, A(8)=>
      subtractorOutput_8, A(7)=>subtractorOutput_7, A(6)=>subtractorOutput_6, 
      A(5)=>subtractorOutput_5, A(4)=>subtractorOutput_4, A(3)=>
      subtractorOutput_3, A(2)=>subtractorOutput_2, A(1)=>subtractorOutput_1, 
      A(0)=>subtractorOutput_0, B(15)=>loadData(15), B(14)=>loadData(14), 
      B(13)=>loadData(13), B(12)=>loadData(12), B(11)=>loadData(11), B(10)=>
      loadData(10), B(9)=>loadData(9), B(8)=>loadData(8), B(7)=>loadData(7), 
      B(6)=>loadData(6), B(5)=>loadData(5), B(4)=>loadData(4), B(3)=>
      loadData(3), B(2)=>loadData(2), B(1)=>loadData(1), B(0)=>loadData(0), 
      S=>load, C(15)=>counterInput_15, C(14)=>counterInput_14, C(13)=>
      counterInput_13, C(12)=>counterInput_12, C(11)=>counterInput_11, C(10)
      =>counterInput_10, C(9)=>counterInput_9, C(8)=>counterInput_8, C(7)=>
      counterInput_7, C(6)=>counterInput_6, C(5)=>counterInput_5, C(4)=>
      counterInput_4, C(3)=>counterInput_3, C(2)=>counterInput_2, C(1)=>
      counterInput_1, C(0)=>counterInput_0);
   ix73 : fake_vcc port map ( Y=>PWR);
   ix71 : fake_gnd port map ( Y=>dummyInput_15);
end DownCounterSyncLoadArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity IOInterface_16_4 is
   port (
      Din : IN std_logic_vector (15 DOWNTO 0) ;
      INTR : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      globalCounterEnable : IN std_logic ;
      globalCounterLoad : IN std_logic ;
      zeroState : OUT std_logic ;
      Q : OUT std_logic_vector (15 DOWNTO 0) ;
      result : OUT std_logic_vector (3 DOWNTO 0) ;
      FCResult : IN std_logic_vector (3 DOWNTO 0) ;
      FCDone : IN std_logic) ;
end IOInterface_16_4 ;

architecture IOInterfaceArch of IOInterface_16_4 is
   component DownCounterSyncLoad_16
      port (
         loadData : IN std_logic_vector (15 DOWNTO 0) ;
         en : IN std_logic ;
         load : IN std_logic ;
         rst : IN std_logic ;
         clk : IN std_logic ;
         counterOutput : OUT std_logic_vector (15 DOWNTO 0)) ;
   
   end component ;
   component Reg_16
      port (
         D : IN std_logic_vector (15 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         Q : OUT std_logic_vector (15 DOWNTO 0)) ;
   end component ;
   signal myGlobalCounterEnable, globalCounterOutput_15, 
      globalCounterOutput_14, globalCounterOutput_13, globalCounterOutput_12, 
      globalCounterOutput_11, globalCounterOutput_10, globalCounterOutput_9, 
      globalCounterOutput_8, globalCounterOutput_7, globalCounterOutput_6, 
      globalCounterOutput_5, globalCounterOutput_4, globalCounterOutput_3, 
      globalCounterOutput_2, globalCounterOutput_1, globalCounterOutput_0, 
      nx12, nx26, nx42, nx56: std_logic ;

begin
   GlobalCounter : DownCounterSyncLoad_16 port map ( loadData(15)=>Din(15), 
      loadData(14)=>Din(14), loadData(13)=>Din(13), loadData(12)=>Din(12), 
      loadData(11)=>Din(11), loadData(10)=>Din(10), loadData(9)=>Din(9), 
      loadData(8)=>Din(8), loadData(7)=>Din(7), loadData(6)=>Din(6), 
      loadData(5)=>Din(5), loadData(4)=>Din(4), loadData(3)=>Din(3), 
      loadData(2)=>Din(2), loadData(1)=>Din(1), loadData(0)=>Din(0), en=>
      myGlobalCounterEnable, load=>globalCounterLoad, rst=>rst, clk=>clk, 
      counterOutput(15)=>globalCounterOutput_15, counterOutput(14)=>
      globalCounterOutput_14, counterOutput(13)=>globalCounterOutput_13, 
      counterOutput(12)=>globalCounterOutput_12, counterOutput(11)=>
      globalCounterOutput_11, counterOutput(10)=>globalCounterOutput_10, 
      counterOutput(9)=>globalCounterOutput_9, counterOutput(8)=>
      globalCounterOutput_8, counterOutput(7)=>globalCounterOutput_7, 
      counterOutput(6)=>globalCounterOutput_6, counterOutput(5)=>
      globalCounterOutput_5, counterOutput(4)=>globalCounterOutput_4, 
      counterOutput(3)=>globalCounterOutput_3, counterOutput(2)=>
      globalCounterOutput_2, counterOutput(1)=>globalCounterOutput_1, 
      counterOutput(0)=>globalCounterOutput_0);
   DataReg : Reg_16 port map ( D(15)=>Din(15), D(14)=>Din(14), D(13)=>
      Din(13), D(12)=>Din(12), D(11)=>Din(11), D(10)=>Din(10), D(9)=>Din(9), 
      D(8)=>Din(8), D(7)=>Din(7), D(6)=>Din(6), D(5)=>Din(5), D(4)=>Din(4), 
      D(3)=>Din(3), D(2)=>Din(2), D(1)=>Din(1), D(0)=>Din(0), en=>INTR, clk
      =>clk, rst=>rst, Q(15)=>Q(15), Q(14)=>Q(14), Q(13)=>Q(13), Q(12)=>
      Q(12), Q(11)=>Q(11), Q(10)=>Q(10), Q(9)=>Q(9), Q(8)=>Q(8), Q(7)=>Q(7), 
      Q(6)=>Q(6), Q(5)=>Q(5), Q(4)=>Q(4), Q(3)=>Q(3), Q(2)=>Q(2), Q(1)=>Q(1), 
      Q(0)=>Q(0));
   ix61 : and04 port map ( Y=>zeroState, A0=>nx12, A1=>nx26, A2=>nx42, A3=>
      nx56);
   ix13 : nor04 port map ( Y=>nx12, A0=>globalCounterOutput_15, A1=>
      globalCounterOutput_14, A2=>globalCounterOutput_13, A3=>
      globalCounterOutput_12);
   ix27 : nor04 port map ( Y=>nx26, A0=>globalCounterOutput_11, A1=>
      globalCounterOutput_10, A2=>globalCounterOutput_9, A3=>
      globalCounterOutput_8);
   ix43 : nor04 port map ( Y=>nx42, A0=>globalCounterOutput_7, A1=>
      globalCounterOutput_6, A2=>globalCounterOutput_5, A3=>
      globalCounterOutput_4);
   ix57 : nor04 port map ( Y=>nx56, A0=>globalCounterOutput_3, A1=>
      globalCounterOutput_2, A2=>globalCounterOutput_1, A3=>
      globalCounterOutput_0);
   ix71 : or02 port map ( Y=>myGlobalCounterEnable, A0=>globalCounterEnable, 
      A1=>globalCounterLoad);
   ix63 : and02 port map ( Y=>result(0), A0=>FCResult(0), A1=>FCDone);
   ix65 : and02 port map ( Y=>result(1), A0=>FCResult(1), A1=>FCDone);
   ix67 : and02 port map ( Y=>result(2), A0=>FCResult(2), A1=>FCDone);
   ix69 : and02 port map ( Y=>result(3), A0=>FCDone, A1=>FCResult(3));
end IOInterfaceArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity IODFF is
   port (
      D : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      en : IN std_logic ;
      Q : OUT std_logic) ;
end IODFF ;

architecture IODFFArch of IODFF is
   signal Q_EXMPLR, nx50: std_logic ;

begin
   Q <= Q_EXMPLR ;
   reg_Q : dffr port map ( Q=>Q_EXMPLR, QB=>OPEN, D=>nx50, CLK=>clk, R=>rst
   );
   ix51 : mux21_ni port map ( Y=>nx50, A0=>Q_EXMPLR, A1=>D, S0=>en);
end IODFFArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity Reg_2 is
   port (
      D : IN std_logic_vector (1 DOWNTO 0) ;
      en : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      Q : OUT std_logic_vector (1 DOWNTO 0)) ;
end Reg_2 ;

architecture RegArch of Reg_2 is
   signal Q_1_EXMPLR, Q_0_EXMPLR, nx60, nx70: std_logic ;

begin
   Q(1) <= Q_1_EXMPLR ;
   Q(0) <= Q_0_EXMPLR ;
   reg_Q_0 : dffr port map ( Q=>Q_0_EXMPLR, QB=>OPEN, D=>nx60, CLK=>clk, R=>
      rst);
   ix61 : mux21_ni port map ( Y=>nx60, A0=>Q_0_EXMPLR, A1=>D(0), S0=>en);
   reg_Q_1 : dffr port map ( Q=>Q_1_EXMPLR, QB=>OPEN, D=>nx70, CLK=>clk, R=>
      rst);
   ix71 : mux21_ni port map ( Y=>nx70, A0=>Q_1_EXMPLR, A1=>D(1), S0=>en);

end RegArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity FullAdder is
   port (
      a : IN std_logic ;
      b : IN std_logic ;
      cin : IN std_logic ;
      s : OUT std_logic ;
      cout : OUT std_logic) ;
end FullAdder ;

architecture FullAdderArch of FullAdder is
   signal nx0, nx69: std_logic ;

begin
   ix7 : ao22 port map ( Y=>cout, A0=>b, A1=>a, B0=>cin, B1=>nx0);
   ix9 : xnor2 port map ( Y=>s, A0=>nx69, A1=>cin);
   ix70 : xnor2 port map ( Y=>nx69, A0=>a, A1=>b);
   ix1 : inv01 port map ( Y=>nx0, A=>nx69);
end FullAdderArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity NBitAdder_2 is
   port (
      a : IN std_logic_vector (1 DOWNTO 0) ;
      b : IN std_logic_vector (1 DOWNTO 0) ;
      carryIn : IN std_logic ;
      sum : OUT std_logic_vector (1 DOWNTO 0) ;
      carryOut : OUT std_logic) ;
end NBitAdder_2 ;

architecture NBitAdderArch of NBitAdder_2 is
   component FullAdder
      port (
         a : IN std_logic ;
         b : IN std_logic ;
         cin : IN std_logic ;
         s : OUT std_logic ;
         cout : OUT std_logic) ;
   end component ;
   signal temp_0: std_logic ;

begin
   f0 : FullAdder port map ( a=>a(0), b=>b(0), cin=>carryIn, s=>sum(0), cout
      =>temp_0);
   loop1_1_fx : FullAdder port map ( a=>a(1), b=>b(1), cin=>temp_0, s=>
      sum(1), cout=>carryOut);
end NBitAdderArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity IOCounter2_2 is
   port (
      en : IN std_logic ;
      reset : IN std_logic ;
      clk : IN std_logic ;
      count : OUT std_logic_vector (1 DOWNTO 0)) ;
end IOCounter2_2 ;

architecture IOCounter2Arch of IOCounter2_2 is
   component Reg_2
      port (
         D : IN std_logic_vector (1 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         Q : OUT std_logic_vector (1 DOWNTO 0)) ;
   end component ;
   component NBitAdder_2
      port (
         a : IN std_logic_vector (1 DOWNTO 0) ;
         b : IN std_logic_vector (1 DOWNTO 0) ;
         carryIn : IN std_logic ;
         sum : OUT std_logic_vector (1 DOWNTO 0) ;
         carryOut : OUT std_logic) ;
   end component ;
   signal count_1_EXMPLR, count_0_EXMPLR, addedOne_1, addedOne_0, finalReset, 
      oneSignal_1, PWR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   count(1) <= count_1_EXMPLR ;
   count(0) <= count_0_EXMPLR ;
   counterReg : Reg_2 port map ( D(1)=>addedOne_1, D(0)=>addedOne_0, en=>en, 
      clk=>clk, rst=>finalReset, Q(1)=>count_1_EXMPLR, Q(0)=>count_0_EXMPLR
   );
   nextCount : NBitAdder_2 port map ( a(1)=>count_1_EXMPLR, a(0)=>
      count_0_EXMPLR, b(1)=>oneSignal_1, b(0)=>oneSignal_1, carryIn=>PWR, 
      sum(1)=>addedOne_1, sum(0)=>addedOne_0, carryOut=>DANGLING(0));
   ix15 : fake_vcc port map ( Y=>PWR);
   ix13 : fake_gnd port map ( Y=>oneSignal_1);
   ix1 : and02 port map ( Y=>finalReset, A0=>reset, A1=>clk);
end IOCounter2Arch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity Controller_16_4 is
   port (
      doneDMAFC : IN std_logic ;
      doneDMACNN : IN std_logic ;
      doneDMAImage : IN std_logic ;
      INTR : IN std_logic ;
      load : IN std_logic ;
      clk : IN std_logic ;
      processing : IN std_logic ;
      imageOrCNN : IN std_logic ;
      zeroState : IN std_logic ;
      decompZeroState : IN std_logic ;
      rst : IN std_logic ;
      FCRamWriteOld : IN std_logic ;
      INTRDelayed : INOUT std_logic ;
      globalCounterLoad : INOUT std_logic ;
      imageLoad : INOUT std_logic ;
      imageRegisterEnable : INOUT std_logic ;
      imageRamEnable : INOUT std_logic ;
      CNNRegisterEnable : INOUT std_logic ;
      CNNRamEnable : INOUT std_logic ;
      FCRegisterEnable : INOUT std_logic ;
      FCRamEnable : INOUT std_logic ;
      busy : OUT std_logic ;
      doneWithPhase : OUT std_logic ;
      interfaceRegEnable : OUT std_logic ;
      interfaceMuxSel : OUT std_logic ;
      interfaceMuxEnable : OUT std_logic ;
      CNNCounterEnable : OUT std_logic ;
      FCCounterEnable : OUT std_logic ;
      decompDecrementorEnable : OUT std_logic ;
      imageCounterEnable : OUT std_logic ;
      globalCounterEnable : OUT std_logic ;
      toCNN : INOUT std_logic ;
      toFC : OUT std_logic ;
      doneDecomp : INOUT std_logic) ;
end Controller_16_4 ;

architecture ControllerArch of Controller_16_4 is
   component IODFF
      port (
         D : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         en : IN std_logic ;
         Q : OUT std_logic) ;
   end component ;
   component IOCounter2_2
      port (
         en : IN std_logic ;
         reset : IN std_logic ;
         clk : IN std_logic ;
         count : OUT std_logic_vector (1 DOWNTO 0)) ;
   end component ;
   signal doneWithPhase_EXMPLR, doneImage, imageLatcherD, busyFFD, busyFFQ, 
      imageRamLatchD, CNNRamLatchD, FCRamLatchD, CNNRamRst, imageRamRst, 
      FCRamRst, zeroStateDelayed, zeroStateDelayedSq, INTRDelayedSq, INTRFFD, 
      stateCounterEnable, CNNOrFC, busyRst, doneDMAImageDelayed, 
      doneCNNLatcherD, toCNNComb, delayedToCNN, delayedToCNNSq, 
      delayedToCNNCube, stateCounterQ_0, PWR, nx24, nx128, nx221, nx225, 
      nx227, nx229, nx231, nx237, nx248, nx252, nx257, nx261, nx264, nx266, 
      nx269, nx271, nx274, nx277, nx280, nx293, nx295: std_logic ;

begin
   doneWithPhase <= doneWithPhase_EXMPLR ;
   interfaceMuxSel <= imageOrCNN ;
   interfaceMuxEnable <= load ;
   imageLatcher : IODFF port map ( D=>imageLatcherD, clk=>clk, rst=>rst, en
      =>PWR, Q=>doneImage);
   busyFF : IODFF port map ( D=>busyFFD, clk=>clk, rst=>busyRst, en=>PWR, Q
      =>busyFFQ);
   stateCounter : IOCounter2_2 port map ( en=>stateCounterEnable, reset=>rst, 
      clk=>nx293, count(1)=>CNNOrFC, count(0)=>stateCounterQ_0);
   zeroLatch : IODFF port map ( D=>zeroState, clk=>nx293, rst=>rst, en=>PWR, 
      Q=>zeroStateDelayed);
   zeroDelayedLatch : IODFF port map ( D=>zeroStateDelayed, clk=>nx293, rst
      =>rst, en=>PWR, Q=>zeroStateDelayedSq);
   INTRFF1 : IODFF port map ( D=>INTRFFD, clk=>nx293, rst=>rst, en=>PWR, Q=>
      INTRDelayed);
   INTRFF2 : IODFF port map ( D=>INTRDelayed, clk=>nx293, rst=>rst, en=>PWR, 
      Q=>INTRDelayedSq);
   imgLatcher : IODFF port map ( D=>doneDMAImage, clk=>nx295, rst=>rst, en=>
      PWR, Q=>doneDMAImageDelayed);
   imageRamEn : IODFF port map ( D=>imageRamLatchD, clk=>clk, rst=>
      imageRamRst, en=>PWR, Q=>imageRamEnable);
   CNNRamEn : IODFF port map ( D=>CNNRamLatchD, clk=>clk, rst=>CNNRamRst, en
      =>PWR, Q=>CNNRamEnable);
   FCRamEn : IODFF port map ( D=>FCRamLatchD, clk=>clk, rst=>FCRamRst, en=>
      PWR, Q=>FCRamEnable);
   doneCNNLatched : IODFF port map ( D=>doneCNNLatcherD, clk=>nx295, rst=>
      rst, en=>PWR, Q=>toCNNComb);
   toCNNDelayer : IODFF port map ( D=>toCNNComb, clk=>nx295, rst=>rst, en=>
      PWR, Q=>delayedToCNN);
   toCNNDelayerSqd : IODFF port map ( D=>delayedToCNN, clk=>nx295, rst=>rst, 
      en=>PWR, Q=>delayedToCNNSq);
   toCNNDelayerCubed : IODFF port map ( D=>delayedToCNN, clk=>nx295, rst=>
      rst, en=>PWR, Q=>delayedToCNNCube);
   ix183 : fake_vcc port map ( Y=>PWR);
   ix13 : and03 port map ( Y=>doneCNNLatcherD, A0=>doneImage, A1=>processing, 
      A2=>nx221);
   ix222 : inv01 port map ( Y=>nx221, A=>CNNOrFC);
   ix133 : or03 port map ( Y=>busyRst, A0=>nx128, A1=>nx24, A2=>
      zeroStateDelayedSq);
   ix129 : nor03_2x port map ( Y=>nx128, A0=>nx225, A1=>FCRamEnable, A2=>
      nx231);
   ix228 : nand02 port map ( Y=>nx227, A0=>INTRDelayed, A1=>nx229);
   ix230 : inv01 port map ( Y=>nx229, A=>zeroState);
   ix232 : nand03 port map ( Y=>nx231, A0=>CNNOrFC, A1=>load, A2=>imageOrCNN
   );
   ix21 : and02 port map ( Y=>doneDecomp, A0=>decompZeroState, A1=>
      doneDMAImageDelayed);
   ix117 : and02 port map ( Y=>stateCounterEnable, A0=>imageOrCNN, A1=>
      doneWithPhase_EXMPLR);
   ix27 : nor02ii port map ( Y=>doneWithPhase_EXMPLR, A0=>nx237, A1=>
      zeroState);
   ix238 : nor03_2x port map ( Y=>nx237, A0=>doneDMACNN, A1=>doneDMAFC, A2=>
      doneDecomp);
   ix29 : or02 port map ( Y=>FCRamRst, A0=>rst, A1=>doneDMAFC);
   ix91 : or03 port map ( Y=>imageRamRst, A0=>decompZeroState, A1=>rst, A2=>
      doneDMAImage);
   ix43 : or02 port map ( Y=>CNNRamRst, A0=>rst, A1=>doneDMACNN);
   ix31 : or02 port map ( Y=>FCRamLatchD, A0=>FCRamEnable, A1=>FCRamWriteOld
   );
   ix59 : or02 port map ( Y=>CNNRamLatchD, A0=>CNNRegisterEnable, A1=>
      CNNRamEnable);
   ix57 : nor04 port map ( Y=>CNNRegisterEnable, A0=>CNNOrFC, A1=>rst, A2=>
      nx248, A3=>nx227);
   ix249 : nand02 port map ( Y=>nx248, A0=>load, A1=>imageOrCNN);
   ix101 : or02 port map ( Y=>imageRamLatchD, A0=>imageRegisterEnable, A1=>
      imageRamEnable);
   ix99 : inv01 port map ( Y=>imageRegisterEnable, A=>nx252);
   ix253 : oai21 port map ( Y=>nx252, A0=>doneDMAImageDelayed, A1=>
      INTRDelayedSq, B0=>imageLoad);
   ix95 : nor02ii port map ( Y=>imageLoad, A0=>imageOrCNN, A1=>load);
   ix135 : or02 port map ( Y=>busyFFD, A0=>INTR, A1=>busyFFQ);
   ix141 : nand02 port map ( Y=>imageLatcherD, A0=>imageOrCNN, A1=>nx257);
   ix258 : inv01 port map ( Y=>nx257, A=>doneImage);
   ix19 : and04 port map ( Y=>toFC, A0=>processing, A1=>stateCounterQ_0, A2
      =>CNNOrFC, A3=>doneImage);
   ix7 : nor02_2x port map ( Y=>toCNN, A0=>delayedToCNNCube, A1=>nx261);
   ix262 : nor03_2x port map ( Y=>nx261, A0=>delayedToCNN, A1=>
      delayedToCNNSq, A2=>toCNNComb);
   ix81 : aoi21 port map ( Y=>globalCounterEnable, A0=>nx264, A1=>nx237, B0
      =>rst);
   ix265 : nand03 port map ( Y=>nx264, A0=>INTR, A1=>nx266, A2=>zeroState);
   ix267 : inv01 port map ( Y=>nx266, A=>rst);
   ix111 : aoi21 port map ( Y=>imageCounterEnable, A0=>nx269, A1=>nx271, B0
      =>zeroState);
   ix270 : inv01 port map ( Y=>nx269, A=>doneDMAImageDelayed);
   ix272 : inv01 port map ( Y=>nx271, A=>INTRDelayed);
   ix105 : inv02 port map ( Y=>decompDecrementorEnable, A=>nx274);
   ix275 : oai21 port map ( Y=>nx274, A0=>INTRDelayed, A1=>doneDMAImage, B0
      =>imageLoad);
   ix41 : nor03_2x port map ( Y=>FCCounterEnable, A0=>nx231, A1=>nx277, A2=>
      rst);
   ix278 : inv01 port map ( Y=>nx277, A=>doneDMAFC);
   ix69 : nor04 port map ( Y=>CNNCounterEnable, A0=>nx280, A1=>CNNOrFC, A2=>
      rst, A3=>nx248);
   ix281 : inv01 port map ( Y=>nx280, A=>doneDMACNN);
   ix137 : or02 port map ( Y=>busy, A0=>busyFFD, A1=>FCRamEnable);
   ix123 : nor03_2x port map ( Y=>FCRegisterEnable, A0=>nx227, A1=>rst, A2=>
      nx231);
   ix25 : inv01 port map ( Y=>nx24, A=>nx237);
   ix226 : inv01 port map ( Y=>nx225, A=>FCRegisterEnable);
   ix75 : inv01 port map ( Y=>globalCounterLoad, A=>nx264);
   ix292 : inv02 port map ( Y=>nx293, A=>clk);
   ix294 : inv02 port map ( Y=>nx295, A=>clk);
   ix115 : nor02ii port map ( Y=>INTRFFD, A0=>zeroStateDelayed, A1=>INTR);
   ix87 : and03 port map ( Y=>interfaceRegEnable, A0=>INTR, A1=>nx266, A2=>
      load);
end ControllerArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity IO_16_4 is
   port (
      Din : IN std_logic_vector (15 DOWNTO 0) ;
      doneDMAFC : IN std_logic ;
      doneDMACNN : IN std_logic ;
      doneDMAImage : IN std_logic ;
      INTR : IN std_logic ;
      load : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      processing : IN std_logic ;
      imageOrCNN : IN std_logic ;
      decompZeroState : IN std_logic ;
      doneWithPhase : OUT std_logic ;
      CNNCounterEnable : OUT std_logic ;
      imageCounterEnable : OUT std_logic ;
      FCCounterEnable : OUT std_logic ;
      decompDecrementorEnable : OUT std_logic ;
      busy : OUT std_logic ;
      toCNN : INOUT std_logic ;
      toFC : OUT std_logic ;
      INTRDelayed : INOUT std_logic ;
      imageLoad : INOUT std_logic ;
      imageRegisterEnable : INOUT std_logic ;
      CNNRegisterEnable : INOUT std_logic ;
      FCRegisterEnable : INOUT std_logic ;
      imageRamEnable : INOUT std_logic ;
      CNNRamEnable : INOUT std_logic ;
      FCRamEnable : INOUT std_logic ;
      interfaceOutput : OUT std_logic_vector (15 DOWNTO 0) ;
      FCRamWriteOld : IN std_logic ;
      result : OUT std_logic_vector (3 DOWNTO 0) ;
      FCResult : IN std_logic_vector (3 DOWNTO 0) ;
      FCDone : IN std_logic) ;
end IO_16_4 ;

architecture IOArch of IO_16_4 is
   component IOInterface_16_4
      port (
         Din : IN std_logic_vector (15 DOWNTO 0) ;
         INTR : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         globalCounterEnable : IN std_logic ;
         globalCounterLoad : IN std_logic ;
         zeroState : OUT std_logic ;
         Q : OUT std_logic_vector (15 DOWNTO 0) ;
         result : OUT std_logic_vector (3 DOWNTO 0) ;
         FCResult : IN std_logic_vector (3 DOWNTO 0) ;
         FCDone : IN std_logic) ;
   end component ;
   component Controller_16_4
      port (
         doneDMAFC : IN std_logic ;
         doneDMACNN : IN std_logic ;
         doneDMAImage : IN std_logic ;
         INTR : IN std_logic ;
         load : IN std_logic ;
         clk : IN std_logic ;
         processing : IN std_logic ;
         imageOrCNN : IN std_logic ;
         zeroState : IN std_logic ;
         decompZeroState : IN std_logic ;
         rst : IN std_logic ;
         FCRamWriteOld : IN std_logic ;
         INTRDelayed : INOUT std_logic ;
         globalCounterLoad : INOUT std_logic ;
         imageLoad : INOUT std_logic ;
         imageRegisterEnable : INOUT std_logic ;
         imageRamEnable : INOUT std_logic ;
         CNNRegisterEnable : INOUT std_logic ;
         CNNRamEnable : INOUT std_logic ;
         FCRegisterEnable : INOUT std_logic ;
         FCRamEnable : INOUT std_logic ;
         busy : OUT std_logic ;
         doneWithPhase : OUT std_logic ;
         interfaceRegEnable : OUT std_logic ;
         interfaceMuxSel : OUT std_logic ;
         interfaceMuxEnable : OUT std_logic ;
         CNNCounterEnable : OUT std_logic ;
         FCCounterEnable : OUT std_logic ;
         decompDecrementorEnable : OUT std_logic ;
         imageCounterEnable : OUT std_logic ;
         globalCounterEnable : OUT std_logic ;
         toCNN : INOUT std_logic ;
         toFC : OUT std_logic ;
         doneDecomp : INOUT std_logic) ;
   end component ;
   signal globalCounterEnable, zeroState, globalCounterLoad: std_logic ;
   
   signal DANGLING : std_logic_vector (3 downto 0 );

begin
   Interface : IOInterface_16_4 port map ( Din(15)=>Din(15), Din(14)=>
      Din(14), Din(13)=>Din(13), Din(12)=>Din(12), Din(11)=>Din(11), Din(10)
      =>Din(10), Din(9)=>Din(9), Din(8)=>Din(8), Din(7)=>Din(7), Din(6)=>
      Din(6), Din(5)=>Din(5), Din(4)=>Din(4), Din(3)=>Din(3), Din(2)=>Din(2), 
      Din(1)=>Din(1), Din(0)=>Din(0), INTR=>INTR, clk=>clk, rst=>rst, 
      globalCounterEnable=>globalCounterEnable, globalCounterLoad=>
      globalCounterLoad, zeroState=>zeroState, Q(15)=>interfaceOutput(15), 
      Q(14)=>interfaceOutput(14), Q(13)=>interfaceOutput(13), Q(12)=>
      interfaceOutput(12), Q(11)=>interfaceOutput(11), Q(10)=>
      interfaceOutput(10), Q(9)=>interfaceOutput(9), Q(8)=>
      interfaceOutput(8), Q(7)=>interfaceOutput(7), Q(6)=>interfaceOutput(6), 
      Q(5)=>interfaceOutput(5), Q(4)=>interfaceOutput(4), Q(3)=>
      interfaceOutput(3), Q(2)=>interfaceOutput(2), Q(1)=>interfaceOutput(1), 
      Q(0)=>interfaceOutput(0), result(3)=>result(3), result(2)=>result(2), 
      result(1)=>result(1), result(0)=>result(0), FCResult(3)=>FCResult(3), 
      FCResult(2)=>FCResult(2), FCResult(1)=>FCResult(1), FCResult(0)=>
      FCResult(0), FCDone=>FCDone);
   Controller : Controller_16_4 port map ( doneDMAFC=>doneDMAFC, doneDMACNN
      =>doneDMACNN, doneDMAImage=>doneDMAImage, INTR=>INTR, load=>load, clk
      =>clk, processing=>processing, imageOrCNN=>imageOrCNN, zeroState=>
      zeroState, decompZeroState=>decompZeroState, rst=>rst, FCRamWriteOld=>
      FCRamWriteOld, INTRDelayed=>INTRDelayed, globalCounterLoad=>
      globalCounterLoad, imageLoad=>imageLoad, imageRegisterEnable=>
      imageRegisterEnable, imageRamEnable=>imageRamEnable, CNNRegisterEnable
      =>CNNRegisterEnable, CNNRamEnable=>CNNRamEnable, FCRegisterEnable=>
      FCRegisterEnable, FCRamEnable=>FCRamEnable, busy=>busy, doneWithPhase
      =>doneWithPhase, interfaceRegEnable=>DANGLING(0), interfaceMuxSel=>
      DANGLING(1), interfaceMuxEnable=>DANGLING(2), CNNCounterEnable=>
      CNNCounterEnable, FCCounterEnable=>FCCounterEnable, 
      decompDecrementorEnable=>decompDecrementorEnable, imageCounterEnable=>
      imageCounterEnable, globalCounterEnable=>globalCounterEnable, toCNN=>
      toCNN, toFC=>toFC, doneDecomp=>DANGLING(3));
end IOArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity Reg_6 is
   port (
      D : IN std_logic_vector (5 DOWNTO 0) ;
      en : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      Q : OUT std_logic_vector (5 DOWNTO 0)) ;
end Reg_6 ;

architecture RegArch of Reg_6 is
   signal Q_5_EXMPLR, Q_4_EXMPLR, Q_3_EXMPLR, Q_2_EXMPLR, Q_1_EXMPLR, 
      Q_0_EXMPLR, nx108, nx118, nx128, nx138, nx148, nx158: std_logic ;

begin
   Q(5) <= Q_5_EXMPLR ;
   Q(4) <= Q_4_EXMPLR ;
   Q(3) <= Q_3_EXMPLR ;
   Q(2) <= Q_2_EXMPLR ;
   Q(1) <= Q_1_EXMPLR ;
   Q(0) <= Q_0_EXMPLR ;
   reg_Q_0 : dffr port map ( Q=>Q_0_EXMPLR, QB=>OPEN, D=>nx108, CLK=>clk, R
      =>rst);
   ix109 : mux21_ni port map ( Y=>nx108, A0=>Q_0_EXMPLR, A1=>D(0), S0=>en);
   reg_Q_1 : dffr port map ( Q=>Q_1_EXMPLR, QB=>OPEN, D=>nx118, CLK=>clk, R
      =>rst);
   ix119 : mux21_ni port map ( Y=>nx118, A0=>Q_1_EXMPLR, A1=>D(1), S0=>en);
   reg_Q_2 : dffr port map ( Q=>Q_2_EXMPLR, QB=>OPEN, D=>nx128, CLK=>clk, R
      =>rst);
   ix129 : mux21_ni port map ( Y=>nx128, A0=>Q_2_EXMPLR, A1=>D(2), S0=>en);
   reg_Q_3 : dffr port map ( Q=>Q_3_EXMPLR, QB=>OPEN, D=>nx138, CLK=>clk, R
      =>rst);
   ix139 : mux21_ni port map ( Y=>nx138, A0=>Q_3_EXMPLR, A1=>D(3), S0=>en);
   reg_Q_4 : dffr port map ( Q=>Q_4_EXMPLR, QB=>OPEN, D=>nx148, CLK=>clk, R
      =>rst);
   ix149 : mux21_ni port map ( Y=>nx148, A0=>Q_4_EXMPLR, A1=>D(4), S0=>en);
   reg_Q_5 : dffr port map ( Q=>Q_5_EXMPLR, QB=>OPEN, D=>nx158, CLK=>clk, R
      =>rst);
   ix159 : mux21_ni port map ( Y=>nx158, A0=>Q_5_EXMPLR, A1=>D(5), S0=>en);

end RegArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity NBitSubtractor_6 is
   port (
      x : IN std_logic_vector (5 DOWNTO 0) ;
      y : IN std_logic_vector (5 DOWNTO 0) ;
      bin : IN std_logic ;
      difference : OUT std_logic_vector (5 DOWNTO 0) ;
      borrowOut : OUT std_logic) ;
end NBitSubtractor_6 ;

architecture NBitSubtractorArch of NBitSubtractor_6 is
   component FullSubtractor
      port (
         x : IN std_logic ;
         y : IN std_logic ;
         bin : IN std_logic ;
         difference : OUT std_logic ;
         bout : OUT std_logic) ;
   end component ;
   signal temp_4, temp_3, temp_2, temp_1, temp_0: std_logic ;

begin
   f0 : FullSubtractor port map ( x=>x(0), y=>y(0), bin=>bin, difference=>
      difference(0), bout=>temp_0);
   loop1_1_fx : FullSubtractor port map ( x=>x(1), y=>y(1), bin=>temp_0, 
      difference=>difference(1), bout=>temp_1);
   loop1_2_fx : FullSubtractor port map ( x=>x(2), y=>y(2), bin=>temp_1, 
      difference=>difference(2), bout=>temp_2);
   loop1_3_fx : FullSubtractor port map ( x=>x(3), y=>y(3), bin=>temp_2, 
      difference=>difference(3), bout=>temp_3);
   loop1_4_fx : FullSubtractor port map ( x=>x(4), y=>y(4), bin=>temp_3, 
      difference=>difference(4), bout=>temp_4);
   loop1_5_fx : FullSubtractor port map ( x=>x(5), y=>y(5), bin=>temp_4, 
      difference=>difference(5), bout=>borrowOut);
end NBitSubtractorArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity Mux2_6 is
   port (
      A : IN std_logic_vector (5 DOWNTO 0) ;
      B : IN std_logic_vector (5 DOWNTO 0) ;
      S : IN std_logic ;
      C : OUT std_logic_vector (5 DOWNTO 0)) ;
end Mux2_6 ;

architecture Mux2Arch of Mux2_6 is
   signal nx103: std_logic ;

begin
   ix7 : mux21_ni port map ( Y=>C(0), A0=>A(0), A1=>B(0), S0=>nx103);
   ix15 : mux21_ni port map ( Y=>C(1), A0=>A(1), A1=>B(1), S0=>nx103);
   ix23 : mux21_ni port map ( Y=>C(2), A0=>A(2), A1=>B(2), S0=>nx103);
   ix31 : mux21_ni port map ( Y=>C(3), A0=>A(3), A1=>B(3), S0=>nx103);
   ix39 : mux21_ni port map ( Y=>C(4), A0=>A(4), A1=>B(4), S0=>nx103);
   ix47 : mux21_ni port map ( Y=>C(5), A0=>A(5), A1=>B(5), S0=>nx103);
   ix102 : buf02 port map ( Y=>nx103, A=>S);
end Mux2Arch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity DownCounterSyncLoad_6 is
   port (
      loadData : IN std_logic_vector (5 DOWNTO 0) ;
      en : IN std_logic ;
      load : IN std_logic ;
      rst : IN std_logic ;
      clk : IN std_logic ;
      counterOutput : OUT std_logic_vector (5 DOWNTO 0)) ;
end DownCounterSyncLoad_6 ;

architecture DownCounterSyncLoadArch of DownCounterSyncLoad_6 is
   component Reg_6
      port (
         D : IN std_logic_vector (5 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         Q : OUT std_logic_vector (5 DOWNTO 0)) ;
   end component ;
   component NBitSubtractor_6
      port (
         x : IN std_logic_vector (5 DOWNTO 0) ;
         y : IN std_logic_vector (5 DOWNTO 0) ;
         bin : IN std_logic ;
         difference : OUT std_logic_vector (5 DOWNTO 0) ;
         borrowOut : OUT std_logic) ;
   end component ;
   component Mux2_6
      port (
         A : IN std_logic_vector (5 DOWNTO 0) ;
         B : IN std_logic_vector (5 DOWNTO 0) ;
         S : IN std_logic ;
         C : OUT std_logic_vector (5 DOWNTO 0)) ;
   end component ;
   signal counterOutput_5_EXMPLR, counterOutput_4_EXMPLR, 
      counterOutput_3_EXMPLR, counterOutput_2_EXMPLR, counterOutput_1_EXMPLR, 
      counterOutput_0_EXMPLR, counterInput_5, counterInput_4, counterInput_3, 
      counterInput_2, counterInput_1, counterInput_0, subtractorOutput_5, 
      subtractorOutput_4, subtractorOutput_3, subtractorOutput_2, 
      subtractorOutput_1, subtractorOutput_0, dummyInput_5, PWR: std_logic
    ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   counterOutput(5) <= counterOutput_5_EXMPLR ;
   counterOutput(4) <= counterOutput_4_EXMPLR ;
   counterOutput(3) <= counterOutput_3_EXMPLR ;
   counterOutput(2) <= counterOutput_2_EXMPLR ;
   counterOutput(1) <= counterOutput_1_EXMPLR ;
   counterOutput(0) <= counterOutput_0_EXMPLR ;
   counterReg : Reg_6 port map ( D(5)=>counterInput_5, D(4)=>counterInput_4, 
      D(3)=>counterInput_3, D(2)=>counterInput_2, D(1)=>counterInput_1, D(0)
      =>counterInput_0, en=>en, clk=>clk, rst=>rst, Q(5)=>
      counterOutput_5_EXMPLR, Q(4)=>counterOutput_4_EXMPLR, Q(3)=>
      counterOutput_3_EXMPLR, Q(2)=>counterOutput_2_EXMPLR, Q(1)=>
      counterOutput_1_EXMPLR, Q(0)=>counterOutput_0_EXMPLR);
   nextCount : NBitSubtractor_6 port map ( x(5)=>counterOutput_5_EXMPLR, 
      x(4)=>counterOutput_4_EXMPLR, x(3)=>counterOutput_3_EXMPLR, x(2)=>
      counterOutput_2_EXMPLR, x(1)=>counterOutput_1_EXMPLR, x(0)=>
      counterOutput_0_EXMPLR, y(5)=>dummyInput_5, y(4)=>dummyInput_5, y(3)=>
      dummyInput_5, y(2)=>dummyInput_5, y(1)=>dummyInput_5, y(0)=>
      dummyInput_5, bin=>PWR, difference(5)=>subtractorOutput_5, 
      difference(4)=>subtractorOutput_4, difference(3)=>subtractorOutput_3, 
      difference(2)=>subtractorOutput_2, difference(1)=>subtractorOutput_1, 
      difference(0)=>subtractorOutput_0, borrowOut=>DANGLING(0));
   muxloadOrCurrent : Mux2_6 port map ( A(5)=>subtractorOutput_5, A(4)=>
      subtractorOutput_4, A(3)=>subtractorOutput_3, A(2)=>subtractorOutput_2, 
      A(1)=>subtractorOutput_1, A(0)=>subtractorOutput_0, B(5)=>loadData(5), 
      B(4)=>loadData(4), B(3)=>loadData(3), B(2)=>loadData(2), B(1)=>
      loadData(1), B(0)=>loadData(0), S=>load, C(5)=>counterInput_5, C(4)=>
      counterInput_4, C(3)=>counterInput_3, C(2)=>counterInput_2, C(1)=>
      counterInput_1, C(0)=>counterInput_0);
   ix33 : fake_vcc port map ( Y=>PWR);
   ix31 : fake_gnd port map ( Y=>dummyInput_5);
end DownCounterSyncLoadArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity Reg_8 is
   port (
      D : IN std_logic_vector (7 DOWNTO 0) ;
      en : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      Q : OUT std_logic_vector (7 DOWNTO 0)) ;
end Reg_8 ;

architecture RegArch of Reg_8 is
   signal Q_7_EXMPLR, Q_6_EXMPLR, Q_5_EXMPLR, Q_4_EXMPLR, Q_3_EXMPLR, 
      Q_2_EXMPLR, Q_1_EXMPLR, Q_0_EXMPLR, nx132, nx142, nx152, nx162, nx172, 
      nx182, nx192, nx202, nx241, nx243: std_logic ;

begin
   Q(7) <= Q_7_EXMPLR ;
   Q(6) <= Q_6_EXMPLR ;
   Q(5) <= Q_5_EXMPLR ;
   Q(4) <= Q_4_EXMPLR ;
   Q(3) <= Q_3_EXMPLR ;
   Q(2) <= Q_2_EXMPLR ;
   Q(1) <= Q_1_EXMPLR ;
   Q(0) <= Q_0_EXMPLR ;
   reg_Q_0 : dffr port map ( Q=>Q_0_EXMPLR, QB=>OPEN, D=>nx132, CLK=>clk, R
      =>rst);
   ix133 : mux21_ni port map ( Y=>nx132, A0=>Q_0_EXMPLR, A1=>D(0), S0=>nx241
   );
   reg_Q_1 : dffr port map ( Q=>Q_1_EXMPLR, QB=>OPEN, D=>nx142, CLK=>clk, R
      =>rst);
   ix143 : mux21_ni port map ( Y=>nx142, A0=>Q_1_EXMPLR, A1=>D(1), S0=>nx241
   );
   reg_Q_2 : dffr port map ( Q=>Q_2_EXMPLR, QB=>OPEN, D=>nx152, CLK=>clk, R
      =>rst);
   ix153 : mux21_ni port map ( Y=>nx152, A0=>Q_2_EXMPLR, A1=>D(2), S0=>nx241
   );
   reg_Q_3 : dffr port map ( Q=>Q_3_EXMPLR, QB=>OPEN, D=>nx162, CLK=>clk, R
      =>rst);
   ix163 : mux21_ni port map ( Y=>nx162, A0=>Q_3_EXMPLR, A1=>D(3), S0=>nx241
   );
   reg_Q_4 : dffr port map ( Q=>Q_4_EXMPLR, QB=>OPEN, D=>nx172, CLK=>clk, R
      =>rst);
   ix173 : mux21_ni port map ( Y=>nx172, A0=>Q_4_EXMPLR, A1=>D(4), S0=>nx241
   );
   reg_Q_5 : dffr port map ( Q=>Q_5_EXMPLR, QB=>OPEN, D=>nx182, CLK=>clk, R
      =>rst);
   ix183 : mux21_ni port map ( Y=>nx182, A0=>Q_5_EXMPLR, A1=>D(5), S0=>nx241
   );
   reg_Q_6 : dffr port map ( Q=>Q_6_EXMPLR, QB=>OPEN, D=>nx192, CLK=>clk, R
      =>rst);
   ix193 : mux21_ni port map ( Y=>nx192, A0=>Q_6_EXMPLR, A1=>D(6), S0=>nx241
   );
   reg_Q_7 : dffr port map ( Q=>Q_7_EXMPLR, QB=>OPEN, D=>nx202, CLK=>clk, R
      =>rst);
   ix203 : mux21_ni port map ( Y=>nx202, A0=>Q_7_EXMPLR, A1=>D(7), S0=>nx243
   );
   ix240 : buf02 port map ( Y=>nx241, A=>en);
   ix242 : buf02 port map ( Y=>nx243, A=>en);
end RegArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity Decompressor is
   port (
      dataIn : IN std_logic_vector (5 DOWNTO 0) ;
      clk : IN std_logic ;
      en : IN std_logic ;
      rst : IN std_logic ;
      imageLoad : IN std_logic ;
      intrDelayed : IN std_logic ;
      zeroState : OUT std_logic ;
      dataOut : OUT std_logic_vector (7 DOWNTO 0)) ;
end Decompressor ;

architecture DecompressorArchitecture of Decompressor is
   component DownCounterSyncLoad_6
      port (
         loadData : IN std_logic_vector (5 DOWNTO 0) ;
         en : IN std_logic ;
         load : IN std_logic ;
         rst : IN std_logic ;
         clk : IN std_logic ;
         counterOutput : OUT std_logic_vector (5 DOWNTO 0)) ;
   
   end component ;
   component Reg_8
      port (
         D : IN std_logic_vector (7 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         Q : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal countOut_5, countOut_4, countOut_3, countOut_2, countOut_1, 
      countOut_0, registerIn_0, registerIn_7, nx45: std_logic ;

begin
   Counter : DownCounterSyncLoad_6 port map ( loadData(5)=>dataIn(5), 
      loadData(4)=>dataIn(4), loadData(3)=>dataIn(3), loadData(2)=>dataIn(2), 
      loadData(1)=>dataIn(1), loadData(0)=>dataIn(0), en=>en, load=>
      intrDelayed, rst=>rst, clk=>clk, counterOutput(5)=>countOut_5, 
      counterOutput(4)=>countOut_4, counterOutput(3)=>countOut_3, 
      counterOutput(2)=>countOut_2, counterOutput(1)=>countOut_1, 
      counterOutput(0)=>countOut_0);
   MyReg : Reg_8 port map ( D(7)=>registerIn_7, D(6)=>registerIn_7, D(5)=>
      registerIn_7, D(4)=>registerIn_7, D(3)=>registerIn_7, D(2)=>
      registerIn_7, D(1)=>registerIn_7, D(0)=>registerIn_0, en=>imageLoad, 
      clk=>clk, rst=>rst, Q(7)=>dataOut(7), Q(6)=>dataOut(6), Q(5)=>
      dataOut(5), Q(4)=>dataOut(4), Q(3)=>dataOut(3), Q(2)=>dataOut(2), Q(1)
      =>dataOut(1), Q(0)=>dataOut(0));
   ix35 : fake_gnd port map ( Y=>registerIn_7);
   ix33 : fake_vcc port map ( Y=>registerIn_0);
   ix21 : nor04 port map ( Y=>zeroState, A0=>countOut_3, A1=>countOut_5, A2
      =>countOut_4, A3=>nx45);
   ix46 : or03 port map ( Y=>nx45, A0=>countOut_0, A1=>countOut_2, A2=>
      countOut_1);
end DecompressorArchitecture ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity Reg_13 is
   port (
      D : IN std_logic_vector (12 DOWNTO 0) ;
      en : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      Q : OUT std_logic_vector (12 DOWNTO 0)) ;
end Reg_13 ;

architecture RegArch of Reg_13 is
   signal Q_12_EXMPLR, Q_11_EXMPLR, Q_10_EXMPLR, Q_9_EXMPLR, Q_8_EXMPLR, 
      Q_7_EXMPLR, Q_6_EXMPLR, Q_5_EXMPLR, Q_4_EXMPLR, Q_3_EXMPLR, Q_2_EXMPLR, 
      Q_1_EXMPLR, Q_0_EXMPLR, nx192, nx202, nx212, nx222, nx232, nx242, 
      nx252, nx262, nx272, nx282, nx292, nx302, nx312, nx366, nx368: 
   std_logic ;

begin
   Q(12) <= Q_12_EXMPLR ;
   Q(11) <= Q_11_EXMPLR ;
   Q(10) <= Q_10_EXMPLR ;
   Q(9) <= Q_9_EXMPLR ;
   Q(8) <= Q_8_EXMPLR ;
   Q(7) <= Q_7_EXMPLR ;
   Q(6) <= Q_6_EXMPLR ;
   Q(5) <= Q_5_EXMPLR ;
   Q(4) <= Q_4_EXMPLR ;
   Q(3) <= Q_3_EXMPLR ;
   Q(2) <= Q_2_EXMPLR ;
   Q(1) <= Q_1_EXMPLR ;
   Q(0) <= Q_0_EXMPLR ;
   reg_Q_0 : dffr port map ( Q=>Q_0_EXMPLR, QB=>OPEN, D=>nx192, CLK=>clk, R
      =>rst);
   ix193 : mux21_ni port map ( Y=>nx192, A0=>Q_0_EXMPLR, A1=>D(0), S0=>nx366
   );
   reg_Q_1 : dffr port map ( Q=>Q_1_EXMPLR, QB=>OPEN, D=>nx202, CLK=>clk, R
      =>rst);
   ix203 : mux21_ni port map ( Y=>nx202, A0=>Q_1_EXMPLR, A1=>D(1), S0=>nx366
   );
   reg_Q_2 : dffr port map ( Q=>Q_2_EXMPLR, QB=>OPEN, D=>nx212, CLK=>clk, R
      =>rst);
   ix213 : mux21_ni port map ( Y=>nx212, A0=>Q_2_EXMPLR, A1=>D(2), S0=>nx366
   );
   reg_Q_3 : dffr port map ( Q=>Q_3_EXMPLR, QB=>OPEN, D=>nx222, CLK=>clk, R
      =>rst);
   ix223 : mux21_ni port map ( Y=>nx222, A0=>Q_3_EXMPLR, A1=>D(3), S0=>nx366
   );
   reg_Q_4 : dffr port map ( Q=>Q_4_EXMPLR, QB=>OPEN, D=>nx232, CLK=>clk, R
      =>rst);
   ix233 : mux21_ni port map ( Y=>nx232, A0=>Q_4_EXMPLR, A1=>D(4), S0=>nx366
   );
   reg_Q_5 : dffr port map ( Q=>Q_5_EXMPLR, QB=>OPEN, D=>nx242, CLK=>clk, R
      =>rst);
   ix243 : mux21_ni port map ( Y=>nx242, A0=>Q_5_EXMPLR, A1=>D(5), S0=>nx366
   );
   reg_Q_6 : dffr port map ( Q=>Q_6_EXMPLR, QB=>OPEN, D=>nx252, CLK=>clk, R
      =>rst);
   ix253 : mux21_ni port map ( Y=>nx252, A0=>Q_6_EXMPLR, A1=>D(6), S0=>nx366
   );
   reg_Q_7 : dffr port map ( Q=>Q_7_EXMPLR, QB=>OPEN, D=>nx262, CLK=>clk, R
      =>rst);
   ix263 : mux21_ni port map ( Y=>nx262, A0=>Q_7_EXMPLR, A1=>D(7), S0=>nx368
   );
   reg_Q_8 : dffr port map ( Q=>Q_8_EXMPLR, QB=>OPEN, D=>nx272, CLK=>clk, R
      =>rst);
   ix273 : mux21_ni port map ( Y=>nx272, A0=>Q_8_EXMPLR, A1=>D(8), S0=>nx368
   );
   reg_Q_9 : dffr port map ( Q=>Q_9_EXMPLR, QB=>OPEN, D=>nx282, CLK=>clk, R
      =>rst);
   ix283 : mux21_ni port map ( Y=>nx282, A0=>Q_9_EXMPLR, A1=>D(9), S0=>nx368
   );
   reg_Q_10 : dffr port map ( Q=>Q_10_EXMPLR, QB=>OPEN, D=>nx292, CLK=>clk, 
      R=>rst);
   ix293 : mux21_ni port map ( Y=>nx292, A0=>Q_10_EXMPLR, A1=>D(10), S0=>
      nx368);
   reg_Q_11 : dffr port map ( Q=>Q_11_EXMPLR, QB=>OPEN, D=>nx302, CLK=>clk, 
      R=>rst);
   ix303 : mux21_ni port map ( Y=>nx302, A0=>Q_11_EXMPLR, A1=>D(11), S0=>
      nx368);
   reg_Q_12 : dffr port map ( Q=>Q_12_EXMPLR, QB=>OPEN, D=>nx312, CLK=>clk, 
      R=>rst);
   ix313 : mux21_ni port map ( Y=>nx312, A0=>Q_12_EXMPLR, A1=>D(12), S0=>
      nx368);
   ix365 : buf02 port map ( Y=>nx366, A=>en);
   ix367 : buf02 port map ( Y=>nx368, A=>en);
end RegArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity NBitAdder_13 is
   port (
      a : IN std_logic_vector (12 DOWNTO 0) ;
      b : IN std_logic_vector (12 DOWNTO 0) ;
      carryIn : IN std_logic ;
      sum : OUT std_logic_vector (12 DOWNTO 0) ;
      carryOut : OUT std_logic) ;
end NBitAdder_13 ;

architecture NBitAdderArch of NBitAdder_13 is
   component FullAdder
      port (
         a : IN std_logic ;
         b : IN std_logic ;
         cin : IN std_logic ;
         s : OUT std_logic ;
         cout : OUT std_logic) ;
   end component ;
   signal temp_11, temp_10, temp_9, temp_8, temp_7, temp_6, temp_5, temp_4, 
      temp_3, temp_2, temp_1, temp_0: std_logic ;

begin
   f0 : FullAdder port map ( a=>a(0), b=>b(0), cin=>carryIn, s=>sum(0), cout
      =>temp_0);
   loop1_1_fx : FullAdder port map ( a=>a(1), b=>b(1), cin=>temp_0, s=>
      sum(1), cout=>temp_1);
   loop1_2_fx : FullAdder port map ( a=>a(2), b=>b(2), cin=>temp_1, s=>
      sum(2), cout=>temp_2);
   loop1_3_fx : FullAdder port map ( a=>a(3), b=>b(3), cin=>temp_2, s=>
      sum(3), cout=>temp_3);
   loop1_4_fx : FullAdder port map ( a=>a(4), b=>b(4), cin=>temp_3, s=>
      sum(4), cout=>temp_4);
   loop1_5_fx : FullAdder port map ( a=>a(5), b=>b(5), cin=>temp_4, s=>
      sum(5), cout=>temp_5);
   loop1_6_fx : FullAdder port map ( a=>a(6), b=>b(6), cin=>temp_5, s=>
      sum(6), cout=>temp_6);
   loop1_7_fx : FullAdder port map ( a=>a(7), b=>b(7), cin=>temp_6, s=>
      sum(7), cout=>temp_7);
   loop1_8_fx : FullAdder port map ( a=>a(8), b=>b(8), cin=>temp_7, s=>
      sum(8), cout=>temp_8);
   loop1_9_fx : FullAdder port map ( a=>a(9), b=>b(9), cin=>temp_8, s=>
      sum(9), cout=>temp_9);
   loop1_10_fx : FullAdder port map ( a=>a(10), b=>b(10), cin=>temp_9, s=>
      sum(10), cout=>temp_10);
   loop1_11_fx : FullAdder port map ( a=>a(11), b=>b(11), cin=>temp_10, s=>
      sum(11), cout=>temp_11);
   loop1_12_fx : FullAdder port map ( a=>a(12), b=>b(12), cin=>temp_11, s=>
      sum(12), cout=>carryOut);
end NBitAdderArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity Mux2_13 is
   port (
      A : IN std_logic_vector (12 DOWNTO 0) ;
      B : IN std_logic_vector (12 DOWNTO 0) ;
      S : IN std_logic ;
      C : OUT std_logic_vector (12 DOWNTO 0)) ;
end Mux2_13 ;

architecture Mux2Arch of Mux2_13 is
   signal nx152, nx154: std_logic ;

begin
   ix7 : mux21_ni port map ( Y=>C(0), A0=>A(0), A1=>B(0), S0=>nx152);
   ix15 : mux21_ni port map ( Y=>C(1), A0=>A(1), A1=>B(1), S0=>nx152);
   ix23 : mux21_ni port map ( Y=>C(2), A0=>A(2), A1=>B(2), S0=>nx152);
   ix31 : mux21_ni port map ( Y=>C(3), A0=>A(3), A1=>B(3), S0=>nx152);
   ix39 : mux21_ni port map ( Y=>C(4), A0=>A(4), A1=>B(4), S0=>nx152);
   ix47 : mux21_ni port map ( Y=>C(5), A0=>A(5), A1=>B(5), S0=>nx152);
   ix55 : mux21_ni port map ( Y=>C(6), A0=>A(6), A1=>B(6), S0=>nx152);
   ix63 : mux21_ni port map ( Y=>C(7), A0=>A(7), A1=>B(7), S0=>nx154);
   ix71 : mux21_ni port map ( Y=>C(8), A0=>A(8), A1=>B(8), S0=>nx154);
   ix79 : mux21_ni port map ( Y=>C(9), A0=>A(9), A1=>B(9), S0=>nx154);
   ix87 : mux21_ni port map ( Y=>C(10), A0=>A(10), A1=>B(10), S0=>nx154);
   ix95 : mux21_ni port map ( Y=>C(11), A0=>A(11), A1=>B(11), S0=>nx154);
   ix103 : mux21_ni port map ( Y=>C(12), A0=>A(12), A1=>B(12), S0=>nx154);
   ix151 : buf02 port map ( Y=>nx152, A=>S);
   ix153 : buf02 port map ( Y=>nx154, A=>S);
end Mux2Arch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity UpCounterSyncLoad_13 is
   port (
      loadData : IN std_logic_vector (12 DOWNTO 0) ;
      en : IN std_logic ;
      load : IN std_logic ;
      rst : IN std_logic ;
      clk : IN std_logic ;
      counterOutput : OUT std_logic_vector (12 DOWNTO 0)) ;
end UpCounterSyncLoad_13 ;

architecture UpCounterSyncLoad of UpCounterSyncLoad_13 is
   component Reg_13
      port (
         D : IN std_logic_vector (12 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         Q : OUT std_logic_vector (12 DOWNTO 0)) ;
   end component ;
   component NBitAdder_13
      port (
         a : IN std_logic_vector (12 DOWNTO 0) ;
         b : IN std_logic_vector (12 DOWNTO 0) ;
         carryIn : IN std_logic ;
         sum : OUT std_logic_vector (12 DOWNTO 0) ;
         carryOut : OUT std_logic) ;
   end component ;
   component Mux2_13
      port (
         A : IN std_logic_vector (12 DOWNTO 0) ;
         B : IN std_logic_vector (12 DOWNTO 0) ;
         S : IN std_logic ;
         C : OUT std_logic_vector (12 DOWNTO 0)) ;
   end component ;
   signal counterOutput_12_EXMPLR, counterOutput_11_EXMPLR, 
      counterOutput_10_EXMPLR, counterOutput_9_EXMPLR, 
      counterOutput_8_EXMPLR, counterOutput_7_EXMPLR, counterOutput_6_EXMPLR, 
      counterOutput_5_EXMPLR, counterOutput_4_EXMPLR, counterOutput_3_EXMPLR, 
      counterOutput_2_EXMPLR, counterOutput_1_EXMPLR, counterOutput_0_EXMPLR, 
      counterInput_12, counterInput_11, counterInput_10, counterInput_9, 
      counterInput_8, counterInput_7, counterInput_6, counterInput_5, 
      counterInput_4, counterInput_3, counterInput_2, counterInput_1, 
      counterInput_0, adderOutput_12, adderOutput_11, adderOutput_10, 
      adderOutput_9, adderOutput_8, adderOutput_7, adderOutput_6, 
      adderOutput_5, adderOutput_4, adderOutput_3, adderOutput_2, 
      adderOutput_1, adderOutput_0, dummyInput_12, PWR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   counterOutput(12) <= counterOutput_12_EXMPLR ;
   counterOutput(11) <= counterOutput_11_EXMPLR ;
   counterOutput(10) <= counterOutput_10_EXMPLR ;
   counterOutput(9) <= counterOutput_9_EXMPLR ;
   counterOutput(8) <= counterOutput_8_EXMPLR ;
   counterOutput(7) <= counterOutput_7_EXMPLR ;
   counterOutput(6) <= counterOutput_6_EXMPLR ;
   counterOutput(5) <= counterOutput_5_EXMPLR ;
   counterOutput(4) <= counterOutput_4_EXMPLR ;
   counterOutput(3) <= counterOutput_3_EXMPLR ;
   counterOutput(2) <= counterOutput_2_EXMPLR ;
   counterOutput(1) <= counterOutput_1_EXMPLR ;
   counterOutput(0) <= counterOutput_0_EXMPLR ;
   counterReg : Reg_13 port map ( D(12)=>counterInput_12, D(11)=>
      counterInput_11, D(10)=>counterInput_10, D(9)=>counterInput_9, D(8)=>
      counterInput_8, D(7)=>counterInput_7, D(6)=>counterInput_6, D(5)=>
      counterInput_5, D(4)=>counterInput_4, D(3)=>counterInput_3, D(2)=>
      counterInput_2, D(1)=>counterInput_1, D(0)=>counterInput_0, en=>en, 
      clk=>clk, rst=>rst, Q(12)=>counterOutput_12_EXMPLR, Q(11)=>
      counterOutput_11_EXMPLR, Q(10)=>counterOutput_10_EXMPLR, Q(9)=>
      counterOutput_9_EXMPLR, Q(8)=>counterOutput_8_EXMPLR, Q(7)=>
      counterOutput_7_EXMPLR, Q(6)=>counterOutput_6_EXMPLR, Q(5)=>
      counterOutput_5_EXMPLR, Q(4)=>counterOutput_4_EXMPLR, Q(3)=>
      counterOutput_3_EXMPLR, Q(2)=>counterOutput_2_EXMPLR, Q(1)=>
      counterOutput_1_EXMPLR, Q(0)=>counterOutput_0_EXMPLR);
   nextCount : NBitAdder_13 port map ( a(12)=>counterOutput_12_EXMPLR, a(11)
      =>counterOutput_11_EXMPLR, a(10)=>counterOutput_10_EXMPLR, a(9)=>
      counterOutput_9_EXMPLR, a(8)=>counterOutput_8_EXMPLR, a(7)=>
      counterOutput_7_EXMPLR, a(6)=>counterOutput_6_EXMPLR, a(5)=>
      counterOutput_5_EXMPLR, a(4)=>counterOutput_4_EXMPLR, a(3)=>
      counterOutput_3_EXMPLR, a(2)=>counterOutput_2_EXMPLR, a(1)=>
      counterOutput_1_EXMPLR, a(0)=>counterOutput_0_EXMPLR, b(12)=>
      dummyInput_12, b(11)=>dummyInput_12, b(10)=>dummyInput_12, b(9)=>
      dummyInput_12, b(8)=>dummyInput_12, b(7)=>dummyInput_12, b(6)=>
      dummyInput_12, b(5)=>dummyInput_12, b(4)=>dummyInput_12, b(3)=>
      dummyInput_12, b(2)=>dummyInput_12, b(1)=>dummyInput_12, b(0)=>
      dummyInput_12, carryIn=>PWR, sum(12)=>adderOutput_12, sum(11)=>
      adderOutput_11, sum(10)=>adderOutput_10, sum(9)=>adderOutput_9, sum(8)
      =>adderOutput_8, sum(7)=>adderOutput_7, sum(6)=>adderOutput_6, sum(5)
      =>adderOutput_5, sum(4)=>adderOutput_4, sum(3)=>adderOutput_3, sum(2)
      =>adderOutput_2, sum(1)=>adderOutput_1, sum(0)=>adderOutput_0, 
      carryOut=>DANGLING(0));
   muxloadOrCurrent : Mux2_13 port map ( A(12)=>adderOutput_12, A(11)=>
      adderOutput_11, A(10)=>adderOutput_10, A(9)=>adderOutput_9, A(8)=>
      adderOutput_8, A(7)=>adderOutput_7, A(6)=>adderOutput_6, A(5)=>
      adderOutput_5, A(4)=>adderOutput_4, A(3)=>adderOutput_3, A(2)=>
      adderOutput_2, A(1)=>adderOutput_1, A(0)=>adderOutput_0, B(12)=>
      loadData(12), B(11)=>loadData(11), B(10)=>loadData(10), B(9)=>
      loadData(9), B(8)=>loadData(8), B(7)=>loadData(7), B(6)=>loadData(6), 
      B(5)=>loadData(5), B(4)=>loadData(4), B(3)=>loadData(3), B(2)=>
      loadData(2), B(1)=>loadData(1), B(0)=>loadData(0), S=>load, C(12)=>
      counterInput_12, C(11)=>counterInput_11, C(10)=>counterInput_10, C(9)
      =>counterInput_9, C(8)=>counterInput_8, C(7)=>counterInput_7, C(6)=>
      counterInput_6, C(5)=>counterInput_5, C(4)=>counterInput_4, C(3)=>
      counterInput_3, C(2)=>counterInput_2, C(1)=>counterInput_1, C(0)=>
      counterInput_0);
   ix48 : fake_vcc port map ( Y=>PWR);
   ix46 : fake_gnd port map ( Y=>dummyInput_12);
end UpCounterSyncLoad ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity DMAImage is
   port (
      dataIn : IN std_logic_vector (7 DOWNTO 0) ;
      addressIn : IN std_logic_vector (9 DOWNTO 0) ;
      clk : IN std_logic ;
      enableImageCounter : IN std_logic ;
      enableImageRegister : IN std_logic ;
      rst : IN std_logic ;
      intrDelayed : IN std_logic ;
      dataOut : OUT std_logic_vector (15 DOWNTO 0) ;
      addressOut : OUT std_logic_vector (12 DOWNTO 0)) ;
end DMAImage ;

architecture DMAImage of DMAImage is
   component UpCounterSyncLoad_13
      port (
         loadData : IN std_logic_vector (12 DOWNTO 0) ;
         en : IN std_logic ;
         load : IN std_logic ;
         rst : IN std_logic ;
         clk : IN std_logic ;
         counterOutput : OUT std_logic_vector (12 DOWNTO 0)) ;
   
   end component ;
   component Reg_16
      port (
         D : IN std_logic_vector (15 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         Q : OUT std_logic_vector (15 DOWNTO 0)) ;
   end component ;
   signal addressCounterIn_12: std_logic ;

begin
   addressCounter : UpCounterSyncLoad_13 port map ( loadData(12)=>
      addressCounterIn_12, loadData(11)=>addressCounterIn_12, loadData(10)=>
      addressCounterIn_12, loadData(9)=>addressIn(9), loadData(8)=>
      addressIn(8), loadData(7)=>addressIn(7), loadData(6)=>addressIn(6), 
      loadData(5)=>addressIn(5), loadData(4)=>addressIn(4), loadData(3)=>
      addressIn(3), loadData(2)=>addressIn(2), loadData(1)=>addressIn(1), 
      loadData(0)=>addressIn(0), en=>enableImageCounter, load=>intrDelayed, 
      rst=>rst, clk=>clk, counterOutput(12)=>addressOut(12), 
      counterOutput(11)=>addressOut(11), counterOutput(10)=>addressOut(10), 
      counterOutput(9)=>addressOut(9), counterOutput(8)=>addressOut(8), 
      counterOutput(7)=>addressOut(7), counterOutput(6)=>addressOut(6), 
      counterOutput(5)=>addressOut(5), counterOutput(4)=>addressOut(4), 
      counterOutput(3)=>addressOut(3), counterOutput(2)=>addressOut(2), 
      counterOutput(1)=>addressOut(1), counterOutput(0)=>addressOut(0));
   MyReg : Reg_16 port map ( D(15)=>dataIn(7), D(14)=>dataIn(6), D(13)=>
      dataIn(5), D(12)=>dataIn(4), D(11)=>dataIn(3), D(10)=>dataIn(2), D(9)
      =>dataIn(1), D(8)=>dataIn(0), D(7)=>addressCounterIn_12, D(6)=>
      addressCounterIn_12, D(5)=>addressCounterIn_12, D(4)=>
      addressCounterIn_12, D(3)=>addressCounterIn_12, D(2)=>
      addressCounterIn_12, D(1)=>addressCounterIn_12, D(0)=>
      addressCounterIn_12, en=>enableImageRegister, clk=>clk, rst=>rst, 
      Q(15)=>dataOut(15), Q(14)=>dataOut(14), Q(13)=>dataOut(13), Q(12)=>
      dataOut(12), Q(11)=>dataOut(11), Q(10)=>dataOut(10), Q(9)=>dataOut(9), 
      Q(8)=>dataOut(8), Q(7)=>dataOut(7), Q(6)=>dataOut(6), Q(5)=>dataOut(5), 
      Q(4)=>dataOut(4), Q(3)=>dataOut(3), Q(2)=>dataOut(2), Q(1)=>dataOut(1), 
      Q(0)=>dataOut(0));
   ix53 : fake_gnd port map ( Y=>addressCounterIn_12);
end DMAImage ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity Reg_12 is
   port (
      D : IN std_logic_vector (11 DOWNTO 0) ;
      en : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      Q : OUT std_logic_vector (11 DOWNTO 0)) ;
end Reg_12 ;

architecture RegArch of Reg_12 is
   signal Q_11_EXMPLR, Q_10_EXMPLR, Q_9_EXMPLR, Q_8_EXMPLR, Q_7_EXMPLR, 
      Q_6_EXMPLR, Q_5_EXMPLR, Q_4_EXMPLR, Q_3_EXMPLR, Q_2_EXMPLR, Q_1_EXMPLR, 
      Q_0_EXMPLR, nx180, nx190, nx200, nx210, nx220, nx230, nx240, nx250, 
      nx260, nx270, nx280, nx290, nx341, nx343, nx345, nx347: std_logic ;

begin
   Q(11) <= Q_11_EXMPLR ;
   Q(10) <= Q_10_EXMPLR ;
   Q(9) <= Q_9_EXMPLR ;
   Q(8) <= Q_8_EXMPLR ;
   Q(7) <= Q_7_EXMPLR ;
   Q(6) <= Q_6_EXMPLR ;
   Q(5) <= Q_5_EXMPLR ;
   Q(4) <= Q_4_EXMPLR ;
   Q(3) <= Q_3_EXMPLR ;
   Q(2) <= Q_2_EXMPLR ;
   Q(1) <= Q_1_EXMPLR ;
   Q(0) <= Q_0_EXMPLR ;
   reg_Q_0 : dffr port map ( Q=>Q_0_EXMPLR, QB=>OPEN, D=>nx180, CLK=>clk, R
      =>nx341);
   ix181 : mux21_ni port map ( Y=>nx180, A0=>Q_0_EXMPLR, A1=>D(0), S0=>nx345
   );
   reg_Q_1 : dffr port map ( Q=>Q_1_EXMPLR, QB=>OPEN, D=>nx190, CLK=>clk, R
      =>nx341);
   ix191 : mux21_ni port map ( Y=>nx190, A0=>Q_1_EXMPLR, A1=>D(1), S0=>nx345
   );
   reg_Q_2 : dffr port map ( Q=>Q_2_EXMPLR, QB=>OPEN, D=>nx200, CLK=>clk, R
      =>nx341);
   ix201 : mux21_ni port map ( Y=>nx200, A0=>Q_2_EXMPLR, A1=>D(2), S0=>nx345
   );
   reg_Q_3 : dffr port map ( Q=>Q_3_EXMPLR, QB=>OPEN, D=>nx210, CLK=>clk, R
      =>nx341);
   ix211 : mux21_ni port map ( Y=>nx210, A0=>Q_3_EXMPLR, A1=>D(3), S0=>nx345
   );
   reg_Q_4 : dffr port map ( Q=>Q_4_EXMPLR, QB=>OPEN, D=>nx220, CLK=>clk, R
      =>nx341);
   ix221 : mux21_ni port map ( Y=>nx220, A0=>Q_4_EXMPLR, A1=>D(4), S0=>nx345
   );
   reg_Q_5 : dffr port map ( Q=>Q_5_EXMPLR, QB=>OPEN, D=>nx230, CLK=>clk, R
      =>nx341);
   ix231 : mux21_ni port map ( Y=>nx230, A0=>Q_5_EXMPLR, A1=>D(5), S0=>nx345
   );
   reg_Q_6 : dffr port map ( Q=>Q_6_EXMPLR, QB=>OPEN, D=>nx240, CLK=>clk, R
      =>nx341);
   ix241 : mux21_ni port map ( Y=>nx240, A0=>Q_6_EXMPLR, A1=>D(6), S0=>nx345
   );
   reg_Q_7 : dffr port map ( Q=>Q_7_EXMPLR, QB=>OPEN, D=>nx250, CLK=>clk, R
      =>nx343);
   ix251 : mux21_ni port map ( Y=>nx250, A0=>Q_7_EXMPLR, A1=>D(7), S0=>nx347
   );
   reg_Q_8 : dffr port map ( Q=>Q_8_EXMPLR, QB=>OPEN, D=>nx260, CLK=>clk, R
      =>nx343);
   ix261 : mux21_ni port map ( Y=>nx260, A0=>Q_8_EXMPLR, A1=>D(8), S0=>nx347
   );
   reg_Q_9 : dffr port map ( Q=>Q_9_EXMPLR, QB=>OPEN, D=>nx270, CLK=>clk, R
      =>nx343);
   ix271 : mux21_ni port map ( Y=>nx270, A0=>Q_9_EXMPLR, A1=>D(9), S0=>nx347
   );
   reg_Q_10 : dffr port map ( Q=>Q_10_EXMPLR, QB=>OPEN, D=>nx280, CLK=>clk, 
      R=>nx343);
   ix281 : mux21_ni port map ( Y=>nx280, A0=>Q_10_EXMPLR, A1=>D(10), S0=>
      nx347);
   reg_Q_11 : dffr port map ( Q=>Q_11_EXMPLR, QB=>OPEN, D=>nx290, CLK=>clk, 
      R=>nx343);
   ix291 : mux21_ni port map ( Y=>nx290, A0=>Q_11_EXMPLR, A1=>D(11), S0=>
      nx347);
   ix340 : buf02 port map ( Y=>nx341, A=>rst);
   ix342 : buf02 port map ( Y=>nx343, A=>rst);
   ix344 : buf02 port map ( Y=>nx345, A=>en);
   ix346 : buf02 port map ( Y=>nx347, A=>en);
end RegArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity NBitAdder_12 is
   port (
      a : IN std_logic_vector (11 DOWNTO 0) ;
      b : IN std_logic_vector (11 DOWNTO 0) ;
      carryIn : IN std_logic ;
      sum : OUT std_logic_vector (11 DOWNTO 0) ;
      carryOut : OUT std_logic) ;
end NBitAdder_12 ;

architecture NBitAdderArch of NBitAdder_12 is
   component FullAdder
      port (
         a : IN std_logic ;
         b : IN std_logic ;
         cin : IN std_logic ;
         s : OUT std_logic ;
         cout : OUT std_logic) ;
   end component ;
   signal temp_10, temp_9, temp_8, temp_7, temp_6, temp_5, temp_4, temp_3, 
      temp_2, temp_1, temp_0: std_logic ;

begin
   f0 : FullAdder port map ( a=>a(0), b=>b(0), cin=>carryIn, s=>sum(0), cout
      =>temp_0);
   loop1_1_fx : FullAdder port map ( a=>a(1), b=>b(1), cin=>temp_0, s=>
      sum(1), cout=>temp_1);
   loop1_2_fx : FullAdder port map ( a=>a(2), b=>b(2), cin=>temp_1, s=>
      sum(2), cout=>temp_2);
   loop1_3_fx : FullAdder port map ( a=>a(3), b=>b(3), cin=>temp_2, s=>
      sum(3), cout=>temp_3);
   loop1_4_fx : FullAdder port map ( a=>a(4), b=>b(4), cin=>temp_3, s=>
      sum(4), cout=>temp_4);
   loop1_5_fx : FullAdder port map ( a=>a(5), b=>b(5), cin=>temp_4, s=>
      sum(5), cout=>temp_5);
   loop1_6_fx : FullAdder port map ( a=>a(6), b=>b(6), cin=>temp_5, s=>
      sum(6), cout=>temp_6);
   loop1_7_fx : FullAdder port map ( a=>a(7), b=>b(7), cin=>temp_6, s=>
      sum(7), cout=>temp_7);
   loop1_8_fx : FullAdder port map ( a=>a(8), b=>b(8), cin=>temp_7, s=>
      sum(8), cout=>temp_8);
   loop1_9_fx : FullAdder port map ( a=>a(9), b=>b(9), cin=>temp_8, s=>
      sum(9), cout=>temp_9);
   loop1_10_fx : FullAdder port map ( a=>a(10), b=>b(10), cin=>temp_9, s=>
      sum(10), cout=>temp_10);
   loop1_11_fx : FullAdder port map ( a=>a(11), b=>b(11), cin=>temp_10, s=>
      sum(11), cout=>carryOut);
end NBitAdderArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity IOCounter5_12 is
   port (
      en : IN std_logic ;
      reset : IN std_logic ;
      clk : IN std_logic ;
      count : OUT std_logic_vector (11 DOWNTO 0)) ;
end IOCounter5_12 ;

architecture IOCounter5Arch of IOCounter5_12 is
   component Reg_12
      port (
         D : IN std_logic_vector (11 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         Q : OUT std_logic_vector (11 DOWNTO 0)) ;
   end component ;
   component NBitAdder_12
      port (
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         carryIn : IN std_logic ;
         sum : OUT std_logic_vector (11 DOWNTO 0) ;
         carryOut : OUT std_logic) ;
   end component ;
   signal count_11_EXMPLR, count_10_EXMPLR, count_9_EXMPLR, count_8_EXMPLR, 
      count_7_EXMPLR, count_6_EXMPLR, count_5_EXMPLR, count_4_EXMPLR, 
      count_3_EXMPLR, count_2_EXMPLR, count_1_EXMPLR, count_0_EXMPLR, 
      addedOne_11, addedOne_10, addedOne_9, addedOne_8, addedOne_7, 
      addedOne_6, addedOne_5, addedOne_4, addedOne_3, addedOne_2, addedOne_1, 
      addedOne_0, finalReset, oneSignal_0, oneSignal_11: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   count(11) <= count_11_EXMPLR ;
   count(10) <= count_10_EXMPLR ;
   count(9) <= count_9_EXMPLR ;
   count(8) <= count_8_EXMPLR ;
   count(7) <= count_7_EXMPLR ;
   count(6) <= count_6_EXMPLR ;
   count(5) <= count_5_EXMPLR ;
   count(4) <= count_4_EXMPLR ;
   count(3) <= count_3_EXMPLR ;
   count(2) <= count_2_EXMPLR ;
   count(1) <= count_1_EXMPLR ;
   count(0) <= count_0_EXMPLR ;
   counterReg : Reg_12 port map ( D(11)=>addedOne_11, D(10)=>addedOne_10, 
      D(9)=>addedOne_9, D(8)=>addedOne_8, D(7)=>addedOne_7, D(6)=>addedOne_6, 
      D(5)=>addedOne_5, D(4)=>addedOne_4, D(3)=>addedOne_3, D(2)=>addedOne_2, 
      D(1)=>addedOne_1, D(0)=>addedOne_0, en=>en, clk=>clk, rst=>finalReset, 
      Q(11)=>count_11_EXMPLR, Q(10)=>count_10_EXMPLR, Q(9)=>count_9_EXMPLR, 
      Q(8)=>count_8_EXMPLR, Q(7)=>count_7_EXMPLR, Q(6)=>count_6_EXMPLR, Q(5)
      =>count_5_EXMPLR, Q(4)=>count_4_EXMPLR, Q(3)=>count_3_EXMPLR, Q(2)=>
      count_2_EXMPLR, Q(1)=>count_1_EXMPLR, Q(0)=>count_0_EXMPLR);
   nextCount : NBitAdder_12 port map ( a(11)=>count_11_EXMPLR, a(10)=>
      count_10_EXMPLR, a(9)=>count_9_EXMPLR, a(8)=>count_8_EXMPLR, a(7)=>
      count_7_EXMPLR, a(6)=>count_6_EXMPLR, a(5)=>count_5_EXMPLR, a(4)=>
      count_4_EXMPLR, a(3)=>count_3_EXMPLR, a(2)=>count_2_EXMPLR, a(1)=>
      count_1_EXMPLR, a(0)=>count_0_EXMPLR, b(11)=>oneSignal_11, b(10)=>
      oneSignal_11, b(9)=>oneSignal_11, b(8)=>oneSignal_11, b(7)=>
      oneSignal_11, b(6)=>oneSignal_11, b(5)=>oneSignal_11, b(4)=>
      oneSignal_11, b(3)=>oneSignal_11, b(2)=>oneSignal_11, b(1)=>
      oneSignal_11, b(0)=>oneSignal_0, carryIn=>oneSignal_0, sum(11)=>
      addedOne_11, sum(10)=>addedOne_10, sum(9)=>addedOne_9, sum(8)=>
      addedOne_8, sum(7)=>addedOne_7, sum(6)=>addedOne_6, sum(5)=>addedOne_5, 
      sum(4)=>addedOne_4, sum(3)=>addedOne_3, sum(2)=>addedOne_2, sum(1)=>
      addedOne_1, sum(0)=>addedOne_0, carryOut=>DANGLING(0));
   ix35 : fake_gnd port map ( Y=>oneSignal_11);
   ix33 : fake_vcc port map ( Y=>oneSignal_0);
   ix1 : and02 port map ( Y=>finalReset, A0=>reset, A1=>clk);
end IOCounter5Arch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity DMACNN is
   port (
      dataIn : IN std_logic_vector (15 DOWNTO 0) ;
      clk : IN std_logic ;
      enableCNNCounter : IN std_logic ;
      enableCNNRegister : IN std_logic ;
      rst : IN std_logic ;
      dataOut : OUT std_logic_vector (15 DOWNTO 0) ;
      addressOut : OUT std_logic_vector (11 DOWNTO 0)) ;
end DMACNN ;

architecture DMACNN of DMACNN is
   component IOCounter5_12
      port (
         en : IN std_logic ;
         reset : IN std_logic ;
         clk : IN std_logic ;
         count : OUT std_logic_vector (11 DOWNTO 0)) ;
   end component ;
   component Reg_16
      port (
         D : IN std_logic_vector (15 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         Q : OUT std_logic_vector (15 DOWNTO 0)) ;
   end component ;
begin
   addressCounter : IOCounter5_12 port map ( en=>enableCNNCounter, reset=>
      rst, clk=>clk, count(11)=>addressOut(11), count(10)=>addressOut(10), 
      count(9)=>addressOut(9), count(8)=>addressOut(8), count(7)=>
      addressOut(7), count(6)=>addressOut(6), count(5)=>addressOut(5), 
      count(4)=>addressOut(4), count(3)=>addressOut(3), count(2)=>
      addressOut(2), count(1)=>addressOut(1), count(0)=>addressOut(0));
   MyReg : Reg_16 port map ( D(15)=>dataIn(15), D(14)=>dataIn(14), D(13)=>
      dataIn(13), D(12)=>dataIn(12), D(11)=>dataIn(11), D(10)=>dataIn(10), 
      D(9)=>dataIn(9), D(8)=>dataIn(8), D(7)=>dataIn(7), D(6)=>dataIn(6), 
      D(5)=>dataIn(5), D(4)=>dataIn(4), D(3)=>dataIn(3), D(2)=>dataIn(2), 
      D(1)=>dataIn(1), D(0)=>dataIn(0), en=>enableCNNRegister, clk=>clk, rst
      =>rst, Q(15)=>dataOut(15), Q(14)=>dataOut(14), Q(13)=>dataOut(13), 
      Q(12)=>dataOut(12), Q(11)=>dataOut(11), Q(10)=>dataOut(10), Q(9)=>
      dataOut(9), Q(8)=>dataOut(8), Q(7)=>dataOut(7), Q(6)=>dataOut(6), Q(5)
      =>dataOut(5), Q(4)=>dataOut(4), Q(3)=>dataOut(3), Q(2)=>dataOut(2), 
      Q(1)=>dataOut(1), Q(0)=>dataOut(0));
end DMACNN ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity Reg_3 is
   port (
      D : IN std_logic_vector (2 DOWNTO 0) ;
      en : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      Q : OUT std_logic_vector (2 DOWNTO 0)) ;
end Reg_3 ;

architecture RegArch of Reg_3 is
   signal Q_2_EXMPLR, Q_1_EXMPLR, Q_0_EXMPLR, nx72, nx82, nx92: std_logic ;

begin
   Q(2) <= Q_2_EXMPLR ;
   Q(1) <= Q_1_EXMPLR ;
   Q(0) <= Q_0_EXMPLR ;
   reg_Q_0 : dffr port map ( Q=>Q_0_EXMPLR, QB=>OPEN, D=>nx72, CLK=>clk, R=>
      rst);
   ix73 : mux21_ni port map ( Y=>nx72, A0=>Q_0_EXMPLR, A1=>D(0), S0=>en);
   reg_Q_1 : dffr port map ( Q=>Q_1_EXMPLR, QB=>OPEN, D=>nx82, CLK=>clk, R=>
      rst);
   ix83 : mux21_ni port map ( Y=>nx82, A0=>Q_1_EXMPLR, A1=>D(1), S0=>en);
   reg_Q_2 : dffr port map ( Q=>Q_2_EXMPLR, QB=>OPEN, D=>nx92, CLK=>clk, R=>
      rst);
   ix93 : mux21_ni port map ( Y=>nx92, A0=>Q_2_EXMPLR, A1=>D(2), S0=>en);

end RegArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity NBitAdder_3 is
   port (
      a : IN std_logic_vector (2 DOWNTO 0) ;
      b : IN std_logic_vector (2 DOWNTO 0) ;
      carryIn : IN std_logic ;
      sum : OUT std_logic_vector (2 DOWNTO 0) ;
      carryOut : OUT std_logic) ;
end NBitAdder_3 ;

architecture NBitAdderArch of NBitAdder_3 is
   component FullAdder
      port (
         a : IN std_logic ;
         b : IN std_logic ;
         cin : IN std_logic ;
         s : OUT std_logic ;
         cout : OUT std_logic) ;
   end component ;
   signal temp_1, temp_0: std_logic ;

begin
   f0 : FullAdder port map ( a=>a(0), b=>b(0), cin=>carryIn, s=>sum(0), cout
      =>temp_0);
   loop1_1_fx : FullAdder port map ( a=>a(1), b=>b(1), cin=>temp_0, s=>
      sum(1), cout=>temp_1);
   loop1_2_fx : FullAdder port map ( a=>a(2), b=>b(2), cin=>temp_1, s=>
      sum(2), cout=>carryOut);
end NBitAdderArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity Mux2_3 is
   port (
      A : IN std_logic_vector (2 DOWNTO 0) ;
      B : IN std_logic_vector (2 DOWNTO 0) ;
      S : IN std_logic ;
      C : OUT std_logic_vector (2 DOWNTO 0)) ;
end Mux2_3 ;

architecture Mux2Arch of Mux2_3 is
begin
   ix7 : mux21_ni port map ( Y=>C(0), A0=>A(0), A1=>B(0), S0=>S);
   ix15 : mux21_ni port map ( Y=>C(1), A0=>A(1), A1=>B(1), S0=>S);
   ix23 : mux21_ni port map ( Y=>C(2), A0=>A(2), A1=>B(2), S0=>S);
end Mux2Arch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity ModuloCounter_3 is
   port (
      modulator : IN std_logic_vector (2 DOWNTO 0) ;
      en : IN std_logic ;
      rst : IN std_logic ;
      clk : IN std_logic ;
      currentCount : OUT std_logic_vector (2 DOWNTO 0)) ;
end ModuloCounter_3 ;

architecture ModuloCounterArch of ModuloCounter_3 is
   component Reg_3
      port (
         D : IN std_logic_vector (2 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         Q : OUT std_logic_vector (2 DOWNTO 0)) ;
   end component ;
   component NBitAdder_3
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         carryIn : IN std_logic ;
         sum : OUT std_logic_vector (2 DOWNTO 0) ;
         carryOut : OUT std_logic) ;
   end component ;
   component Mux2_3
      port (
         A : IN std_logic_vector (2 DOWNTO 0) ;
         B : IN std_logic_vector (2 DOWNTO 0) ;
         S : IN std_logic ;
         C : OUT std_logic_vector (2 DOWNTO 0)) ;
   end component ;
   signal currentCount_2_EXMPLR, currentCount_1_EXMPLR, 
      currentCount_0_EXMPLR, nextCount_2, nextCount_1, nextCount_0, 
      muxedCount_2, muxedCount_1, muxedCount_0, sel, zeros_2, PWR, nx36, 
      nx38, nx40: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   currentCount(2) <= currentCount_2_EXMPLR ;
   currentCount(1) <= currentCount_1_EXMPLR ;
   currentCount(0) <= currentCount_0_EXMPLR ;
   counterReg : Reg_3 port map ( D(2)=>muxedCount_2, D(1)=>muxedCount_1, 
      D(0)=>muxedCount_0, en=>en, clk=>clk, rst=>rst, Q(2)=>
      currentCount_2_EXMPLR, Q(1)=>currentCount_1_EXMPLR, Q(0)=>
      currentCount_0_EXMPLR);
   nBitAdder : NBitAdder_3 port map ( a(2)=>currentCount_2_EXMPLR, a(1)=>
      currentCount_1_EXMPLR, a(0)=>currentCount_0_EXMPLR, b(2)=>zeros_2, 
      b(1)=>zeros_2, b(0)=>zeros_2, carryIn=>PWR, sum(2)=>nextCount_2, 
      sum(1)=>nextCount_1, sum(0)=>nextCount_0, carryOut=>DANGLING(0));
   Mux2 : Mux2_3 port map ( A(2)=>nextCount_2, A(1)=>nextCount_1, A(0)=>
      nextCount_0, B(2)=>zeros_2, B(1)=>zeros_2, B(0)=>zeros_2, S=>sel, C(2)
      =>muxedCount_2, C(1)=>muxedCount_1, C(0)=>muxedCount_0);
   ix26 : fake_vcc port map ( Y=>PWR);
   ix24 : fake_gnd port map ( Y=>zeros_2);
   ix15 : and03 port map ( Y=>sel, A0=>nx36, A1=>nx38, A2=>nx40);
   ix37 : xnor2 port map ( Y=>nx36, A0=>currentCount_1_EXMPLR, A1=>
      modulator(1));
   ix39 : xnor2 port map ( Y=>nx38, A0=>currentCount_2_EXMPLR, A1=>
      modulator(2));
   ix41 : xnor2 port map ( Y=>nx40, A0=>currentCount_0_EXMPLR, A1=>
      modulator(0));
end ModuloCounterArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity InverseMux_16 is
   port (
      dataIn : IN std_logic_vector (15 DOWNTO 0) ;
      sel : IN std_logic_vector (2 DOWNTO 0) ;
      en : IN std_logic ;
      rst : IN std_logic ;
      dataOut1 : OUT std_logic_vector (15 DOWNTO 0) ;
      dataOut2 : OUT std_logic_vector (15 DOWNTO 0) ;
      dataOut3 : OUT std_logic_vector (15 DOWNTO 0) ;
      dataOut4 : OUT std_logic_vector (15 DOWNTO 0) ;
      dataOut5 : OUT std_logic_vector (15 DOWNTO 0)) ;
end InverseMux_16 ;

architecture InverseMuxArchitecture of InverseMux_16 is
   signal nx48, nx92, nx134, nx178, nx1142, nx1144, nx1146, nx1148, nx1196, 
      nx1198, nx1220, nx1296, nx1304, nx1312, nx1324, nx1326, nx1328, nx1330, 
      nx1332, nx1334, nx1336, nx1338, nx1340, nx1342, nx1344, nx1346, nx1348, 
      nx1350, nx1352, nx1354, nx1356, nx1358: std_logic ;

begin
   ix1143 : and02 port map ( Y=>nx1142, A0=>nx1144, A1=>rst);
   ix1145 : nand04 port map ( Y=>nx1144, A0=>nx1146, A1=>nx1148, A2=>sel(2), 
      A3=>en);
   ix1147 : inv01 port map ( Y=>nx1146, A=>sel(1));
   ix1149 : inv01 port map ( Y=>nx1148, A=>sel(0));
   ix1197 : and02 port map ( Y=>nx1196, A0=>nx1198, A1=>rst);
   ix1199 : nand03 port map ( Y=>nx1198, A0=>nx48, A1=>sel(1), A2=>sel(0));
   ix49 : nor02ii port map ( Y=>nx48, A0=>sel(2), A1=>en);
   ix1221 : inv01 port map ( Y=>nx1220, A=>rst);
   ix179 : nor02_2x port map ( Y=>nx178, A0=>sel(1), A1=>sel(0));
   ix15 : and02 port map ( Y=>dataOut5(0), A0=>dataIn(0), A1=>nx1324);
   ix17 : and02 port map ( Y=>dataOut5(1), A0=>dataIn(1), A1=>nx1324);
   ix19 : and02 port map ( Y=>dataOut5(2), A0=>dataIn(2), A1=>nx1324);
   ix21 : and02 port map ( Y=>dataOut5(3), A0=>dataIn(3), A1=>nx1324);
   ix23 : and02 port map ( Y=>dataOut5(4), A0=>dataIn(4), A1=>nx1324);
   ix25 : and02 port map ( Y=>dataOut5(5), A0=>dataIn(5), A1=>nx1324);
   ix27 : and02 port map ( Y=>dataOut5(6), A0=>dataIn(6), A1=>nx1324);
   ix29 : and02 port map ( Y=>dataOut5(7), A0=>dataIn(7), A1=>nx1326);
   ix31 : and02 port map ( Y=>dataOut5(8), A0=>dataIn(8), A1=>nx1326);
   ix33 : and02 port map ( Y=>dataOut5(9), A0=>dataIn(9), A1=>nx1326);
   ix35 : and02 port map ( Y=>dataOut5(10), A0=>dataIn(10), A1=>nx1326);
   ix37 : and02 port map ( Y=>dataOut5(11), A0=>dataIn(11), A1=>nx1326);
   ix39 : and02 port map ( Y=>dataOut5(12), A0=>dataIn(12), A1=>nx1326);
   ix41 : and02 port map ( Y=>dataOut5(13), A0=>dataIn(13), A1=>nx1326);
   ix43 : and02 port map ( Y=>dataOut5(14), A0=>dataIn(14), A1=>nx1328);
   ix45 : and02 port map ( Y=>dataOut5(15), A0=>dataIn(15), A1=>nx1328);
   ix59 : and02 port map ( Y=>dataOut4(0), A0=>dataIn(0), A1=>nx1330);
   ix61 : and02 port map ( Y=>dataOut4(1), A0=>dataIn(1), A1=>nx1330);
   ix63 : and02 port map ( Y=>dataOut4(2), A0=>dataIn(2), A1=>nx1330);
   ix65 : and02 port map ( Y=>dataOut4(3), A0=>dataIn(3), A1=>nx1330);
   ix67 : and02 port map ( Y=>dataOut4(4), A0=>dataIn(4), A1=>nx1330);
   ix69 : and02 port map ( Y=>dataOut4(5), A0=>dataIn(5), A1=>nx1330);
   ix71 : and02 port map ( Y=>dataOut4(6), A0=>dataIn(6), A1=>nx1330);
   ix73 : and02 port map ( Y=>dataOut4(7), A0=>dataIn(7), A1=>nx1332);
   ix75 : and02 port map ( Y=>dataOut4(8), A0=>dataIn(8), A1=>nx1332);
   ix77 : and02 port map ( Y=>dataOut4(9), A0=>dataIn(9), A1=>nx1332);
   ix79 : and02 port map ( Y=>dataOut4(10), A0=>dataIn(10), A1=>nx1332);
   ix81 : and02 port map ( Y=>dataOut4(11), A0=>dataIn(11), A1=>nx1332);
   ix83 : and02 port map ( Y=>dataOut4(12), A0=>dataIn(12), A1=>nx1332);
   ix85 : and02 port map ( Y=>dataOut4(13), A0=>dataIn(13), A1=>nx1332);
   ix87 : and02 port map ( Y=>dataOut4(14), A0=>dataIn(14), A1=>nx1334);
   ix89 : and02 port map ( Y=>dataOut4(15), A0=>dataIn(15), A1=>nx1334);
   ix101 : and02 port map ( Y=>dataOut3(0), A0=>dataIn(0), A1=>nx1338);
   ix1218 : ao21 port map ( Y=>nx1296, A0=>nx48, A1=>nx92, B0=>nx1220);
   ix93 : nor02ii port map ( Y=>nx92, A0=>sel(0), A1=>sel(1));
   ix103 : and02 port map ( Y=>dataOut3(1), A0=>dataIn(1), A1=>nx1338);
   ix105 : and02 port map ( Y=>dataOut3(2), A0=>dataIn(2), A1=>nx1338);
   ix107 : and02 port map ( Y=>dataOut3(3), A0=>dataIn(3), A1=>nx1338);
   ix109 : and02 port map ( Y=>dataOut3(4), A0=>dataIn(4), A1=>nx1338);
   ix111 : and02 port map ( Y=>dataOut3(5), A0=>dataIn(5), A1=>nx1338);
   ix113 : and02 port map ( Y=>dataOut3(6), A0=>dataIn(6), A1=>nx1338);
   ix115 : and02 port map ( Y=>dataOut3(7), A0=>dataIn(7), A1=>nx1340);
   ix117 : and02 port map ( Y=>dataOut3(8), A0=>dataIn(8), A1=>nx1340);
   ix119 : and02 port map ( Y=>dataOut3(9), A0=>dataIn(9), A1=>nx1340);
   ix121 : and02 port map ( Y=>dataOut3(10), A0=>dataIn(10), A1=>nx1340);
   ix123 : and02 port map ( Y=>dataOut3(11), A0=>dataIn(11), A1=>nx1340);
   ix125 : and02 port map ( Y=>dataOut3(12), A0=>dataIn(12), A1=>nx1340);
   ix127 : and02 port map ( Y=>dataOut3(13), A0=>dataIn(13), A1=>nx1340);
   ix129 : and02 port map ( Y=>dataOut3(14), A0=>dataIn(14), A1=>nx1342);
   ix131 : and02 port map ( Y=>dataOut3(15), A0=>dataIn(15), A1=>nx1342);
   ix143 : and02 port map ( Y=>dataOut2(0), A0=>dataIn(0), A1=>nx1346);
   ix1239 : ao21 port map ( Y=>nx1304, A0=>nx48, A1=>nx134, B0=>nx1220);
   ix135 : nor02ii port map ( Y=>nx134, A0=>sel(1), A1=>sel(0));
   ix145 : and02 port map ( Y=>dataOut2(1), A0=>dataIn(1), A1=>nx1346);
   ix147 : and02 port map ( Y=>dataOut2(2), A0=>dataIn(2), A1=>nx1346);
   ix149 : and02 port map ( Y=>dataOut2(3), A0=>dataIn(3), A1=>nx1346);
   ix151 : and02 port map ( Y=>dataOut2(4), A0=>dataIn(4), A1=>nx1346);
   ix153 : and02 port map ( Y=>dataOut2(5), A0=>dataIn(5), A1=>nx1346);
   ix155 : and02 port map ( Y=>dataOut2(6), A0=>dataIn(6), A1=>nx1346);
   ix157 : and02 port map ( Y=>dataOut2(7), A0=>dataIn(7), A1=>nx1348);
   ix159 : and02 port map ( Y=>dataOut2(8), A0=>dataIn(8), A1=>nx1348);
   ix161 : and02 port map ( Y=>dataOut2(9), A0=>dataIn(9), A1=>nx1348);
   ix163 : and02 port map ( Y=>dataOut2(10), A0=>dataIn(10), A1=>nx1348);
   ix165 : and02 port map ( Y=>dataOut2(11), A0=>dataIn(11), A1=>nx1348);
   ix167 : and02 port map ( Y=>dataOut2(12), A0=>dataIn(12), A1=>nx1348);
   ix169 : and02 port map ( Y=>dataOut2(13), A0=>dataIn(13), A1=>nx1348);
   ix171 : and02 port map ( Y=>dataOut2(14), A0=>dataIn(14), A1=>nx1350);
   ix173 : and02 port map ( Y=>dataOut2(15), A0=>dataIn(15), A1=>nx1350);
   ix187 : and02 port map ( Y=>dataOut1(0), A0=>dataIn(0), A1=>nx1354);
   ix1258 : ao21 port map ( Y=>nx1312, A0=>nx48, A1=>nx178, B0=>nx1220);
   ix189 : and02 port map ( Y=>dataOut1(1), A0=>dataIn(1), A1=>nx1354);
   ix191 : and02 port map ( Y=>dataOut1(2), A0=>dataIn(2), A1=>nx1354);
   ix193 : and02 port map ( Y=>dataOut1(3), A0=>dataIn(3), A1=>nx1354);
   ix195 : and02 port map ( Y=>dataOut1(4), A0=>dataIn(4), A1=>nx1354);
   ix197 : and02 port map ( Y=>dataOut1(5), A0=>dataIn(5), A1=>nx1354);
   ix199 : and02 port map ( Y=>dataOut1(6), A0=>dataIn(6), A1=>nx1354);
   ix201 : and02 port map ( Y=>dataOut1(7), A0=>dataIn(7), A1=>nx1356);
   ix203 : and02 port map ( Y=>dataOut1(8), A0=>dataIn(8), A1=>nx1356);
   ix205 : and02 port map ( Y=>dataOut1(9), A0=>dataIn(9), A1=>nx1356);
   ix207 : and02 port map ( Y=>dataOut1(10), A0=>dataIn(10), A1=>nx1356);
   ix209 : and02 port map ( Y=>dataOut1(11), A0=>dataIn(11), A1=>nx1356);
   ix211 : and02 port map ( Y=>dataOut1(12), A0=>dataIn(12), A1=>nx1356);
   ix213 : and02 port map ( Y=>dataOut1(13), A0=>dataIn(13), A1=>nx1356);
   ix215 : and02 port map ( Y=>dataOut1(14), A0=>dataIn(14), A1=>nx1358);
   ix217 : and02 port map ( Y=>dataOut1(15), A0=>dataIn(15), A1=>nx1358);
   ix1323 : inv02 port map ( Y=>nx1324, A=>nx1142);
   ix1325 : inv02 port map ( Y=>nx1326, A=>nx1142);
   ix1327 : inv02 port map ( Y=>nx1328, A=>nx1142);
   ix1329 : inv02 port map ( Y=>nx1330, A=>nx1196);
   ix1331 : inv02 port map ( Y=>nx1332, A=>nx1196);
   ix1333 : inv02 port map ( Y=>nx1334, A=>nx1196);
   ix1335 : inv01 port map ( Y=>nx1336, A=>nx1296);
   ix1337 : inv02 port map ( Y=>nx1338, A=>nx1336);
   ix1339 : inv02 port map ( Y=>nx1340, A=>nx1336);
   ix1341 : inv02 port map ( Y=>nx1342, A=>nx1336);
   ix1343 : inv01 port map ( Y=>nx1344, A=>nx1304);
   ix1345 : inv02 port map ( Y=>nx1346, A=>nx1344);
   ix1347 : inv02 port map ( Y=>nx1348, A=>nx1344);
   ix1349 : inv02 port map ( Y=>nx1350, A=>nx1344);
   ix1351 : inv01 port map ( Y=>nx1352, A=>nx1312);
   ix1353 : inv02 port map ( Y=>nx1354, A=>nx1352);
   ix1355 : inv02 port map ( Y=>nx1356, A=>nx1352);
   ix1357 : inv02 port map ( Y=>nx1358, A=>nx1352);
end InverseMuxArchitecture ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity NBitAdder_16 is
   port (
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      carryIn : IN std_logic ;
      sum : OUT std_logic_vector (15 DOWNTO 0) ;
      carryOut : OUT std_logic) ;
end NBitAdder_16 ;

architecture NBitAdderArch of NBitAdder_16 is
   component FullAdder
      port (
         a : IN std_logic ;
         b : IN std_logic ;
         cin : IN std_logic ;
         s : OUT std_logic ;
         cout : OUT std_logic) ;
   end component ;
   signal temp_14, temp_13, temp_12, temp_11, temp_10, temp_9, temp_8, 
      temp_7, temp_6, temp_5, temp_4, temp_3, temp_2, temp_1, temp_0: 
   std_logic ;

begin
   f0 : FullAdder port map ( a=>a(0), b=>b(0), cin=>carryIn, s=>sum(0), cout
      =>temp_0);
   loop1_1_fx : FullAdder port map ( a=>a(1), b=>b(1), cin=>temp_0, s=>
      sum(1), cout=>temp_1);
   loop1_2_fx : FullAdder port map ( a=>a(2), b=>b(2), cin=>temp_1, s=>
      sum(2), cout=>temp_2);
   loop1_3_fx : FullAdder port map ( a=>a(3), b=>b(3), cin=>temp_2, s=>
      sum(3), cout=>temp_3);
   loop1_4_fx : FullAdder port map ( a=>a(4), b=>b(4), cin=>temp_3, s=>
      sum(4), cout=>temp_4);
   loop1_5_fx : FullAdder port map ( a=>a(5), b=>b(5), cin=>temp_4, s=>
      sum(5), cout=>temp_5);
   loop1_6_fx : FullAdder port map ( a=>a(6), b=>b(6), cin=>temp_5, s=>
      sum(6), cout=>temp_6);
   loop1_7_fx : FullAdder port map ( a=>a(7), b=>b(7), cin=>temp_6, s=>
      sum(7), cout=>temp_7);
   loop1_8_fx : FullAdder port map ( a=>a(8), b=>b(8), cin=>temp_7, s=>
      sum(8), cout=>temp_8);
   loop1_9_fx : FullAdder port map ( a=>a(9), b=>b(9), cin=>temp_8, s=>
      sum(9), cout=>temp_9);
   loop1_10_fx : FullAdder port map ( a=>a(10), b=>b(10), cin=>temp_9, s=>
      sum(10), cout=>temp_10);
   loop1_11_fx : FullAdder port map ( a=>a(11), b=>b(11), cin=>temp_10, s=>
      sum(11), cout=>temp_11);
   loop1_12_fx : FullAdder port map ( a=>a(12), b=>b(12), cin=>temp_11, s=>
      sum(12), cout=>temp_12);
   loop1_13_fx : FullAdder port map ( a=>a(13), b=>b(13), cin=>temp_12, s=>
      sum(13), cout=>temp_13);
   loop1_14_fx : FullAdder port map ( a=>a(14), b=>b(14), cin=>temp_13, s=>
      sum(14), cout=>temp_14);
   loop1_15_fx : FullAdder port map ( a=>a(15), b=>b(15), cin=>temp_14, s=>
      sum(15), cout=>carryOut);
end NBitAdderArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity IOCounter2_16 is
   port (
      en : IN std_logic ;
      reset : IN std_logic ;
      clk : IN std_logic ;
      count : OUT std_logic_vector (15 DOWNTO 0)) ;
end IOCounter2_16 ;

architecture IOCounter2Arch of IOCounter2_16 is
   component Reg_16
      port (
         D : IN std_logic_vector (15 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         Q : OUT std_logic_vector (15 DOWNTO 0)) ;
   end component ;
   component NBitAdder_16
      port (
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         carryIn : IN std_logic ;
         sum : OUT std_logic_vector (15 DOWNTO 0) ;
         carryOut : OUT std_logic) ;
   end component ;
   signal count_15_EXMPLR, count_14_EXMPLR, count_13_EXMPLR, count_12_EXMPLR, 
      count_11_EXMPLR, count_10_EXMPLR, count_9_EXMPLR, count_8_EXMPLR, 
      count_7_EXMPLR, count_6_EXMPLR, count_5_EXMPLR, count_4_EXMPLR, 
      count_3_EXMPLR, count_2_EXMPLR, count_1_EXMPLR, count_0_EXMPLR, 
      addedOne_15, addedOne_14, addedOne_13, addedOne_12, addedOne_11, 
      addedOne_10, addedOne_9, addedOne_8, addedOne_7, addedOne_6, 
      addedOne_5, addedOne_4, addedOne_3, addedOne_2, addedOne_1, addedOne_0, 
      finalReset, oneSignal_15, PWR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   count(15) <= count_15_EXMPLR ;
   count(14) <= count_14_EXMPLR ;
   count(13) <= count_13_EXMPLR ;
   count(12) <= count_12_EXMPLR ;
   count(11) <= count_11_EXMPLR ;
   count(10) <= count_10_EXMPLR ;
   count(9) <= count_9_EXMPLR ;
   count(8) <= count_8_EXMPLR ;
   count(7) <= count_7_EXMPLR ;
   count(6) <= count_6_EXMPLR ;
   count(5) <= count_5_EXMPLR ;
   count(4) <= count_4_EXMPLR ;
   count(3) <= count_3_EXMPLR ;
   count(2) <= count_2_EXMPLR ;
   count(1) <= count_1_EXMPLR ;
   count(0) <= count_0_EXMPLR ;
   counterReg : Reg_16 port map ( D(15)=>addedOne_15, D(14)=>addedOne_14, 
      D(13)=>addedOne_13, D(12)=>addedOne_12, D(11)=>addedOne_11, D(10)=>
      addedOne_10, D(9)=>addedOne_9, D(8)=>addedOne_8, D(7)=>addedOne_7, 
      D(6)=>addedOne_6, D(5)=>addedOne_5, D(4)=>addedOne_4, D(3)=>addedOne_3, 
      D(2)=>addedOne_2, D(1)=>addedOne_1, D(0)=>addedOne_0, en=>en, clk=>clk, 
      rst=>finalReset, Q(15)=>count_15_EXMPLR, Q(14)=>count_14_EXMPLR, Q(13)
      =>count_13_EXMPLR, Q(12)=>count_12_EXMPLR, Q(11)=>count_11_EXMPLR, 
      Q(10)=>count_10_EXMPLR, Q(9)=>count_9_EXMPLR, Q(8)=>count_8_EXMPLR, 
      Q(7)=>count_7_EXMPLR, Q(6)=>count_6_EXMPLR, Q(5)=>count_5_EXMPLR, Q(4)
      =>count_4_EXMPLR, Q(3)=>count_3_EXMPLR, Q(2)=>count_2_EXMPLR, Q(1)=>
      count_1_EXMPLR, Q(0)=>count_0_EXMPLR);
   nextCount : NBitAdder_16 port map ( a(15)=>count_15_EXMPLR, a(14)=>
      count_14_EXMPLR, a(13)=>count_13_EXMPLR, a(12)=>count_12_EXMPLR, a(11)
      =>count_11_EXMPLR, a(10)=>count_10_EXMPLR, a(9)=>count_9_EXMPLR, a(8)
      =>count_8_EXMPLR, a(7)=>count_7_EXMPLR, a(6)=>count_6_EXMPLR, a(5)=>
      count_5_EXMPLR, a(4)=>count_4_EXMPLR, a(3)=>count_3_EXMPLR, a(2)=>
      count_2_EXMPLR, a(1)=>count_1_EXMPLR, a(0)=>count_0_EXMPLR, b(15)=>
      oneSignal_15, b(14)=>oneSignal_15, b(13)=>oneSignal_15, b(12)=>
      oneSignal_15, b(11)=>oneSignal_15, b(10)=>oneSignal_15, b(9)=>
      oneSignal_15, b(8)=>oneSignal_15, b(7)=>oneSignal_15, b(6)=>
      oneSignal_15, b(5)=>oneSignal_15, b(4)=>oneSignal_15, b(3)=>
      oneSignal_15, b(2)=>oneSignal_15, b(1)=>oneSignal_15, b(0)=>
      oneSignal_15, carryIn=>PWR, sum(15)=>addedOne_15, sum(14)=>addedOne_14, 
      sum(13)=>addedOne_13, sum(12)=>addedOne_12, sum(11)=>addedOne_11, 
      sum(10)=>addedOne_10, sum(9)=>addedOne_9, sum(8)=>addedOne_8, sum(7)=>
      addedOne_7, sum(6)=>addedOne_6, sum(5)=>addedOne_5, sum(4)=>addedOne_4, 
      sum(3)=>addedOne_3, sum(2)=>addedOne_2, sum(1)=>addedOne_1, sum(0)=>
      addedOne_0, carryOut=>DANGLING(0));
   ix43 : fake_vcc port map ( Y=>PWR);
   ix41 : fake_gnd port map ( Y=>oneSignal_15);
   ix1 : and02 port map ( Y=>finalReset, A0=>reset, A1=>clk);
end IOCounter2Arch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity FCDMA_16 is
   port (
      dataIn : IN std_logic_vector (15 DOWNTO 0) ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      addressCounterEnable : IN std_logic ;
      delayedInt : IN std_logic ;
      doneFCRAM : IN std_logic ;
      address : OUT std_logic_vector (15 DOWNTO 0) ;
      dataOut : OUT std_logic_vector (79 DOWNTO 0) ;
      write : OUT std_logic) ;
end FCDMA_16 ;

architecture FCDMAArch of FCDMA_16 is
   component Reg_16
      port (
         D : IN std_logic_vector (15 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         Q : OUT std_logic_vector (15 DOWNTO 0)) ;
   end component ;
   component ModuloCounter_3
      port (
         modulator : IN std_logic_vector (2 DOWNTO 0) ;
         en : IN std_logic ;
         rst : IN std_logic ;
         clk : IN std_logic ;
         currentCount : OUT std_logic_vector (2 DOWNTO 0)) ;
   end component ;
   component InverseMux_16
      port (
         dataIn : IN std_logic_vector (15 DOWNTO 0) ;
         sel : IN std_logic_vector (2 DOWNTO 0) ;
         en : IN std_logic ;
         rst : IN std_logic ;
         dataOut1 : OUT std_logic_vector (15 DOWNTO 0) ;
         dataOut2 : OUT std_logic_vector (15 DOWNTO 0) ;
         dataOut3 : OUT std_logic_vector (15 DOWNTO 0) ;
         dataOut4 : OUT std_logic_vector (15 DOWNTO 0) ;
         dataOut5 : OUT std_logic_vector (15 DOWNTO 0)) ;
   end component ;
   component IOCounter2_16
      port (
         en : IN std_logic ;
         reset : IN std_logic ;
         clk : IN std_logic ;
         count : OUT std_logic_vector (15 DOWNTO 0)) ;
   end component ;
   signal registersIn_0_15, registersIn_0_14, registersIn_0_13, 
      registersIn_0_12, registersIn_0_11, registersIn_0_10, registersIn_0_9, 
      registersIn_0_8, registersIn_0_7, registersIn_0_6, registersIn_0_5, 
      registersIn_0_4, registersIn_0_3, registersIn_0_2, registersIn_0_1, 
      registersIn_0_0, registersIn_1_15, registersIn_1_14, registersIn_1_13, 
      registersIn_1_12, registersIn_1_11, registersIn_1_10, registersIn_1_9, 
      registersIn_1_8, registersIn_1_7, registersIn_1_6, registersIn_1_5, 
      registersIn_1_4, registersIn_1_3, registersIn_1_2, registersIn_1_1, 
      registersIn_1_0, registersIn_2_15, registersIn_2_14, registersIn_2_13, 
      registersIn_2_12, registersIn_2_11, registersIn_2_10, registersIn_2_9, 
      registersIn_2_8, registersIn_2_7, registersIn_2_6, registersIn_2_5, 
      registersIn_2_4, registersIn_2_3, registersIn_2_2, registersIn_2_1, 
      registersIn_2_0, registersIn_3_15, registersIn_3_14, registersIn_3_13, 
      registersIn_3_12, registersIn_3_11, registersIn_3_10, registersIn_3_9, 
      registersIn_3_8, registersIn_3_7, registersIn_3_6, registersIn_3_5, 
      registersIn_3_4, registersIn_3_3, registersIn_3_2, registersIn_3_1, 
      registersIn_3_0, registersIn_4_15, registersIn_4_14, registersIn_4_13, 
      registersIn_4_12, registersIn_4_11, registersIn_4_10, registersIn_4_9, 
      registersIn_4_8, registersIn_4_7, registersIn_4_6, registersIn_4_5, 
      registersIn_4_4, registersIn_4_3, registersIn_4_2, registersIn_4_1, 
      registersIn_4_0, registersOut_0_15, registersOut_0_14, 
      registersOut_0_13, registersOut_0_12, registersOut_0_11, 
      registersOut_0_10, registersOut_0_9, registersOut_0_8, 
      registersOut_0_7, registersOut_0_6, registersOut_0_5, registersOut_0_4, 
      registersOut_0_3, registersOut_0_2, registersOut_0_1, registersOut_0_0, 
      registersOut_1_15, registersOut_1_14, registersOut_1_13, 
      registersOut_1_12, registersOut_1_11, registersOut_1_10, 
      registersOut_1_9, registersOut_1_8, registersOut_1_7, registersOut_1_6, 
      registersOut_1_5, registersOut_1_4, registersOut_1_3, registersOut_1_2, 
      registersOut_1_1, registersOut_1_0, registersOut_2_15, 
      registersOut_2_14, registersOut_2_13, registersOut_2_12, 
      registersOut_2_11, registersOut_2_10, registersOut_2_9, 
      registersOut_2_8, registersOut_2_7, registersOut_2_6, registersOut_2_5, 
      registersOut_2_4, registersOut_2_3, registersOut_2_2, registersOut_2_1, 
      registersOut_2_0, registersOut_3_15, registersOut_3_14, 
      registersOut_3_13, registersOut_3_12, registersOut_3_11, 
      registersOut_3_10, registersOut_3_9, registersOut_3_8, 
      registersOut_3_7, registersOut_3_6, registersOut_3_5, registersOut_3_4, 
      registersOut_3_3, registersOut_3_2, registersOut_3_1, registersOut_3_0, 
      registersOut_4_15, registersOut_4_14, registersOut_4_13, 
      registersOut_4_12, registersOut_4_11, registersOut_4_10, 
      registersOut_4_9, registersOut_4_8, registersOut_4_7, registersOut_4_6, 
      registersOut_4_5, registersOut_4_4, registersOut_4_3, registersOut_4_2, 
      registersOut_4_1, registersOut_4_0, moduloCounterSignal_2, 
      moduloCounterSignal_1, moduloCounterSignal_0, notClk, moduloRst, 
      enArray_0, enArray_1, enArray_2, enArray_3, enArray_4, write_EXMPLR, 
      zeros_15, PWR, nx1021, nx1024, nx1027, nx1031, nx1122, nx1124, nx1128, 
      nx1134, nx1136, nx1138, nx1140, nx1142, nx1144, nx1146, nx1148, nx1150, 
      nx1152, nx1154, nx1156, nx1158, nx1160: std_logic ;

begin
   write <= write_EXMPLR ;
   loop1_0_fx : Reg_16 port map ( D(15)=>registersIn_0_15, D(14)=>
      registersIn_0_14, D(13)=>registersIn_0_13, D(12)=>registersIn_0_12, 
      D(11)=>registersIn_0_11, D(10)=>registersIn_0_10, D(9)=>
      registersIn_0_9, D(8)=>registersIn_0_8, D(7)=>registersIn_0_7, D(6)=>
      registersIn_0_6, D(5)=>registersIn_0_5, D(4)=>registersIn_0_4, D(3)=>
      registersIn_0_3, D(2)=>registersIn_0_2, D(1)=>registersIn_0_1, D(0)=>
      registersIn_0_0, en=>enArray_0, clk=>clk, rst=>rst, Q(15)=>
      registersOut_0_15, Q(14)=>registersOut_0_14, Q(13)=>registersOut_0_13, 
      Q(12)=>registersOut_0_12, Q(11)=>registersOut_0_11, Q(10)=>
      registersOut_0_10, Q(9)=>registersOut_0_9, Q(8)=>registersOut_0_8, 
      Q(7)=>registersOut_0_7, Q(6)=>registersOut_0_6, Q(5)=>registersOut_0_5, 
      Q(4)=>registersOut_0_4, Q(3)=>registersOut_0_3, Q(2)=>registersOut_0_2, 
      Q(1)=>registersOut_0_1, Q(0)=>registersOut_0_0);
   loop1_1_fx : Reg_16 port map ( D(15)=>registersIn_1_15, D(14)=>
      registersIn_1_14, D(13)=>registersIn_1_13, D(12)=>registersIn_1_12, 
      D(11)=>registersIn_1_11, D(10)=>registersIn_1_10, D(9)=>
      registersIn_1_9, D(8)=>registersIn_1_8, D(7)=>registersIn_1_7, D(6)=>
      registersIn_1_6, D(5)=>registersIn_1_5, D(4)=>registersIn_1_4, D(3)=>
      registersIn_1_3, D(2)=>registersIn_1_2, D(1)=>registersIn_1_1, D(0)=>
      registersIn_1_0, en=>enArray_1, clk=>clk, rst=>rst, Q(15)=>
      registersOut_1_15, Q(14)=>registersOut_1_14, Q(13)=>registersOut_1_13, 
      Q(12)=>registersOut_1_12, Q(11)=>registersOut_1_11, Q(10)=>
      registersOut_1_10, Q(9)=>registersOut_1_9, Q(8)=>registersOut_1_8, 
      Q(7)=>registersOut_1_7, Q(6)=>registersOut_1_6, Q(5)=>registersOut_1_5, 
      Q(4)=>registersOut_1_4, Q(3)=>registersOut_1_3, Q(2)=>registersOut_1_2, 
      Q(1)=>registersOut_1_1, Q(0)=>registersOut_1_0);
   loop1_2_fx : Reg_16 port map ( D(15)=>registersIn_2_15, D(14)=>
      registersIn_2_14, D(13)=>registersIn_2_13, D(12)=>registersIn_2_12, 
      D(11)=>registersIn_2_11, D(10)=>registersIn_2_10, D(9)=>
      registersIn_2_9, D(8)=>registersIn_2_8, D(7)=>registersIn_2_7, D(6)=>
      registersIn_2_6, D(5)=>registersIn_2_5, D(4)=>registersIn_2_4, D(3)=>
      registersIn_2_3, D(2)=>registersIn_2_2, D(1)=>registersIn_2_1, D(0)=>
      registersIn_2_0, en=>enArray_2, clk=>clk, rst=>rst, Q(15)=>
      registersOut_2_15, Q(14)=>registersOut_2_14, Q(13)=>registersOut_2_13, 
      Q(12)=>registersOut_2_12, Q(11)=>registersOut_2_11, Q(10)=>
      registersOut_2_10, Q(9)=>registersOut_2_9, Q(8)=>registersOut_2_8, 
      Q(7)=>registersOut_2_7, Q(6)=>registersOut_2_6, Q(5)=>registersOut_2_5, 
      Q(4)=>registersOut_2_4, Q(3)=>registersOut_2_3, Q(2)=>registersOut_2_2, 
      Q(1)=>registersOut_2_1, Q(0)=>registersOut_2_0);
   loop1_3_fx : Reg_16 port map ( D(15)=>registersIn_3_15, D(14)=>
      registersIn_3_14, D(13)=>registersIn_3_13, D(12)=>registersIn_3_12, 
      D(11)=>registersIn_3_11, D(10)=>registersIn_3_10, D(9)=>
      registersIn_3_9, D(8)=>registersIn_3_8, D(7)=>registersIn_3_7, D(6)=>
      registersIn_3_6, D(5)=>registersIn_3_5, D(4)=>registersIn_3_4, D(3)=>
      registersIn_3_3, D(2)=>registersIn_3_2, D(1)=>registersIn_3_1, D(0)=>
      registersIn_3_0, en=>enArray_3, clk=>clk, rst=>rst, Q(15)=>
      registersOut_3_15, Q(14)=>registersOut_3_14, Q(13)=>registersOut_3_13, 
      Q(12)=>registersOut_3_12, Q(11)=>registersOut_3_11, Q(10)=>
      registersOut_3_10, Q(9)=>registersOut_3_9, Q(8)=>registersOut_3_8, 
      Q(7)=>registersOut_3_7, Q(6)=>registersOut_3_6, Q(5)=>registersOut_3_5, 
      Q(4)=>registersOut_3_4, Q(3)=>registersOut_3_3, Q(2)=>registersOut_3_2, 
      Q(1)=>registersOut_3_1, Q(0)=>registersOut_3_0);
   loop1_4_fx : Reg_16 port map ( D(15)=>registersIn_4_15, D(14)=>
      registersIn_4_14, D(13)=>registersIn_4_13, D(12)=>registersIn_4_12, 
      D(11)=>registersIn_4_11, D(10)=>registersIn_4_10, D(9)=>
      registersIn_4_9, D(8)=>registersIn_4_8, D(7)=>registersIn_4_7, D(6)=>
      registersIn_4_6, D(5)=>registersIn_4_5, D(4)=>registersIn_4_4, D(3)=>
      registersIn_4_3, D(2)=>registersIn_4_2, D(1)=>registersIn_4_1, D(0)=>
      registersIn_4_0, en=>enArray_4, clk=>clk, rst=>rst, Q(15)=>
      registersOut_4_15, Q(14)=>registersOut_4_14, Q(13)=>registersOut_4_13, 
      Q(12)=>registersOut_4_12, Q(11)=>registersOut_4_11, Q(10)=>
      registersOut_4_10, Q(9)=>registersOut_4_9, Q(8)=>registersOut_4_8, 
      Q(7)=>registersOut_4_7, Q(6)=>registersOut_4_6, Q(5)=>registersOut_4_5, 
      Q(4)=>registersOut_4_4, Q(3)=>registersOut_4_3, Q(2)=>registersOut_4_2, 
      Q(1)=>registersOut_4_1, Q(0)=>registersOut_4_0);
   ModuloCounter : ModuloCounter_3 port map ( modulator(2)=>PWR, 
      modulator(1)=>zeros_15, modulator(0)=>PWR, en=>delayedInt, rst=>
      moduloRst, clk=>notClk, currentCount(2)=>moduloCounterSignal_2, 
      currentCount(1)=>moduloCounterSignal_1, currentCount(0)=>
      moduloCounterSignal_0);
   InverseMux : InverseMux_16 port map ( dataIn(15)=>dataIn(15), dataIn(14)
      =>dataIn(14), dataIn(13)=>dataIn(13), dataIn(12)=>dataIn(12), 
      dataIn(11)=>dataIn(11), dataIn(10)=>dataIn(10), dataIn(9)=>dataIn(9), 
      dataIn(8)=>dataIn(8), dataIn(7)=>dataIn(7), dataIn(6)=>dataIn(6), 
      dataIn(5)=>dataIn(5), dataIn(4)=>dataIn(4), dataIn(3)=>dataIn(3), 
      dataIn(2)=>dataIn(2), dataIn(1)=>dataIn(1), dataIn(0)=>dataIn(0), 
      sel(2)=>nx1122, sel(1)=>nx1124, sel(0)=>nx1128, en=>delayedInt, rst=>
      rst, dataOut1(15)=>registersIn_0_15, dataOut1(14)=>registersIn_0_14, 
      dataOut1(13)=>registersIn_0_13, dataOut1(12)=>registersIn_0_12, 
      dataOut1(11)=>registersIn_0_11, dataOut1(10)=>registersIn_0_10, 
      dataOut1(9)=>registersIn_0_9, dataOut1(8)=>registersIn_0_8, 
      dataOut1(7)=>registersIn_0_7, dataOut1(6)=>registersIn_0_6, 
      dataOut1(5)=>registersIn_0_5, dataOut1(4)=>registersIn_0_4, 
      dataOut1(3)=>registersIn_0_3, dataOut1(2)=>registersIn_0_2, 
      dataOut1(1)=>registersIn_0_1, dataOut1(0)=>registersIn_0_0, 
      dataOut2(15)=>registersIn_1_15, dataOut2(14)=>registersIn_1_14, 
      dataOut2(13)=>registersIn_1_13, dataOut2(12)=>registersIn_1_12, 
      dataOut2(11)=>registersIn_1_11, dataOut2(10)=>registersIn_1_10, 
      dataOut2(9)=>registersIn_1_9, dataOut2(8)=>registersIn_1_8, 
      dataOut2(7)=>registersIn_1_7, dataOut2(6)=>registersIn_1_6, 
      dataOut2(5)=>registersIn_1_5, dataOut2(4)=>registersIn_1_4, 
      dataOut2(3)=>registersIn_1_3, dataOut2(2)=>registersIn_1_2, 
      dataOut2(1)=>registersIn_1_1, dataOut2(0)=>registersIn_1_0, 
      dataOut3(15)=>registersIn_2_15, dataOut3(14)=>registersIn_2_14, 
      dataOut3(13)=>registersIn_2_13, dataOut3(12)=>registersIn_2_12, 
      dataOut3(11)=>registersIn_2_11, dataOut3(10)=>registersIn_2_10, 
      dataOut3(9)=>registersIn_2_9, dataOut3(8)=>registersIn_2_8, 
      dataOut3(7)=>registersIn_2_7, dataOut3(6)=>registersIn_2_6, 
      dataOut3(5)=>registersIn_2_5, dataOut3(4)=>registersIn_2_4, 
      dataOut3(3)=>registersIn_2_3, dataOut3(2)=>registersIn_2_2, 
      dataOut3(1)=>registersIn_2_1, dataOut3(0)=>registersIn_2_0, 
      dataOut4(15)=>registersIn_3_15, dataOut4(14)=>registersIn_3_14, 
      dataOut4(13)=>registersIn_3_13, dataOut4(12)=>registersIn_3_12, 
      dataOut4(11)=>registersIn_3_11, dataOut4(10)=>registersIn_3_10, 
      dataOut4(9)=>registersIn_3_9, dataOut4(8)=>registersIn_3_8, 
      dataOut4(7)=>registersIn_3_7, dataOut4(6)=>registersIn_3_6, 
      dataOut4(5)=>registersIn_3_5, dataOut4(4)=>registersIn_3_4, 
      dataOut4(3)=>registersIn_3_3, dataOut4(2)=>registersIn_3_2, 
      dataOut4(1)=>registersIn_3_1, dataOut4(0)=>registersIn_3_0, 
      dataOut5(15)=>registersIn_4_15, dataOut5(14)=>registersIn_4_14, 
      dataOut5(13)=>registersIn_4_13, dataOut5(12)=>registersIn_4_12, 
      dataOut5(11)=>registersIn_4_11, dataOut5(10)=>registersIn_4_10, 
      dataOut5(9)=>registersIn_4_9, dataOut5(8)=>registersIn_4_8, 
      dataOut5(7)=>registersIn_4_7, dataOut5(6)=>registersIn_4_6, 
      dataOut5(5)=>registersIn_4_5, dataOut5(4)=>registersIn_4_4, 
      dataOut5(3)=>registersIn_4_3, dataOut5(2)=>registersIn_4_2, 
      dataOut5(1)=>registersIn_4_1, dataOut5(0)=>registersIn_4_0);
   MAR : IOCounter2_16 port map ( en=>addressCounterEnable, reset=>rst, clk
      =>clk, count(15)=>address(15), count(14)=>address(14), count(13)=>
      address(13), count(12)=>address(12), count(11)=>address(11), count(10)
      =>address(10), count(9)=>address(9), count(8)=>address(8), count(7)=>
      address(7), count(6)=>address(6), count(5)=>address(5), count(4)=>
      address(4), count(3)=>address(3), count(2)=>address(2), count(1)=>
      address(1), count(0)=>address(0));
   ix851 : fake_vcc port map ( Y=>PWR);
   ix849 : fake_gnd port map ( Y=>zeros_15);
   ix1022 : inv01 port map ( Y=>nx1021, A=>moduloCounterSignal_1);
   ix1025 : inv01 port map ( Y=>nx1024, A=>moduloCounterSignal_2);
   ix1032 : inv02 port map ( Y=>nx1031, A=>moduloCounterSignal_0);
   ix209 : or02 port map ( Y=>moduloRst, A0=>rst, A1=>doneFCRAM);
   ix1036 : inv01 port map ( Y=>notClk, A=>clk);
   lat_dataOut_0 : latch port map ( Q=>dataOut(0), D=>registersOut_0_0, CLK
      =>nx1134);
   lat_dataOut_1 : latch port map ( Q=>dataOut(1), D=>registersOut_0_1, CLK
      =>nx1134);
   lat_dataOut_2 : latch port map ( Q=>dataOut(2), D=>registersOut_0_2, CLK
      =>nx1134);
   lat_dataOut_3 : latch port map ( Q=>dataOut(3), D=>registersOut_0_3, CLK
      =>nx1134);
   lat_dataOut_4 : latch port map ( Q=>dataOut(4), D=>registersOut_0_4, CLK
      =>nx1134);
   lat_dataOut_5 : latch port map ( Q=>dataOut(5), D=>registersOut_0_5, CLK
      =>nx1134);
   lat_dataOut_6 : latch port map ( Q=>dataOut(6), D=>registersOut_0_6, CLK
      =>nx1134);
   lat_dataOut_7 : latch port map ( Q=>dataOut(7), D=>registersOut_0_7, CLK
      =>nx1136);
   lat_dataOut_8 : latch port map ( Q=>dataOut(8), D=>registersOut_0_8, CLK
      =>nx1136);
   lat_dataOut_9 : latch port map ( Q=>dataOut(9), D=>registersOut_0_9, CLK
      =>nx1136);
   lat_dataOut_10 : latch port map ( Q=>dataOut(10), D=>registersOut_0_10, 
      CLK=>nx1136);
   lat_dataOut_11 : latch port map ( Q=>dataOut(11), D=>registersOut_0_11, 
      CLK=>nx1136);
   lat_dataOut_12 : latch port map ( Q=>dataOut(12), D=>registersOut_0_12, 
      CLK=>nx1136);
   lat_dataOut_13 : latch port map ( Q=>dataOut(13), D=>registersOut_0_13, 
      CLK=>nx1136);
   lat_dataOut_14 : latch port map ( Q=>dataOut(14), D=>registersOut_0_14, 
      CLK=>nx1138);
   lat_dataOut_15 : latch port map ( Q=>dataOut(15), D=>registersOut_0_15, 
      CLK=>nx1138);
   lat_dataOut_16 : latch port map ( Q=>dataOut(16), D=>registersOut_1_0, 
      CLK=>nx1138);
   lat_dataOut_17 : latch port map ( Q=>dataOut(17), D=>registersOut_1_1, 
      CLK=>nx1138);
   lat_dataOut_18 : latch port map ( Q=>dataOut(18), D=>registersOut_1_2, 
      CLK=>nx1138);
   lat_dataOut_19 : latch port map ( Q=>dataOut(19), D=>registersOut_1_3, 
      CLK=>nx1138);
   lat_dataOut_20 : latch port map ( Q=>dataOut(20), D=>registersOut_1_4, 
      CLK=>nx1138);
   lat_dataOut_21 : latch port map ( Q=>dataOut(21), D=>registersOut_1_5, 
      CLK=>nx1140);
   lat_dataOut_22 : latch port map ( Q=>dataOut(22), D=>registersOut_1_6, 
      CLK=>nx1140);
   lat_dataOut_23 : latch port map ( Q=>dataOut(23), D=>registersOut_1_7, 
      CLK=>nx1140);
   lat_dataOut_24 : latch port map ( Q=>dataOut(24), D=>registersOut_1_8, 
      CLK=>nx1140);
   lat_dataOut_25 : latch port map ( Q=>dataOut(25), D=>registersOut_1_9, 
      CLK=>nx1140);
   lat_dataOut_26 : latch port map ( Q=>dataOut(26), D=>registersOut_1_10, 
      CLK=>nx1140);
   lat_dataOut_27 : latch port map ( Q=>dataOut(27), D=>registersOut_1_11, 
      CLK=>nx1140);
   lat_dataOut_28 : latch port map ( Q=>dataOut(28), D=>registersOut_1_12, 
      CLK=>nx1142);
   lat_dataOut_29 : latch port map ( Q=>dataOut(29), D=>registersOut_1_13, 
      CLK=>nx1142);
   lat_dataOut_30 : latch port map ( Q=>dataOut(30), D=>registersOut_1_14, 
      CLK=>nx1142);
   lat_dataOut_31 : latch port map ( Q=>dataOut(31), D=>registersOut_1_15, 
      CLK=>nx1142);
   lat_dataOut_32 : latch port map ( Q=>dataOut(32), D=>registersOut_2_0, 
      CLK=>nx1142);
   lat_dataOut_33 : latch port map ( Q=>dataOut(33), D=>registersOut_2_1, 
      CLK=>nx1142);
   lat_dataOut_34 : latch port map ( Q=>dataOut(34), D=>registersOut_2_2, 
      CLK=>nx1142);
   lat_dataOut_35 : latch port map ( Q=>dataOut(35), D=>registersOut_2_3, 
      CLK=>nx1144);
   lat_dataOut_36 : latch port map ( Q=>dataOut(36), D=>registersOut_2_4, 
      CLK=>nx1144);
   lat_dataOut_37 : latch port map ( Q=>dataOut(37), D=>registersOut_2_5, 
      CLK=>nx1144);
   lat_dataOut_38 : latch port map ( Q=>dataOut(38), D=>registersOut_2_6, 
      CLK=>nx1144);
   lat_dataOut_39 : latch port map ( Q=>dataOut(39), D=>registersOut_2_7, 
      CLK=>nx1144);
   lat_dataOut_40 : latch port map ( Q=>dataOut(40), D=>registersOut_2_8, 
      CLK=>nx1144);
   lat_dataOut_41 : latch port map ( Q=>dataOut(41), D=>registersOut_2_9, 
      CLK=>nx1144);
   lat_dataOut_42 : latch port map ( Q=>dataOut(42), D=>registersOut_2_10, 
      CLK=>nx1146);
   lat_dataOut_43 : latch port map ( Q=>dataOut(43), D=>registersOut_2_11, 
      CLK=>nx1146);
   lat_dataOut_44 : latch port map ( Q=>dataOut(44), D=>registersOut_2_12, 
      CLK=>nx1146);
   lat_dataOut_45 : latch port map ( Q=>dataOut(45), D=>registersOut_2_13, 
      CLK=>nx1146);
   lat_dataOut_46 : latch port map ( Q=>dataOut(46), D=>registersOut_2_14, 
      CLK=>nx1146);
   lat_dataOut_47 : latch port map ( Q=>dataOut(47), D=>registersOut_2_15, 
      CLK=>nx1146);
   lat_dataOut_48 : latch port map ( Q=>dataOut(48), D=>registersOut_3_0, 
      CLK=>nx1146);
   lat_dataOut_49 : latch port map ( Q=>dataOut(49), D=>registersOut_3_1, 
      CLK=>nx1148);
   lat_dataOut_50 : latch port map ( Q=>dataOut(50), D=>registersOut_3_2, 
      CLK=>nx1148);
   lat_dataOut_51 : latch port map ( Q=>dataOut(51), D=>registersOut_3_3, 
      CLK=>nx1148);
   lat_dataOut_52 : latch port map ( Q=>dataOut(52), D=>registersOut_3_4, 
      CLK=>nx1148);
   lat_dataOut_53 : latch port map ( Q=>dataOut(53), D=>registersOut_3_5, 
      CLK=>nx1148);
   lat_dataOut_54 : latch port map ( Q=>dataOut(54), D=>registersOut_3_6, 
      CLK=>nx1148);
   lat_dataOut_55 : latch port map ( Q=>dataOut(55), D=>registersOut_3_7, 
      CLK=>nx1148);
   lat_dataOut_56 : latch port map ( Q=>dataOut(56), D=>registersOut_3_8, 
      CLK=>nx1150);
   lat_dataOut_57 : latch port map ( Q=>dataOut(57), D=>registersOut_3_9, 
      CLK=>nx1150);
   lat_dataOut_58 : latch port map ( Q=>dataOut(58), D=>registersOut_3_10, 
      CLK=>nx1150);
   lat_dataOut_59 : latch port map ( Q=>dataOut(59), D=>registersOut_3_11, 
      CLK=>nx1150);
   lat_dataOut_60 : latch port map ( Q=>dataOut(60), D=>registersOut_3_12, 
      CLK=>nx1150);
   lat_dataOut_61 : latch port map ( Q=>dataOut(61), D=>registersOut_3_13, 
      CLK=>nx1150);
   lat_dataOut_62 : latch port map ( Q=>dataOut(62), D=>registersOut_3_14, 
      CLK=>nx1150);
   lat_dataOut_63 : latch port map ( Q=>dataOut(63), D=>registersOut_3_15, 
      CLK=>nx1152);
   lat_dataOut_64 : latch port map ( Q=>dataOut(64), D=>registersOut_4_0, 
      CLK=>nx1152);
   lat_dataOut_65 : latch port map ( Q=>dataOut(65), D=>registersOut_4_1, 
      CLK=>nx1152);
   lat_dataOut_66 : latch port map ( Q=>dataOut(66), D=>registersOut_4_2, 
      CLK=>nx1152);
   lat_dataOut_67 : latch port map ( Q=>dataOut(67), D=>registersOut_4_3, 
      CLK=>nx1152);
   lat_dataOut_68 : latch port map ( Q=>dataOut(68), D=>registersOut_4_4, 
      CLK=>nx1152);
   lat_dataOut_69 : latch port map ( Q=>dataOut(69), D=>registersOut_4_5, 
      CLK=>nx1152);
   lat_dataOut_70 : latch port map ( Q=>dataOut(70), D=>registersOut_4_6, 
      CLK=>nx1154);
   lat_dataOut_71 : latch port map ( Q=>dataOut(71), D=>registersOut_4_7, 
      CLK=>nx1154);
   lat_dataOut_72 : latch port map ( Q=>dataOut(72), D=>registersOut_4_8, 
      CLK=>nx1154);
   lat_dataOut_73 : latch port map ( Q=>dataOut(73), D=>registersOut_4_9, 
      CLK=>nx1154);
   lat_dataOut_74 : latch port map ( Q=>dataOut(74), D=>registersOut_4_10, 
      CLK=>nx1154);
   lat_dataOut_75 : latch port map ( Q=>dataOut(75), D=>registersOut_4_11, 
      CLK=>nx1154);
   lat_dataOut_76 : latch port map ( Q=>dataOut(76), D=>registersOut_4_12, 
      CLK=>nx1154);
   lat_dataOut_77 : latch port map ( Q=>dataOut(77), D=>registersOut_4_13, 
      CLK=>nx1156);
   lat_dataOut_78 : latch port map ( Q=>dataOut(78), D=>registersOut_4_14, 
      CLK=>nx1156);
   lat_dataOut_79 : latch port map ( Q=>dataOut(79), D=>registersOut_4_15, 
      CLK=>nx1156);
   ix1121 : inv02 port map ( Y=>nx1122, A=>nx1024);
   ix1123 : inv02 port map ( Y=>nx1124, A=>nx1021);
   ix1127 : inv02 port map ( Y=>nx1128, A=>nx1031);
   ix1133 : inv02 port map ( Y=>nx1134, A=>nx1158);
   ix1135 : inv02 port map ( Y=>nx1136, A=>nx1158);
   ix1137 : inv02 port map ( Y=>nx1138, A=>nx1158);
   ix1139 : inv02 port map ( Y=>nx1140, A=>nx1158);
   ix1141 : inv02 port map ( Y=>nx1142, A=>nx1158);
   ix1143 : inv02 port map ( Y=>nx1144, A=>nx1158);
   ix1145 : inv02 port map ( Y=>nx1146, A=>nx1158);
   ix1147 : inv02 port map ( Y=>nx1148, A=>nx1160);
   ix1149 : inv02 port map ( Y=>nx1150, A=>nx1160);
   ix1151 : inv02 port map ( Y=>nx1152, A=>nx1160);
   ix1153 : inv02 port map ( Y=>nx1154, A=>nx1160);
   ix1155 : inv02 port map ( Y=>nx1156, A=>nx1160);
   ix1157 : inv02 port map ( Y=>nx1158, A=>write_EXMPLR);
   ix1159 : inv02 port map ( Y=>nx1160, A=>write_EXMPLR);
   ix45 : nor03_2x port map ( Y=>write_EXMPLR, A0=>nx1024, A1=>
      moduloCounterSignal_1, A2=>nx1031);
   ix39 : and03 port map ( Y=>enArray_4, A0=>moduloCounterSignal_2, A1=>
      nx1021, A2=>nx1031);
   ix31 : nor02ii port map ( Y=>enArray_3, A0=>nx1027, A1=>nx1024);
   ix1028 : or02 port map ( Y=>nx1027, A0=>nx1021, A1=>nx1031);
   ix25 : and03 port map ( Y=>enArray_2, A0=>nx1024, A1=>
      moduloCounterSignal_1, A2=>nx1031);
   ix17 : and03 port map ( Y=>enArray_1, A0=>nx1024, A1=>nx1021, A2=>
      moduloCounterSignal_0);
   ix9 : and03 port map ( Y=>enArray_0, A0=>nx1024, A1=>nx1021, A2=>nx1031);

end FCDMAArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity IOChip is
   port (
      din : IN std_logic_vector (15 DOWNTO 0) ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      imageOrCNN : IN std_logic ;
      INTR : IN std_logic ;
      load : IN std_logic ;
      processing : IN std_logic ;
      doneWithPhase : OUT std_logic ;
      busy : OUT std_logic ;
      doneDMAFC : IN std_logic ;
      doneDMACNN : IN std_logic ;
      doneDMAImage : IN std_logic ;
      imgRamWrite : INOUT std_logic ;
      CNNRamWrite : INOUT std_logic ;
      FCRamWrite : INOUT std_logic ;
      imageDMAAddressOut : OUT std_logic_vector (12 DOWNTO 0) ;
      imageDMADataOut : OUT std_logic_vector (15 DOWNTO 0) ;
      CNNDMAAddressOut : OUT std_logic_vector (11 DOWNTO 0) ;
      CNNDMADataOut : OUT std_logic_vector (15 DOWNTO 0) ;
      FCDMAAddressOut : OUT std_logic_vector (15 DOWNTO 0) ;
      FCDMADataOut : OUT std_logic_vector (79 DOWNTO 0) ;
      result : OUT std_logic_vector (3 DOWNTO 0) ;
      FCResult : IN std_logic_vector (3 DOWNTO 0) ;
      FCDone : IN std_logic ;
      toCNN : INOUT std_logic ;
      toFC : OUT std_logic) ;
end IOChip ;

architecture IOChipArch of IOChip is
   component IO_16_4
      port (
         Din : IN std_logic_vector (15 DOWNTO 0) ;
         doneDMAFC : IN std_logic ;
         doneDMACNN : IN std_logic ;
         doneDMAImage : IN std_logic ;
         INTR : IN std_logic ;
         load : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         processing : IN std_logic ;
         imageOrCNN : IN std_logic ;
         decompZeroState : IN std_logic ;
         doneWithPhase : OUT std_logic ;
         CNNCounterEnable : OUT std_logic ;
         imageCounterEnable : OUT std_logic ;
         FCCounterEnable : OUT std_logic ;
         decompDecrementorEnable : OUT std_logic ;
         busy : OUT std_logic ;
         toCNN : INOUT std_logic ;
         toFC : OUT std_logic ;
         INTRDelayed : INOUT std_logic ;
         imageLoad : INOUT std_logic ;
         imageRegisterEnable : INOUT std_logic ;
         CNNRegisterEnable : INOUT std_logic ;
         FCRegisterEnable : INOUT std_logic ;
         imageRamEnable : INOUT std_logic ;
         CNNRamEnable : INOUT std_logic ;
         FCRamEnable : INOUT std_logic ;
         interfaceOutput : OUT std_logic_vector (15 DOWNTO 0) ;
         FCRamWriteOld : IN std_logic ;
         result : OUT std_logic_vector (3 DOWNTO 0) ;
         FCResult : IN std_logic_vector (3 DOWNTO 0) ;
         FCDone : IN std_logic) ;
   end component ;
   component Decompressor
      port (
         dataIn : IN std_logic_vector (5 DOWNTO 0) ;
         clk : IN std_logic ;
         en : IN std_logic ;
         rst : IN std_logic ;
         imageLoad : IN std_logic ;
         intrDelayed : IN std_logic ;
         zeroState : OUT std_logic ;
         dataOut : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   component DMAImage
      port (
         dataIn : IN std_logic_vector (7 DOWNTO 0) ;
         addressIn : IN std_logic_vector (9 DOWNTO 0) ;
         clk : IN std_logic ;
         enableImageCounter : IN std_logic ;
         enableImageRegister : IN std_logic ;
         rst : IN std_logic ;
         intrDelayed : IN std_logic ;
         dataOut : OUT std_logic_vector (15 DOWNTO 0) ;
         addressOut : OUT std_logic_vector (12 DOWNTO 0)) ;
   end component ;
   component DMACNN
      port (
         dataIn : IN std_logic_vector (15 DOWNTO 0) ;
         clk : IN std_logic ;
         enableCNNCounter : IN std_logic ;
         enableCNNRegister : IN std_logic ;
         rst : IN std_logic ;
         dataOut : OUT std_logic_vector (15 DOWNTO 0) ;
         addressOut : OUT std_logic_vector (11 DOWNTO 0)) ;
   end component ;
   component FCDMA_16
      port (
         dataIn : IN std_logic_vector (15 DOWNTO 0) ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         addressCounterEnable : IN std_logic ;
         delayedInt : IN std_logic ;
         doneFCRAM : IN std_logic ;
         address : OUT std_logic_vector (15 DOWNTO 0) ;
         dataOut : OUT std_logic_vector (79 DOWNTO 0) ;
         write : OUT std_logic) ;
   end component ;
   signal decompZeroState, CNNCounterEnable, decompDecrementorEnable, 
      CNNRegisterEnable, imageCounterEnable, imageRegisterEnable, 
      FCCounterEnable, FCRegisterEnable, imageLoad, INTRDelayed, 
      interfaceOutput_15, interfaceOutput_14, interfaceOutput_13, 
      interfaceOutput_12, interfaceOutput_11, interfaceOutput_10, 
      interfaceOutput_9, interfaceOutput_8, interfaceOutput_7, 
      interfaceOutput_6, interfaceOutput_5, interfaceOutput_4, 
      interfaceOutput_3, interfaceOutput_2, interfaceOutput_1, 
      interfaceOutput_0, decompDataOut_7, decompDataOut_6, decompDataOut_5, 
      decompDataOut_4, decompDataOut_3, decompDataOut_2, decompDataOut_1, 
      decompDataOut_0, FCRamWriteOld: std_logic ;

begin
   io : IO_16_4 port map ( Din(15)=>din(15), Din(14)=>din(14), Din(13)=>
      din(13), Din(12)=>din(12), Din(11)=>din(11), Din(10)=>din(10), Din(9)
      =>din(9), Din(8)=>din(8), Din(7)=>din(7), Din(6)=>din(6), Din(5)=>
      din(5), Din(4)=>din(4), Din(3)=>din(3), Din(2)=>din(2), Din(1)=>din(1), 
      Din(0)=>din(0), doneDMAFC=>doneDMAFC, doneDMACNN=>doneDMACNN, 
      doneDMAImage=>doneDMAImage, INTR=>INTR, load=>load, clk=>clk, rst=>rst, 
      processing=>processing, imageOrCNN=>imageOrCNN, decompZeroState=>
      decompZeroState, doneWithPhase=>doneWithPhase, CNNCounterEnable=>
      CNNCounterEnable, imageCounterEnable=>imageCounterEnable, 
      FCCounterEnable=>FCCounterEnable, decompDecrementorEnable=>
      decompDecrementorEnable, busy=>busy, toCNN=>toCNN, toFC=>toFC, 
      INTRDelayed=>INTRDelayed, imageLoad=>imageLoad, imageRegisterEnable=>
      imageRegisterEnable, CNNRegisterEnable=>CNNRegisterEnable, 
      FCRegisterEnable=>FCRegisterEnable, imageRamEnable=>imgRamWrite, 
      CNNRamEnable=>CNNRamWrite, FCRamEnable=>FCRamWrite, 
      interfaceOutput(15)=>interfaceOutput_15, interfaceOutput(14)=>
      interfaceOutput_14, interfaceOutput(13)=>interfaceOutput_13, 
      interfaceOutput(12)=>interfaceOutput_12, interfaceOutput(11)=>
      interfaceOutput_11, interfaceOutput(10)=>interfaceOutput_10, 
      interfaceOutput(9)=>interfaceOutput_9, interfaceOutput(8)=>
      interfaceOutput_8, interfaceOutput(7)=>interfaceOutput_7, 
      interfaceOutput(6)=>interfaceOutput_6, interfaceOutput(5)=>
      interfaceOutput_5, interfaceOutput(4)=>interfaceOutput_4, 
      interfaceOutput(3)=>interfaceOutput_3, interfaceOutput(2)=>
      interfaceOutput_2, interfaceOutput(1)=>interfaceOutput_1, 
      interfaceOutput(0)=>interfaceOutput_0, FCRamWriteOld=>FCRamWriteOld, 
      result(3)=>result(3), result(2)=>result(2), result(1)=>result(1), 
      result(0)=>result(0), FCResult(3)=>FCResult(3), FCResult(2)=>
      FCResult(2), FCResult(1)=>FCResult(1), FCResult(0)=>FCResult(0), 
      FCDone=>FCDone);
   decomp : Decompressor port map ( dataIn(5)=>interfaceOutput_5, dataIn(4)
      =>interfaceOutput_4, dataIn(3)=>interfaceOutput_3, dataIn(2)=>
      interfaceOutput_2, dataIn(1)=>interfaceOutput_1, dataIn(0)=>
      interfaceOutput_0, clk=>clk, en=>decompDecrementorEnable, rst=>rst, 
      imageLoad=>imageLoad, intrDelayed=>INTRDelayed, zeroState=>
      decompZeroState, dataOut(7)=>decompDataOut_7, dataOut(6)=>
      decompDataOut_6, dataOut(5)=>decompDataOut_5, dataOut(4)=>
      decompDataOut_4, dataOut(3)=>decompDataOut_3, dataOut(2)=>
      decompDataOut_2, dataOut(1)=>decompDataOut_1, dataOut(0)=>
      decompDataOut_0);
   imageDMA : DMAImage port map ( dataIn(7)=>decompDataOut_7, dataIn(6)=>
      decompDataOut_6, dataIn(5)=>decompDataOut_5, dataIn(4)=>
      decompDataOut_4, dataIn(3)=>decompDataOut_3, dataIn(2)=>
      decompDataOut_2, dataIn(1)=>decompDataOut_1, dataIn(0)=>
      decompDataOut_0, addressIn(9)=>interfaceOutput_15, addressIn(8)=>
      interfaceOutput_14, addressIn(7)=>interfaceOutput_13, addressIn(6)=>
      interfaceOutput_12, addressIn(5)=>interfaceOutput_11, addressIn(4)=>
      interfaceOutput_10, addressIn(3)=>interfaceOutput_9, addressIn(2)=>
      interfaceOutput_8, addressIn(1)=>interfaceOutput_7, addressIn(0)=>
      interfaceOutput_6, clk=>clk, enableImageCounter=>imageCounterEnable, 
      enableImageRegister=>imageRegisterEnable, rst=>rst, intrDelayed=>
      INTRDelayed, dataOut(15)=>imageDMADataOut(15), dataOut(14)=>
      imageDMADataOut(14), dataOut(13)=>imageDMADataOut(13), dataOut(12)=>
      imageDMADataOut(12), dataOut(11)=>imageDMADataOut(11), dataOut(10)=>
      imageDMADataOut(10), dataOut(9)=>imageDMADataOut(9), dataOut(8)=>
      imageDMADataOut(8), dataOut(7)=>imageDMADataOut(7), dataOut(6)=>
      imageDMADataOut(6), dataOut(5)=>imageDMADataOut(5), dataOut(4)=>
      imageDMADataOut(4), dataOut(3)=>imageDMADataOut(3), dataOut(2)=>
      imageDMADataOut(2), dataOut(1)=>imageDMADataOut(1), dataOut(0)=>
      imageDMADataOut(0), addressOut(12)=>imageDMAAddressOut(12), 
      addressOut(11)=>imageDMAAddressOut(11), addressOut(10)=>
      imageDMAAddressOut(10), addressOut(9)=>imageDMAAddressOut(9), 
      addressOut(8)=>imageDMAAddressOut(8), addressOut(7)=>
      imageDMAAddressOut(7), addressOut(6)=>imageDMAAddressOut(6), 
      addressOut(5)=>imageDMAAddressOut(5), addressOut(4)=>
      imageDMAAddressOut(4), addressOut(3)=>imageDMAAddressOut(3), 
      addressOut(2)=>imageDMAAddressOut(2), addressOut(1)=>
      imageDMAAddressOut(1), addressOut(0)=>imageDMAAddressOut(0));
   cnnDMA : DMACNN port map ( dataIn(15)=>interfaceOutput_15, dataIn(14)=>
      interfaceOutput_14, dataIn(13)=>interfaceOutput_13, dataIn(12)=>
      interfaceOutput_12, dataIn(11)=>interfaceOutput_11, dataIn(10)=>
      interfaceOutput_10, dataIn(9)=>interfaceOutput_9, dataIn(8)=>
      interfaceOutput_8, dataIn(7)=>interfaceOutput_7, dataIn(6)=>
      interfaceOutput_6, dataIn(5)=>interfaceOutput_5, dataIn(4)=>
      interfaceOutput_4, dataIn(3)=>interfaceOutput_3, dataIn(2)=>
      interfaceOutput_2, dataIn(1)=>interfaceOutput_1, dataIn(0)=>
      interfaceOutput_0, clk=>clk, enableCNNCounter=>CNNCounterEnable, 
      enableCNNRegister=>CNNRegisterEnable, rst=>rst, dataOut(15)=>
      CNNDMADataOut(15), dataOut(14)=>CNNDMADataOut(14), dataOut(13)=>
      CNNDMADataOut(13), dataOut(12)=>CNNDMADataOut(12), dataOut(11)=>
      CNNDMADataOut(11), dataOut(10)=>CNNDMADataOut(10), dataOut(9)=>
      CNNDMADataOut(9), dataOut(8)=>CNNDMADataOut(8), dataOut(7)=>
      CNNDMADataOut(7), dataOut(6)=>CNNDMADataOut(6), dataOut(5)=>
      CNNDMADataOut(5), dataOut(4)=>CNNDMADataOut(4), dataOut(3)=>
      CNNDMADataOut(3), dataOut(2)=>CNNDMADataOut(2), dataOut(1)=>
      CNNDMADataOut(1), dataOut(0)=>CNNDMADataOut(0), addressOut(11)=>
      CNNDMAAddressOut(11), addressOut(10)=>CNNDMAAddressOut(10), 
      addressOut(9)=>CNNDMAAddressOut(9), addressOut(8)=>CNNDMAAddressOut(8), 
      addressOut(7)=>CNNDMAAddressOut(7), addressOut(6)=>CNNDMAAddressOut(6), 
      addressOut(5)=>CNNDMAAddressOut(5), addressOut(4)=>CNNDMAAddressOut(4), 
      addressOut(3)=>CNNDMAAddressOut(3), addressOut(2)=>CNNDMAAddressOut(2), 
      addressOut(1)=>CNNDMAAddressOut(1), addressOut(0)=>CNNDMAAddressOut(0)
   );
   fcDMA : FCDMA_16 port map ( dataIn(15)=>interfaceOutput_15, dataIn(14)=>
      interfaceOutput_14, dataIn(13)=>interfaceOutput_13, dataIn(12)=>
      interfaceOutput_12, dataIn(11)=>interfaceOutput_11, dataIn(10)=>
      interfaceOutput_10, dataIn(9)=>interfaceOutput_9, dataIn(8)=>
      interfaceOutput_8, dataIn(7)=>interfaceOutput_7, dataIn(6)=>
      interfaceOutput_6, dataIn(5)=>interfaceOutput_5, dataIn(4)=>
      interfaceOutput_4, dataIn(3)=>interfaceOutput_3, dataIn(2)=>
      interfaceOutput_2, dataIn(1)=>interfaceOutput_1, dataIn(0)=>
      interfaceOutput_0, clk=>clk, rst=>rst, addressCounterEnable=>
      FCCounterEnable, delayedInt=>FCRegisterEnable, doneFCRAM=>doneDMAFC, 
      address(15)=>FCDMAAddressOut(15), address(14)=>FCDMAAddressOut(14), 
      address(13)=>FCDMAAddressOut(13), address(12)=>FCDMAAddressOut(12), 
      address(11)=>FCDMAAddressOut(11), address(10)=>FCDMAAddressOut(10), 
      address(9)=>FCDMAAddressOut(9), address(8)=>FCDMAAddressOut(8), 
      address(7)=>FCDMAAddressOut(7), address(6)=>FCDMAAddressOut(6), 
      address(5)=>FCDMAAddressOut(5), address(4)=>FCDMAAddressOut(4), 
      address(3)=>FCDMAAddressOut(3), address(2)=>FCDMAAddressOut(2), 
      address(1)=>FCDMAAddressOut(1), address(0)=>FCDMAAddressOut(0), 
      dataOut(79)=>FCDMADataOut(79), dataOut(78)=>FCDMADataOut(78), 
      dataOut(77)=>FCDMADataOut(77), dataOut(76)=>FCDMADataOut(76), 
      dataOut(75)=>FCDMADataOut(75), dataOut(74)=>FCDMADataOut(74), 
      dataOut(73)=>FCDMADataOut(73), dataOut(72)=>FCDMADataOut(72), 
      dataOut(71)=>FCDMADataOut(71), dataOut(70)=>FCDMADataOut(70), 
      dataOut(69)=>FCDMADataOut(69), dataOut(68)=>FCDMADataOut(68), 
      dataOut(67)=>FCDMADataOut(67), dataOut(66)=>FCDMADataOut(66), 
      dataOut(65)=>FCDMADataOut(65), dataOut(64)=>FCDMADataOut(64), 
      dataOut(63)=>FCDMADataOut(63), dataOut(62)=>FCDMADataOut(62), 
      dataOut(61)=>FCDMADataOut(61), dataOut(60)=>FCDMADataOut(60), 
      dataOut(59)=>FCDMADataOut(59), dataOut(58)=>FCDMADataOut(58), 
      dataOut(57)=>FCDMADataOut(57), dataOut(56)=>FCDMADataOut(56), 
      dataOut(55)=>FCDMADataOut(55), dataOut(54)=>FCDMADataOut(54), 
      dataOut(53)=>FCDMADataOut(53), dataOut(52)=>FCDMADataOut(52), 
      dataOut(51)=>FCDMADataOut(51), dataOut(50)=>FCDMADataOut(50), 
      dataOut(49)=>FCDMADataOut(49), dataOut(48)=>FCDMADataOut(48), 
      dataOut(47)=>FCDMADataOut(47), dataOut(46)=>FCDMADataOut(46), 
      dataOut(45)=>FCDMADataOut(45), dataOut(44)=>FCDMADataOut(44), 
      dataOut(43)=>FCDMADataOut(43), dataOut(42)=>FCDMADataOut(42), 
      dataOut(41)=>FCDMADataOut(41), dataOut(40)=>FCDMADataOut(40), 
      dataOut(39)=>FCDMADataOut(39), dataOut(38)=>FCDMADataOut(38), 
      dataOut(37)=>FCDMADataOut(37), dataOut(36)=>FCDMADataOut(36), 
      dataOut(35)=>FCDMADataOut(35), dataOut(34)=>FCDMADataOut(34), 
      dataOut(33)=>FCDMADataOut(33), dataOut(32)=>FCDMADataOut(32), 
      dataOut(31)=>FCDMADataOut(31), dataOut(30)=>FCDMADataOut(30), 
      dataOut(29)=>FCDMADataOut(29), dataOut(28)=>FCDMADataOut(28), 
      dataOut(27)=>FCDMADataOut(27), dataOut(26)=>FCDMADataOut(26), 
      dataOut(25)=>FCDMADataOut(25), dataOut(24)=>FCDMADataOut(24), 
      dataOut(23)=>FCDMADataOut(23), dataOut(22)=>FCDMADataOut(22), 
      dataOut(21)=>FCDMADataOut(21), dataOut(20)=>FCDMADataOut(20), 
      dataOut(19)=>FCDMADataOut(19), dataOut(18)=>FCDMADataOut(18), 
      dataOut(17)=>FCDMADataOut(17), dataOut(16)=>FCDMADataOut(16), 
      dataOut(15)=>FCDMADataOut(15), dataOut(14)=>FCDMADataOut(14), 
      dataOut(13)=>FCDMADataOut(13), dataOut(12)=>FCDMADataOut(12), 
      dataOut(11)=>FCDMADataOut(11), dataOut(10)=>FCDMADataOut(10), 
      dataOut(9)=>FCDMADataOut(9), dataOut(8)=>FCDMADataOut(8), dataOut(7)=>
      FCDMADataOut(7), dataOut(6)=>FCDMADataOut(6), dataOut(5)=>
      FCDMADataOut(5), dataOut(4)=>FCDMADataOut(4), dataOut(3)=>
      FCDMADataOut(3), dataOut(2)=>FCDMADataOut(2), dataOut(1)=>
      FCDMADataOut(1), dataOut(0)=>FCDMADataOut(0), write=>FCRamWriteOld);

end IOChipArch ;


