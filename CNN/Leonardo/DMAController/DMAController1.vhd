
-- 
-- Definition of  DMAController
-- 
--      Mon Apr 15 15:36:53 2019
--      
--      LeonardoSpectrum Level 3, 2018a.2
-- 

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

architecture NBitAdderArch_unfold_2875 of NBitAdder_13 is
   signal nx2, nx8, nx10, nx18, nx24, nx26, nx34, nx40, nx42, nx50, nx56, 
      nx58, nx66, nx72, nx74, nx82, nx88, nx81, nx85, nx89, nx95, nx97, nx99, 
      nx103, nx107, nx111, nx117, nx119, nx121, nx124, nx127, nx130, nx134, 
      nx136, nx138, nx141, nx144, nx147, nx151, nx153, nx155, nx158, nx161, 
      nx164, nx168, nx170, nx172, nx175, nx178, nx181, nx185, nx187, nx189: 
   std_logic ;

begin
   ix44 : fake_gnd port map ( Y=>carryOut);
   ix121 : xnor2 port map ( Y=>sum(0), A0=>b(0), A1=>nx81);
   ix82 : inv01 port map ( Y=>nx81, A=>a(0));
   ix115 : xnor2 port map ( Y=>sum(1), A0=>nx85, A1=>nx2);
   ix86 : nand02 port map ( Y=>nx85, A0=>b(0), A1=>a(0));
   ix3 : xnor2 port map ( Y=>nx2, A0=>a(1), A1=>nx89);
   ix90 : inv01 port map ( Y=>nx89, A=>b(1));
   ix113 : xnor2 port map ( Y=>sum(2), A0=>nx8, A1=>nx99);
   ix9 : oai22 port map ( Y=>nx8, A0=>nx85, A1=>nx95, B0=>nx89, B1=>nx97);
   ix96 : xnor2 port map ( Y=>nx95, A0=>a(1), A1=>b(1));
   ix98 : inv01 port map ( Y=>nx97, A=>a(1));
   ix100 : xnor2 port map ( Y=>nx99, A0=>a(2), A1=>b(2));
   ix111 : xnor2 port map ( Y=>sum(3), A0=>nx103, A1=>nx18);
   ix104 : aoi22 port map ( Y=>nx103, A0=>b(2), A1=>a(2), B0=>nx8, B1=>nx10
   );
   ix11 : xnor2 port map ( Y=>nx10, A0=>a(2), A1=>nx107);
   ix108 : inv01 port map ( Y=>nx107, A=>b(2));
   ix19 : xnor2 port map ( Y=>nx18, A0=>a(3), A1=>nx111);
   ix112 : inv01 port map ( Y=>nx111, A=>b(3));
   ix109 : xnor2 port map ( Y=>sum(4), A0=>nx24, A1=>nx121);
   ix25 : oai21 port map ( Y=>nx24, A0=>nx103, A1=>nx117, B0=>nx119);
   ix118 : xnor2 port map ( Y=>nx117, A0=>a(3), A1=>b(3));
   ix120 : nand02 port map ( Y=>nx119, A0=>b(3), A1=>a(3));
   ix122 : xnor2 port map ( Y=>nx121, A0=>a(4), A1=>b(4));
   ix107 : xnor2 port map ( Y=>sum(5), A0=>nx124, A1=>nx34);
   ix125 : aoi22 port map ( Y=>nx124, A0=>b(4), A1=>a(4), B0=>nx24, B1=>nx26
   );
   ix27 : xnor2 port map ( Y=>nx26, A0=>a(4), A1=>nx127);
   ix128 : inv01 port map ( Y=>nx127, A=>b(4));
   ix35 : xnor2 port map ( Y=>nx34, A0=>a(5), A1=>nx130);
   ix131 : inv01 port map ( Y=>nx130, A=>b(5));
   ix105 : xnor2 port map ( Y=>sum(6), A0=>nx40, A1=>nx138);
   ix41 : oai21 port map ( Y=>nx40, A0=>nx124, A1=>nx134, B0=>nx136);
   ix135 : xnor2 port map ( Y=>nx134, A0=>a(5), A1=>b(5));
   ix137 : nand02 port map ( Y=>nx136, A0=>b(5), A1=>a(5));
   ix139 : xnor2 port map ( Y=>nx138, A0=>a(6), A1=>b(6));
   ix103 : xnor2 port map ( Y=>sum(7), A0=>nx141, A1=>nx50);
   ix142 : aoi22 port map ( Y=>nx141, A0=>b(6), A1=>a(6), B0=>nx40, B1=>nx42
   );
   ix43 : xnor2 port map ( Y=>nx42, A0=>a(6), A1=>nx144);
   ix145 : inv01 port map ( Y=>nx144, A=>b(6));
   ix51 : xnor2 port map ( Y=>nx50, A0=>a(7), A1=>nx147);
   ix148 : inv01 port map ( Y=>nx147, A=>b(7));
   ix101 : xnor2 port map ( Y=>sum(8), A0=>nx56, A1=>nx155);
   ix57 : oai21 port map ( Y=>nx56, A0=>nx141, A1=>nx151, B0=>nx153);
   ix152 : xnor2 port map ( Y=>nx151, A0=>a(7), A1=>b(7));
   ix154 : nand02 port map ( Y=>nx153, A0=>b(7), A1=>a(7));
   ix156 : xnor2 port map ( Y=>nx155, A0=>a(8), A1=>b(8));
   ix99 : xnor2 port map ( Y=>sum(9), A0=>nx158, A1=>nx66);
   ix159 : aoi22 port map ( Y=>nx158, A0=>b(8), A1=>a(8), B0=>nx56, B1=>nx58
   );
   ix59 : xnor2 port map ( Y=>nx58, A0=>a(8), A1=>nx161);
   ix162 : inv01 port map ( Y=>nx161, A=>b(8));
   ix67 : xnor2 port map ( Y=>nx66, A0=>a(9), A1=>nx164);
   ix165 : inv01 port map ( Y=>nx164, A=>b(9));
   ix97 : xnor2 port map ( Y=>sum(10), A0=>nx72, A1=>nx172);
   ix73 : oai21 port map ( Y=>nx72, A0=>nx158, A1=>nx168, B0=>nx170);
   ix169 : xnor2 port map ( Y=>nx168, A0=>a(9), A1=>b(9));
   ix171 : nand02 port map ( Y=>nx170, A0=>b(9), A1=>a(9));
   ix173 : xnor2 port map ( Y=>nx172, A0=>a(10), A1=>b(10));
   ix95 : xnor2 port map ( Y=>sum(11), A0=>nx175, A1=>nx82);
   ix176 : aoi22 port map ( Y=>nx175, A0=>b(10), A1=>a(10), B0=>nx72, B1=>
      nx74);
   ix75 : xnor2 port map ( Y=>nx74, A0=>a(10), A1=>nx178);
   ix179 : inv01 port map ( Y=>nx178, A=>b(10));
   ix83 : xnor2 port map ( Y=>nx82, A0=>a(11), A1=>nx181);
   ix182 : inv01 port map ( Y=>nx181, A=>b(11));
   ix93 : xnor2 port map ( Y=>sum(12), A0=>nx88, A1=>nx189);
   ix89 : oai21 port map ( Y=>nx88, A0=>nx175, A1=>nx185, B0=>nx187);
   ix186 : xnor2 port map ( Y=>nx185, A0=>a(11), A1=>b(11));
   ix188 : nand02 port map ( Y=>nx187, A0=>b(11), A1=>a(11));
   ix190 : xnor2 port map ( Y=>nx189, A0=>a(12), A1=>b(12));
end NBitAdderArch_unfold_2875 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity MultiStepCounter_13 is
   port (
      load : IN std_logic_vector (12 DOWNTO 0) ;
      toBeAdded : IN std_logic_vector (12 DOWNTO 0) ;
      reset : IN std_logic ;
      clk : IN std_logic ;
      isLoad : IN std_logic ;
      MFC : IN std_logic ;
      count : OUT std_logic_vector (12 DOWNTO 0)) ;
end MultiStepCounter_13 ;

architecture MultiStepCounterArch_unfold_2954 of MultiStepCounter_13 is
   component NBitAdder_13
      port (
         a : IN std_logic_vector (12 DOWNTO 0) ;
         b : IN std_logic_vector (12 DOWNTO 0) ;
         carryIn : IN std_logic ;
         sum : OUT std_logic_vector (12 DOWNTO 0) ;
         carryOut : OUT std_logic) ;
   end component ;
   signal count_12_EXMPLR, count_11_EXMPLR, count_10_EXMPLR, count_9_EXMPLR, 
      count_8_EXMPLR, count_7_EXMPLR, count_6_EXMPLR, count_5_EXMPLR, 
      count_4_EXMPLR, count_3_EXMPLR, count_2_EXMPLR, count_1_EXMPLR, 
      count_0_EXMPLR, countAdded_12, countAdded_11, countAdded_10, 
      countAdded_9, countAdded_8, countAdded_7, countAdded_6, countAdded_5, 
      countAdded_4, countAdded_3, countAdded_2, countAdded_1, countAdded_0, 
      GND, nx12, nx18, nx34, nx50, nx66, nx82, nx98, nx114, nx130, nx146, 
      nx162, nx178, nx194, nx210, nx56, nx59, nx63, nx69, nx71, nx73, nx79, 
      nx81, nx83, nx88, nx91, nx93, nx99, nx101, nx103, nx109, nx111, nx113, 
      nx118, nx120, nx123, nx129, nx131, nx133, nx139, nx141, nx143, nx149, 
      nx151, nx153, nx159, nx161, nx163, nx168, nx171, nx173, nx179, nx181, 
      nx183, nx192, nx195, nx197, nx203, nx205, nx207, nx209: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
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
   nextCount : NBitAdder_13 port map ( a(12)=>count_12_EXMPLR, a(11)=>
      count_11_EXMPLR, a(10)=>count_10_EXMPLR, a(9)=>count_9_EXMPLR, a(8)=>
      count_8_EXMPLR, a(7)=>count_7_EXMPLR, a(6)=>count_6_EXMPLR, a(5)=>
      count_5_EXMPLR, a(4)=>count_4_EXMPLR, a(3)=>count_3_EXMPLR, a(2)=>
      count_2_EXMPLR, a(1)=>count_1_EXMPLR, a(0)=>count_0_EXMPLR, b(12)=>
      toBeAdded(12), b(11)=>toBeAdded(11), b(10)=>toBeAdded(10), b(9)=>
      toBeAdded(9), b(8)=>toBeAdded(8), b(7)=>toBeAdded(7), b(6)=>
      toBeAdded(6), b(5)=>toBeAdded(5), b(4)=>toBeAdded(4), b(3)=>
      toBeAdded(3), b(2)=>toBeAdded(2), b(1)=>toBeAdded(1), b(0)=>
      toBeAdded(0), carryIn=>GND, sum(12)=>countAdded_12, sum(11)=>
      countAdded_11, sum(10)=>countAdded_10, sum(9)=>countAdded_9, sum(8)=>
      countAdded_8, sum(7)=>countAdded_7, sum(6)=>countAdded_6, sum(5)=>
      countAdded_5, sum(4)=>countAdded_4, sum(3)=>countAdded_3, sum(2)=>
      countAdded_2, sum(1)=>countAdded_1, sum(0)=>countAdded_0, carryOut=>
      DANGLING(0));
   ix4 : fake_gnd port map ( Y=>GND);
   counterReg_reg_Q_0 : dff port map ( Q=>count_0_EXMPLR, QB=>OPEN, D=>nx18, 
      CLK=>clk);
   ix19 : nand03 port map ( Y=>nx18, A0=>nx56, A1=>nx59, A2=>nx63);
   ix57 : nand02 port map ( Y=>nx56, A0=>count_0_EXMPLR, A1=>nx192);
   ix13 : nor02_2x port map ( Y=>nx12, A0=>MFC, A1=>nx205);
   ix60 : nand03 port map ( Y=>nx59, A0=>load(0), A1=>nx195, A2=>nx205);
   ix64 : nand02 port map ( Y=>nx63, A0=>countAdded_0, A1=>MFC);
   counterReg_reg_Q_1 : dff port map ( Q=>count_1_EXMPLR, QB=>OPEN, D=>nx34, 
      CLK=>clk);
   ix35 : nand03 port map ( Y=>nx34, A0=>nx69, A1=>nx71, A2=>nx73);
   ix70 : nand02 port map ( Y=>nx69, A0=>count_1_EXMPLR, A1=>nx192);
   ix72 : nand03 port map ( Y=>nx71, A0=>load(1), A1=>nx195, A2=>nx205);
   ix74 : nand02 port map ( Y=>nx73, A0=>countAdded_1, A1=>MFC);
   counterReg_reg_Q_2 : dff port map ( Q=>count_2_EXMPLR, QB=>OPEN, D=>nx50, 
      CLK=>clk);
   ix51 : nand03 port map ( Y=>nx50, A0=>nx79, A1=>nx81, A2=>nx83);
   ix80 : nand02 port map ( Y=>nx79, A0=>count_2_EXMPLR, A1=>nx192);
   ix82 : nand03 port map ( Y=>nx81, A0=>load(2), A1=>nx195, A2=>nx205);
   ix84 : nand02 port map ( Y=>nx83, A0=>countAdded_2, A1=>MFC);
   counterReg_reg_Q_3 : dff port map ( Q=>count_3_EXMPLR, QB=>OPEN, D=>nx66, 
      CLK=>clk);
   ix67 : nand03 port map ( Y=>nx66, A0=>nx88, A1=>nx91, A2=>nx93);
   ix89 : nand02 port map ( Y=>nx88, A0=>count_3_EXMPLR, A1=>nx192);
   ix92 : nand03 port map ( Y=>nx91, A0=>load(3), A1=>nx195, A2=>nx205);
   ix94 : nand02 port map ( Y=>nx93, A0=>countAdded_3, A1=>MFC);
   counterReg_reg_Q_4 : dff port map ( Q=>count_4_EXMPLR, QB=>OPEN, D=>nx82, 
      CLK=>clk);
   ix83 : nand03 port map ( Y=>nx82, A0=>nx99, A1=>nx101, A2=>nx103);
   ix100 : nand02 port map ( Y=>nx99, A0=>count_4_EXMPLR, A1=>nx192);
   ix102 : nand03 port map ( Y=>nx101, A0=>load(4), A1=>nx195, A2=>nx205);
   ix104 : nand02 port map ( Y=>nx103, A0=>countAdded_4, A1=>MFC);
   counterReg_reg_Q_5 : dff port map ( Q=>count_5_EXMPLR, QB=>OPEN, D=>nx98, 
      CLK=>clk);
   ix99 : nand03 port map ( Y=>nx98, A0=>nx109, A1=>nx111, A2=>nx113);
   ix110 : nand02 port map ( Y=>nx109, A0=>count_5_EXMPLR, A1=>nx192);
   ix112 : nand03 port map ( Y=>nx111, A0=>load(5), A1=>nx195, A2=>nx205);
   ix114 : nand02 port map ( Y=>nx113, A0=>countAdded_5, A1=>MFC);
   counterReg_reg_Q_6 : dff port map ( Q=>count_6_EXMPLR, QB=>OPEN, D=>nx114, 
      CLK=>clk);
   ix115 : nand03 port map ( Y=>nx114, A0=>nx118, A1=>nx120, A2=>nx123);
   ix119 : nand02 port map ( Y=>nx118, A0=>count_6_EXMPLR, A1=>nx192);
   ix121 : nand03 port map ( Y=>nx120, A0=>load(6), A1=>nx195, A2=>nx207);
   ix124 : nand02 port map ( Y=>nx123, A0=>countAdded_6, A1=>MFC);
   counterReg_reg_Q_7 : dff port map ( Q=>count_7_EXMPLR, QB=>OPEN, D=>nx130, 
      CLK=>clk);
   ix131 : nand03 port map ( Y=>nx130, A0=>nx129, A1=>nx131, A2=>nx133);
   ix130 : nand02 port map ( Y=>nx129, A0=>count_7_EXMPLR, A1=>nx12);
   ix132 : nand03 port map ( Y=>nx131, A0=>load(7), A1=>nx197, A2=>nx207);
   ix134 : nand02 port map ( Y=>nx133, A0=>countAdded_7, A1=>MFC);
   counterReg_reg_Q_8 : dff port map ( Q=>count_8_EXMPLR, QB=>OPEN, D=>nx146, 
      CLK=>clk);
   ix147 : nand03 port map ( Y=>nx146, A0=>nx139, A1=>nx141, A2=>nx143);
   ix140 : nand02 port map ( Y=>nx139, A0=>count_8_EXMPLR, A1=>nx12);
   ix142 : nand03 port map ( Y=>nx141, A0=>load(8), A1=>nx197, A2=>nx207);
   ix144 : nand02 port map ( Y=>nx143, A0=>countAdded_8, A1=>MFC);
   counterReg_reg_Q_9 : dff port map ( Q=>count_9_EXMPLR, QB=>OPEN, D=>nx162, 
      CLK=>clk);
   ix163 : nand03 port map ( Y=>nx162, A0=>nx149, A1=>nx151, A2=>nx153);
   ix150 : nand02 port map ( Y=>nx149, A0=>count_9_EXMPLR, A1=>nx12);
   ix152 : nand03 port map ( Y=>nx151, A0=>load(9), A1=>nx197, A2=>nx207);
   ix154 : nand02 port map ( Y=>nx153, A0=>countAdded_9, A1=>MFC);
   counterReg_reg_Q_10 : dff port map ( Q=>count_10_EXMPLR, QB=>OPEN, D=>
      nx178, CLK=>clk);
   ix179 : nand03 port map ( Y=>nx178, A0=>nx159, A1=>nx161, A2=>nx163);
   ix160 : nand02 port map ( Y=>nx159, A0=>count_10_EXMPLR, A1=>nx12);
   ix162 : nand03 port map ( Y=>nx161, A0=>load(10), A1=>nx197, A2=>nx207);
   ix164 : nand02 port map ( Y=>nx163, A0=>countAdded_10, A1=>MFC);
   counterReg_reg_Q_11 : dff port map ( Q=>count_11_EXMPLR, QB=>OPEN, D=>
      nx194, CLK=>clk);
   ix195 : nand03 port map ( Y=>nx194, A0=>nx168, A1=>nx171, A2=>nx173);
   ix169 : nand02 port map ( Y=>nx168, A0=>count_11_EXMPLR, A1=>nx12);
   ix172 : nand03 port map ( Y=>nx171, A0=>load(11), A1=>nx197, A2=>nx207);
   ix174 : nand02 port map ( Y=>nx173, A0=>countAdded_11, A1=>MFC);
   counterReg_reg_Q_12 : dff port map ( Q=>count_12_EXMPLR, QB=>OPEN, D=>
      nx210, CLK=>clk);
   ix211 : nand03 port map ( Y=>nx210, A0=>nx179, A1=>nx181, A2=>nx183);
   ix180 : nand02 port map ( Y=>nx179, A0=>count_12_EXMPLR, A1=>nx12);
   ix182 : nand03 port map ( Y=>nx181, A0=>load(12), A1=>nx197, A2=>nx207);
   ix184 : nand02 port map ( Y=>nx183, A0=>MFC, A1=>countAdded_12);
   ix191 : nor02_2x port map ( Y=>nx192, A0=>MFC, A1=>nx209);
   ix193 : inv02 port map ( Y=>nx195, A=>MFC);
   ix196 : inv02 port map ( Y=>nx197, A=>MFC);
   ix202 : inv01 port map ( Y=>nx203, A=>isLoad);
   ix204 : inv02 port map ( Y=>nx205, A=>nx203);
   ix206 : inv02 port map ( Y=>nx207, A=>nx203);
   ix208 : inv02 port map ( Y=>nx209, A=>nx203);
end MultiStepCounterArch_unfold_2954 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity DMA_13_80 is
   port (
      initialCount : IN std_logic_vector (2 DOWNTO 0) ;
      readBaseAddress : IN std_logic_vector (12 DOWNTO 0) ;
      readStep : IN std_logic_vector (12 DOWNTO 0) ;
      initAddress : IN std_logic ;
      initCounter : IN std_logic ;
      load : IN std_logic ;
      internalBus : OUT std_logic_vector (79 DOWNTO 0) ;
      finishedOneRead : OUT std_logic ;
      finishedReading : OUT std_logic ;
      clk : IN std_logic ;
      ramDataInBus : IN std_logic_vector (79 DOWNTO 0) ;
      ramRead : OUT std_logic ;
      ramReadAddress : OUT std_logic_vector (12 DOWNTO 0) ;
      MFC : IN std_logic) ;
end DMA_13_80 ;

architecture DMAArch_unfold_1492 of DMA_13_80 is
   component MultiStepCounter_13
      port (
         load : IN std_logic_vector (12 DOWNTO 0) ;
         toBeAdded : IN std_logic_vector (12 DOWNTO 0) ;
         reset : IN std_logic ;
         clk : IN std_logic ;
         isLoad : IN std_logic ;
         MFC : IN std_logic ;
         count : OUT std_logic_vector (12 DOWNTO 0)) ;
   end component ;
   signal tobeAdded_12, tobeAdded_11, tobeAdded_10, tobeAdded_9, tobeAdded_8, 
      tobeAdded_7, tobeAdded_6, tobeAdded_5, tobeAdded_4, tobeAdded_3, 
      tobeAdded_2, tobeAdded_1, tobeAdded_0, finishedOneRead_EXMPLR, GND, 
      currentCount_0, nx82, currentCount_2, currentCount_1, nx100, nx120, 
      nx136, nx148, nx162, nx50, nx60, nx70, nx83, nx85, nx88, nx91, nx101, 
      nx103, nx105, nx107, nx109, nx111, nx114, nx119, nx123, nx128, nx130, 
      nx133, nx137, nx139, nx147, nx261, nx263, nx265, nx267, nx269, nx271, 
      nx273, nx275, nx277, nx279, nx281, nx283, nx289, nx295, nx297, nx299, 
      nx301: std_logic ;

begin
   finishedOneRead <= finishedOneRead_EXMPLR ;
   addressRegister : MultiStepCounter_13 port map ( load(12)=>
      readBaseAddress(12), load(11)=>readBaseAddress(11), load(10)=>
      readBaseAddress(10), load(9)=>readBaseAddress(9), load(8)=>
      readBaseAddress(8), load(7)=>readBaseAddress(7), load(6)=>
      readBaseAddress(6), load(5)=>readBaseAddress(5), load(4)=>
      readBaseAddress(4), load(3)=>readBaseAddress(3), load(2)=>
      readBaseAddress(2), load(1)=>readBaseAddress(1), load(0)=>
      readBaseAddress(0), toBeAdded(12)=>tobeAdded_12, toBeAdded(11)=>
      tobeAdded_11, toBeAdded(10)=>tobeAdded_10, toBeAdded(9)=>tobeAdded_9, 
      toBeAdded(8)=>tobeAdded_8, toBeAdded(7)=>tobeAdded_7, toBeAdded(6)=>
      tobeAdded_6, toBeAdded(5)=>tobeAdded_5, toBeAdded(4)=>tobeAdded_4, 
      toBeAdded(3)=>tobeAdded_3, toBeAdded(2)=>tobeAdded_2, toBeAdded(1)=>
      tobeAdded_1, toBeAdded(0)=>tobeAdded_0, reset=>GND, clk=>clk, isLoad=>
      initAddress, MFC=>MFC, count(12)=>ramReadAddress(12), count(11)=>
      ramReadAddress(11), count(10)=>ramReadAddress(10), count(9)=>
      ramReadAddress(9), count(8)=>ramReadAddress(8), count(7)=>
      ramReadAddress(7), count(6)=>ramReadAddress(6), count(5)=>
      ramReadAddress(5), count(4)=>ramReadAddress(4), count(3)=>
      ramReadAddress(3), count(2)=>ramReadAddress(2), count(1)=>
      ramReadAddress(1), count(0)=>ramReadAddress(0));
   ix9 : fake_gnd port map ( Y=>GND);
   ix155 : nor02_2x port map ( Y=>ramRead, A0=>nx83, A1=>nx130);
   ix84 : nor03_2x port map ( Y=>nx83, A0=>nx85, A1=>clk, A2=>nx136);
   ix86 : inv01 port map ( Y=>nx85, A=>MFC);
   ix137 : nand03 port map ( Y=>nx136, A0=>nx88, A1=>nx114, A2=>
      currentCount_0);
   ix61 : oai21 port map ( Y=>nx60, A0=>nx91, A1=>nx105, B0=>nx111);
   ix92 : aoi21 port map ( Y=>nx91, A0=>initialCount(1), A1=>nx297, B0=>
      nx100);
   ix101 : oai22 port map ( Y=>nx100, A0=>nx88, A1=>nx82, B0=>nx297, B1=>
      nx109);
   ix83 : nand02 port map ( Y=>nx82, A0=>currentCount_0, A1=>nx107);
   ix51 : mux21 port map ( Y=>nx50, A0=>nx101, A1=>nx103, S0=>nx105);
   ix102 : nor02_2x port map ( Y=>nx101, A0=>nx103, A1=>nx297);
   counter_counterReg_reg_Q_0 : dff port map ( Q=>currentCount_0, QB=>nx103, 
      D=>nx50, CLK=>clk);
   ix106 : nor02_2x port map ( Y=>nx105, A0=>MFC, A1=>nx297);
   ix108 : inv01 port map ( Y=>nx107, A=>initCounter);
   ix110 : nand02 port map ( Y=>nx109, A0=>nx88, A1=>nx103);
   ix112 : nand02 port map ( Y=>nx111, A0=>currentCount_1, A1=>nx105);
   counter_counterReg_reg_Q_1 : dff port map ( Q=>currentCount_1, QB=>nx88, 
      D=>nx60, CLK=>clk);
   ix71 : oai21 port map ( Y=>nx70, A0=>nx119, A1=>nx105, B0=>nx128);
   ix120 : aoi21 port map ( Y=>nx119, A0=>initialCount(2), A1=>nx297, B0=>
      nx120);
   ix121 : nor02_2x port map ( Y=>nx120, A0=>nx297, A1=>nx123);
   counter_counterReg_reg_Q_2 : dff port map ( Q=>currentCount_2, QB=>nx114, 
      D=>nx70, CLK=>clk);
   ix129 : nand02 port map ( Y=>nx128, A0=>currentCount_2, A1=>nx105);
   ix131 : oai21 port map ( Y=>nx130, A0=>nx109, A1=>nx133, B0=>load);
   ix134 : nand02 port map ( Y=>nx133, A0=>clk, A1=>nx114);
   ix167 : nor02_2x port map ( Y=>finishedReading, A0=>nx137, A1=>nx139);
   ix138 : nand02 port map ( Y=>nx137, A0=>load, A1=>MFC);
   ix140 : nor02_2x port map ( Y=>nx139, A0=>nx162, A1=>nx148);
   ix163 : nor02_2x port map ( Y=>nx162, A0=>clk, A1=>nx136);
   ix149 : nor03_2x port map ( Y=>nx148, A0=>currentCount_1, A1=>
      currentCount_0, A2=>nx133);
   ix157 : nor02_2x port map ( Y=>finishedOneRead_EXMPLR, A0=>nx147, A1=>
      nx85);
   ix148 : inv01 port map ( Y=>nx147, A=>load);
   readStepRegister_reg_Q_0 : dff port map ( Q=>tobeAdded_0, QB=>OPEN, D=>
      readStep(0), CLK=>nx297);
   readStepRegister_reg_Q_1 : dff port map ( Q=>tobeAdded_1, QB=>OPEN, D=>
      readStep(1), CLK=>nx299);
   readStepRegister_reg_Q_2 : dff port map ( Q=>tobeAdded_2, QB=>OPEN, D=>
      readStep(2), CLK=>nx299);
   readStepRegister_reg_Q_3 : dff port map ( Q=>tobeAdded_3, QB=>OPEN, D=>
      readStep(3), CLK=>nx299);
   readStepRegister_reg_Q_4 : dff port map ( Q=>tobeAdded_4, QB=>OPEN, D=>
      readStep(4), CLK=>nx299);
   readStepRegister_reg_Q_5 : dff port map ( Q=>tobeAdded_5, QB=>OPEN, D=>
      readStep(5), CLK=>nx299);
   readStepRegister_reg_Q_6 : dff port map ( Q=>tobeAdded_6, QB=>OPEN, D=>
      readStep(6), CLK=>nx299);
   readStepRegister_reg_Q_7 : dff port map ( Q=>tobeAdded_7, QB=>OPEN, D=>
      readStep(7), CLK=>nx299);
   readStepRegister_reg_Q_8 : dff port map ( Q=>tobeAdded_8, QB=>OPEN, D=>
      readStep(8), CLK=>nx301);
   readStepRegister_reg_Q_9 : dff port map ( Q=>tobeAdded_9, QB=>OPEN, D=>
      readStep(9), CLK=>nx301);
   readStepRegister_reg_Q_10 : dff port map ( Q=>tobeAdded_10, QB=>OPEN, D=>
      readStep(10), CLK=>nx301);
   readStepRegister_reg_Q_11 : dff port map ( Q=>tobeAdded_11, QB=>OPEN, D=>
      readStep(11), CLK=>nx301);
   readStepRegister_reg_Q_12 : dff port map ( Q=>tobeAdded_12, QB=>OPEN, D=>
      readStep(12), CLK=>nx301);
   tristateLabel_tri_output_0 : trib04 port map ( Y=>internalBus(0), A=>
      ramDataInBus(0), E=>nx261);
   tristateLabel_tri_output_1 : trib04 port map ( Y=>internalBus(1), A=>
      ramDataInBus(1), E=>nx261);
   tristateLabel_tri_output_2 : trib04 port map ( Y=>internalBus(2), A=>
      ramDataInBus(2), E=>nx261);
   tristateLabel_tri_output_3 : trib04 port map ( Y=>internalBus(3), A=>
      ramDataInBus(3), E=>nx261);
   tristateLabel_tri_output_4 : trib04 port map ( Y=>internalBus(4), A=>
      ramDataInBus(4), E=>nx261);
   tristateLabel_tri_output_5 : trib04 port map ( Y=>internalBus(5), A=>
      ramDataInBus(5), E=>nx261);
   tristateLabel_tri_output_6 : trib04 port map ( Y=>internalBus(6), A=>
      ramDataInBus(6), E=>nx261);
   tristateLabel_tri_output_7 : trib04 port map ( Y=>internalBus(7), A=>
      ramDataInBus(7), E=>nx263);
   tristateLabel_tri_output_8 : trib04 port map ( Y=>internalBus(8), A=>
      ramDataInBus(8), E=>nx263);
   tristateLabel_tri_output_9 : trib04 port map ( Y=>internalBus(9), A=>
      ramDataInBus(9), E=>nx263);
   tristateLabel_tri_output_10 : trib04 port map ( Y=>internalBus(10), A=>
      ramDataInBus(10), E=>nx263);
   tristateLabel_tri_output_11 : trib04 port map ( Y=>internalBus(11), A=>
      ramDataInBus(11), E=>nx263);
   tristateLabel_tri_output_12 : trib04 port map ( Y=>internalBus(12), A=>
      ramDataInBus(12), E=>nx263);
   tristateLabel_tri_output_13 : trib04 port map ( Y=>internalBus(13), A=>
      ramDataInBus(13), E=>nx263);
   tristateLabel_tri_output_14 : trib04 port map ( Y=>internalBus(14), A=>
      ramDataInBus(14), E=>nx265);
   tristateLabel_tri_output_15 : trib04 port map ( Y=>internalBus(15), A=>
      ramDataInBus(15), E=>nx265);
   tristateLabel_tri_output_16 : trib04 port map ( Y=>internalBus(16), A=>
      ramDataInBus(16), E=>nx265);
   tristateLabel_tri_output_17 : trib04 port map ( Y=>internalBus(17), A=>
      ramDataInBus(17), E=>nx265);
   tristateLabel_tri_output_18 : trib04 port map ( Y=>internalBus(18), A=>
      ramDataInBus(18), E=>nx265);
   tristateLabel_tri_output_19 : trib04 port map ( Y=>internalBus(19), A=>
      ramDataInBus(19), E=>nx265);
   tristateLabel_tri_output_20 : trib04 port map ( Y=>internalBus(20), A=>
      ramDataInBus(20), E=>nx265);
   tristateLabel_tri_output_21 : trib04 port map ( Y=>internalBus(21), A=>
      ramDataInBus(21), E=>nx267);
   tristateLabel_tri_output_22 : trib04 port map ( Y=>internalBus(22), A=>
      ramDataInBus(22), E=>nx267);
   tristateLabel_tri_output_23 : trib04 port map ( Y=>internalBus(23), A=>
      ramDataInBus(23), E=>nx267);
   tristateLabel_tri_output_24 : trib04 port map ( Y=>internalBus(24), A=>
      ramDataInBus(24), E=>nx267);
   tristateLabel_tri_output_25 : trib04 port map ( Y=>internalBus(25), A=>
      ramDataInBus(25), E=>nx267);
   tristateLabel_tri_output_26 : trib04 port map ( Y=>internalBus(26), A=>
      ramDataInBus(26), E=>nx267);
   tristateLabel_tri_output_27 : trib04 port map ( Y=>internalBus(27), A=>
      ramDataInBus(27), E=>nx267);
   tristateLabel_tri_output_28 : trib04 port map ( Y=>internalBus(28), A=>
      ramDataInBus(28), E=>nx269);
   tristateLabel_tri_output_29 : trib04 port map ( Y=>internalBus(29), A=>
      ramDataInBus(29), E=>nx269);
   tristateLabel_tri_output_30 : trib04 port map ( Y=>internalBus(30), A=>
      ramDataInBus(30), E=>nx269);
   tristateLabel_tri_output_31 : trib04 port map ( Y=>internalBus(31), A=>
      ramDataInBus(31), E=>nx269);
   tristateLabel_tri_output_32 : trib04 port map ( Y=>internalBus(32), A=>
      ramDataInBus(32), E=>nx269);
   tristateLabel_tri_output_33 : trib04 port map ( Y=>internalBus(33), A=>
      ramDataInBus(33), E=>nx269);
   tristateLabel_tri_output_34 : trib04 port map ( Y=>internalBus(34), A=>
      ramDataInBus(34), E=>nx269);
   tristateLabel_tri_output_35 : trib04 port map ( Y=>internalBus(35), A=>
      ramDataInBus(35), E=>nx271);
   tristateLabel_tri_output_36 : trib04 port map ( Y=>internalBus(36), A=>
      ramDataInBus(36), E=>nx271);
   tristateLabel_tri_output_37 : trib04 port map ( Y=>internalBus(37), A=>
      ramDataInBus(37), E=>nx271);
   tristateLabel_tri_output_38 : trib04 port map ( Y=>internalBus(38), A=>
      ramDataInBus(38), E=>nx271);
   tristateLabel_tri_output_39 : trib04 port map ( Y=>internalBus(39), A=>
      ramDataInBus(39), E=>nx271);
   tristateLabel_tri_output_40 : trib04 port map ( Y=>internalBus(40), A=>
      ramDataInBus(40), E=>nx271);
   tristateLabel_tri_output_41 : trib04 port map ( Y=>internalBus(41), A=>
      ramDataInBus(41), E=>nx271);
   tristateLabel_tri_output_42 : trib04 port map ( Y=>internalBus(42), A=>
      ramDataInBus(42), E=>nx273);
   tristateLabel_tri_output_43 : trib04 port map ( Y=>internalBus(43), A=>
      ramDataInBus(43), E=>nx273);
   tristateLabel_tri_output_44 : trib04 port map ( Y=>internalBus(44), A=>
      ramDataInBus(44), E=>nx273);
   tristateLabel_tri_output_45 : trib04 port map ( Y=>internalBus(45), A=>
      ramDataInBus(45), E=>nx273);
   tristateLabel_tri_output_46 : trib04 port map ( Y=>internalBus(46), A=>
      ramDataInBus(46), E=>nx273);
   tristateLabel_tri_output_47 : trib04 port map ( Y=>internalBus(47), A=>
      ramDataInBus(47), E=>nx273);
   tristateLabel_tri_output_48 : trib04 port map ( Y=>internalBus(48), A=>
      ramDataInBus(48), E=>nx273);
   tristateLabel_tri_output_49 : trib04 port map ( Y=>internalBus(49), A=>
      ramDataInBus(49), E=>nx275);
   tristateLabel_tri_output_50 : trib04 port map ( Y=>internalBus(50), A=>
      ramDataInBus(50), E=>nx275);
   tristateLabel_tri_output_51 : trib04 port map ( Y=>internalBus(51), A=>
      ramDataInBus(51), E=>nx275);
   tristateLabel_tri_output_52 : trib04 port map ( Y=>internalBus(52), A=>
      ramDataInBus(52), E=>nx275);
   tristateLabel_tri_output_53 : trib04 port map ( Y=>internalBus(53), A=>
      ramDataInBus(53), E=>nx275);
   tristateLabel_tri_output_54 : trib04 port map ( Y=>internalBus(54), A=>
      ramDataInBus(54), E=>nx275);
   tristateLabel_tri_output_55 : trib04 port map ( Y=>internalBus(55), A=>
      ramDataInBus(55), E=>nx275);
   tristateLabel_tri_output_56 : trib04 port map ( Y=>internalBus(56), A=>
      ramDataInBus(56), E=>nx277);
   tristateLabel_tri_output_57 : trib04 port map ( Y=>internalBus(57), A=>
      ramDataInBus(57), E=>nx277);
   tristateLabel_tri_output_58 : trib04 port map ( Y=>internalBus(58), A=>
      ramDataInBus(58), E=>nx277);
   tristateLabel_tri_output_59 : trib04 port map ( Y=>internalBus(59), A=>
      ramDataInBus(59), E=>nx277);
   tristateLabel_tri_output_60 : trib04 port map ( Y=>internalBus(60), A=>
      ramDataInBus(60), E=>nx277);
   tristateLabel_tri_output_61 : trib04 port map ( Y=>internalBus(61), A=>
      ramDataInBus(61), E=>nx277);
   tristateLabel_tri_output_62 : trib04 port map ( Y=>internalBus(62), A=>
      ramDataInBus(62), E=>nx277);
   tristateLabel_tri_output_63 : trib04 port map ( Y=>internalBus(63), A=>
      ramDataInBus(63), E=>nx279);
   tristateLabel_tri_output_64 : trib04 port map ( Y=>internalBus(64), A=>
      ramDataInBus(64), E=>nx279);
   tristateLabel_tri_output_65 : trib04 port map ( Y=>internalBus(65), A=>
      ramDataInBus(65), E=>nx279);
   tristateLabel_tri_output_66 : trib04 port map ( Y=>internalBus(66), A=>
      ramDataInBus(66), E=>nx279);
   tristateLabel_tri_output_67 : trib04 port map ( Y=>internalBus(67), A=>
      ramDataInBus(67), E=>nx279);
   tristateLabel_tri_output_68 : trib04 port map ( Y=>internalBus(68), A=>
      ramDataInBus(68), E=>nx279);
   tristateLabel_tri_output_69 : trib04 port map ( Y=>internalBus(69), A=>
      ramDataInBus(69), E=>nx279);
   tristateLabel_tri_output_70 : trib04 port map ( Y=>internalBus(70), A=>
      ramDataInBus(70), E=>nx281);
   tristateLabel_tri_output_71 : trib04 port map ( Y=>internalBus(71), A=>
      ramDataInBus(71), E=>nx281);
   tristateLabel_tri_output_72 : trib04 port map ( Y=>internalBus(72), A=>
      ramDataInBus(72), E=>nx281);
   tristateLabel_tri_output_73 : trib04 port map ( Y=>internalBus(73), A=>
      ramDataInBus(73), E=>nx281);
   tristateLabel_tri_output_74 : trib04 port map ( Y=>internalBus(74), A=>
      ramDataInBus(74), E=>nx281);
   tristateLabel_tri_output_75 : trib04 port map ( Y=>internalBus(75), A=>
      ramDataInBus(75), E=>nx281);
   tristateLabel_tri_output_76 : trib04 port map ( Y=>internalBus(76), A=>
      ramDataInBus(76), E=>nx281);
   tristateLabel_tri_output_77 : trib04 port map ( Y=>internalBus(77), A=>
      ramDataInBus(77), E=>nx283);
   tristateLabel_tri_output_78 : trib04 port map ( Y=>internalBus(78), A=>
      ramDataInBus(78), E=>nx283);
   tristateLabel_tri_output_79 : trib04 port map ( Y=>internalBus(79), A=>
      ramDataInBus(79), E=>nx283);
   ix260 : buf02 port map ( Y=>nx261, A=>nx289);
   ix262 : buf02 port map ( Y=>nx263, A=>nx289);
   ix264 : buf02 port map ( Y=>nx265, A=>nx289);
   ix266 : buf02 port map ( Y=>nx267, A=>nx289);
   ix268 : buf02 port map ( Y=>nx269, A=>nx289);
   ix270 : buf02 port map ( Y=>nx271, A=>nx289);
   ix272 : buf02 port map ( Y=>nx273, A=>nx289);
   ix274 : buf02 port map ( Y=>nx275, A=>finishedOneRead_EXMPLR);
   ix276 : buf02 port map ( Y=>nx277, A=>finishedOneRead_EXMPLR);
   ix278 : buf02 port map ( Y=>nx279, A=>finishedOneRead_EXMPLR);
   ix280 : buf02 port map ( Y=>nx281, A=>finishedOneRead_EXMPLR);
   ix282 : buf02 port map ( Y=>nx283, A=>finishedOneRead_EXMPLR);
   ix288 : nor02_2x port map ( Y=>nx289, A0=>nx147, A1=>nx85);
   ix124 : xnor2 port map ( Y=>nx123, A0=>nx114, A1=>nx295);
   ix115 : nand02 port map ( Y=>nx295, A0=>nx88, A1=>nx103);
   ix296 : inv02 port map ( Y=>nx297, A=>nx107);
   ix298 : inv02 port map ( Y=>nx299, A=>nx107);
   ix300 : inv02 port map ( Y=>nx301, A=>nx107);
end DMAArch_unfold_1492 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity Counter2_13 is
   port (
      load : IN std_logic_vector (12 DOWNTO 0) ;
      reset : IN std_logic ;
      clk : IN std_logic ;
      isLoad : IN std_logic ;
      count : OUT std_logic_vector (12 DOWNTO 0)) ;
end Counter2_13 ;

architecture Counter2Arch_unfold_2979 of Counter2_13 is
   signal count_12_EXMPLR, count_10_EXMPLR, count_9_EXMPLR, count_8_EXMPLR, 
      count_7_EXMPLR, count_6_EXMPLR, count_5_EXMPLR, count_4_EXMPLR, 
      count_3_EXMPLR, count_2_EXMPLR, count_1_EXMPLR, count_0_EXMPLR, nx10, 
      nx24, nx38, nx42, nx52, nx56, nx66, nx80, nx94, nx98, nx108, nx122, 
      nx136, nx150, nx164, nx168, nx178, nx43, nx45, nx47, nx49, nx55, nx57, 
      nx59, nx63, nx67, nx69, nx73, nx77, nx79, nx81, nx85, nx89, nx91, nx95, 
      nx101, nx103, nx107, nx111, nx113, nx115, nx119, nx123, nx125, nx129, 
      nx135, nx137, nx141, nx145, nx147, nx149, nx153, nx157, nx159, nx163, 
      nx169, nx171, nx175, nx179, nx181, nx189, nx191, nx193, nx195, nx197, 
      nx199, nx201, nx203, nx205, nx207, nx209, nx211, nx213, nx215, nx217, 
      nx219, nx221, nx223, nx225: std_logic ;

begin
   count(12) <= count_12_EXMPLR ;
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
   ix11 : nand02 port map ( Y=>nx10, A0=>nx43, A1=>nx45);
   ix44 : nand02 port map ( Y=>nx43, A0=>load(0), A1=>nx215);
   ix46 : nand02 port map ( Y=>nx45, A0=>nx47, A1=>nx49);
   ix48 : inv01 port map ( Y=>nx47, A=>isLoad);
   counterReg_reg_Q_0 : dff port map ( Q=>count_0_EXMPLR, QB=>nx49, D=>nx10, 
      CLK=>nx223);
   counterReg_reg_Q_1 : dff port map ( Q=>count_1_EXMPLR, QB=>nx59, D=>nx24, 
      CLK=>nx223);
   ix25 : oai21 port map ( Y=>nx24, A0=>nx215, A1=>nx55, B0=>nx57);
   ix58 : nand02 port map ( Y=>nx57, A0=>load(1), A1=>nx215);
   counterReg_reg_Q_2 : dff port map ( Q=>count_2_EXMPLR, QB=>nx69, D=>nx38, 
      CLK=>nx223);
   ix39 : oai21 port map ( Y=>nx38, A0=>nx215, A1=>nx63, B0=>nx67);
   ix68 : nand02 port map ( Y=>nx67, A0=>load(2), A1=>nx215);
   counterReg_reg_Q_3 : dff port map ( Q=>count_3_EXMPLR, QB=>nx81, D=>nx52, 
      CLK=>nx223);
   ix53 : oai21 port map ( Y=>nx52, A0=>nx215, A1=>nx73, B0=>nx79);
   ix43 : nor02_2x port map ( Y=>nx42, A0=>nx69, A1=>nx77);
   ix78 : nand02 port map ( Y=>nx77, A0=>count_1_EXMPLR, A1=>count_0_EXMPLR
   );
   ix80 : nand02 port map ( Y=>nx79, A0=>load(3), A1=>nx215);
   counterReg_reg_Q_4 : dff port map ( Q=>count_4_EXMPLR, QB=>nx91, D=>nx66, 
      CLK=>nx223);
   ix67 : oai21 port map ( Y=>nx66, A0=>nx217, A1=>nx85, B0=>nx89);
   ix57 : nor03_2x port map ( Y=>nx56, A0=>nx81, A1=>nx69, A2=>nx77);
   ix90 : nand02 port map ( Y=>nx89, A0=>load(4), A1=>nx217);
   counterReg_reg_Q_5 : dff port map ( Q=>count_5_EXMPLR, QB=>nx103, D=>nx80, 
      CLK=>nx223);
   ix81 : oai21 port map ( Y=>nx80, A0=>nx217, A1=>nx95, B0=>nx101);
   ix102 : nand02 port map ( Y=>nx101, A0=>load(5), A1=>nx217);
   counterReg_reg_Q_6 : dff port map ( Q=>count_6_EXMPLR, QB=>nx115, D=>nx94, 
      CLK=>nx223);
   ix95 : oai21 port map ( Y=>nx94, A0=>nx217, A1=>nx107, B0=>nx113);
   ix112 : nand04 port map ( Y=>nx111, A0=>count_3_EXMPLR, A1=>
      count_2_EXMPLR, A2=>count_1_EXMPLR, A3=>count_0_EXMPLR);
   ix114 : nand02 port map ( Y=>nx113, A0=>load(6), A1=>nx217);
   counterReg_reg_Q_7 : dff port map ( Q=>count_7_EXMPLR, QB=>nx125, D=>
      nx108, CLK=>nx225);
   ix109 : oai21 port map ( Y=>nx108, A0=>nx217, A1=>nx119, B0=>nx123);
   ix99 : nor04 port map ( Y=>nx98, A0=>nx115, A1=>nx103, A2=>nx91, A3=>
      nx111);
   ix124 : nand02 port map ( Y=>nx123, A0=>load(7), A1=>nx219);
   counterReg_reg_Q_8 : dff port map ( Q=>count_8_EXMPLR, QB=>nx137, D=>
      nx122, CLK=>nx225);
   ix123 : oai21 port map ( Y=>nx122, A0=>nx219, A1=>nx129, B0=>nx135);
   ix136 : nand02 port map ( Y=>nx135, A0=>load(8), A1=>nx219);
   counterReg_reg_Q_9 : dff port map ( Q=>count_9_EXMPLR, QB=>nx149, D=>
      nx136, CLK=>nx225);
   ix137 : oai21 port map ( Y=>nx136, A0=>nx219, A1=>nx141, B0=>nx147);
   ix146 : inv01 port map ( Y=>nx145, A=>nx98);
   ix148 : nand02 port map ( Y=>nx147, A0=>load(9), A1=>nx219);
   counterReg_reg_Q_10 : dff port map ( Q=>count_10_EXMPLR, QB=>nx159, D=>
      nx150, CLK=>nx225);
   ix151 : oai21 port map ( Y=>nx150, A0=>nx219, A1=>nx153, B0=>nx157);
   ix158 : nand02 port map ( Y=>nx157, A0=>load(10), A1=>nx219);
   counterReg_reg_Q_11 : dff port map ( Q=>count(11), QB=>nx171, D=>nx164, 
      CLK=>nx225);
   ix165 : oai21 port map ( Y=>nx164, A0=>nx221, A1=>nx163, B0=>nx169);
   ix170 : nand02 port map ( Y=>nx169, A0=>load(11), A1=>nx221);
   counterReg_reg_Q_12 : dff port map ( Q=>count_12_EXMPLR, QB=>OPEN, D=>
      nx178, CLK=>nx225);
   ix179 : oai21 port map ( Y=>nx178, A0=>nx221, A1=>nx175, B0=>nx181);
   ix176 : xnor2 port map ( Y=>nx175, A0=>count_12_EXMPLR, A1=>nx168);
   ix169 : nor04 port map ( Y=>nx168, A0=>nx171, A1=>nx159, A2=>nx149, A3=>
      nx179);
   ix180 : nand03 port map ( Y=>nx179, A0=>count_8_EXMPLR, A1=>
      count_7_EXMPLR, A2=>nx98);
   ix182 : nand02 port map ( Y=>nx181, A0=>nx221, A1=>load(12));
   ix56 : xnor2 port map ( Y=>nx55, A0=>nx59, A1=>nx49);
   ix64 : xnor2 port map ( Y=>nx63, A0=>nx69, A1=>nx189);
   ix29 : nand02 port map ( Y=>nx189, A0=>count_1_EXMPLR, A1=>count_0_EXMPLR
   );
   ix74 : xnor2 port map ( Y=>nx73, A0=>nx81, A1=>nx191);
   ix190 : inv01 port map ( Y=>nx191, A=>nx42);
   ix86 : xnor2 port map ( Y=>nx85, A0=>nx91, A1=>nx193);
   ix192 : inv01 port map ( Y=>nx193, A=>nx56);
   ix96 : xnor2 port map ( Y=>nx95, A0=>nx103, A1=>nx195);
   ix71 : nand03 port map ( Y=>nx195, A0=>count_4_EXMPLR, A1=>count_3_EXMPLR, 
      A2=>nx197);
   ix100 : nor03_2x port map ( Y=>nx197, A0=>nx69, A1=>nx59, A2=>nx49);
   ix108 : xnor2 port map ( Y=>nx107, A0=>nx115, A1=>nx199);
   ix85 : nand03 port map ( Y=>nx199, A0=>count_5_EXMPLR, A1=>count_4_EXMPLR, 
      A2=>nx201);
   ix200 : inv01 port map ( Y=>nx201, A=>nx111);
   ix120 : xnor2 port map ( Y=>nx119, A0=>nx125, A1=>nx145);
   ix130 : xnor2 port map ( Y=>nx129, A0=>nx137, A1=>nx203);
   ix113 : nand04 port map ( Y=>nx203, A0=>count_7_EXMPLR, A1=>
      count_6_EXMPLR, A2=>count_5_EXMPLR, A3=>nx205);
   ix134 : nor02_2x port map ( Y=>nx205, A0=>nx91, A1=>nx193);
   ix142 : xnor2 port map ( Y=>nx141, A0=>nx149, A1=>nx207);
   ix127 : nand03 port map ( Y=>nx207, A0=>count_8_EXMPLR, A1=>
      count_7_EXMPLR, A2=>nx98);
   ix154 : xnor2 port map ( Y=>nx153, A0=>nx159, A1=>nx209);
   ix141 : nand04 port map ( Y=>nx209, A0=>count_9_EXMPLR, A1=>
      count_8_EXMPLR, A2=>count_7_EXMPLR, A3=>nx98);
   ix164 : xnor2 port map ( Y=>nx163, A0=>nx171, A1=>nx211);
   ix155 : nand04 port map ( Y=>nx211, A0=>count_10_EXMPLR, A1=>
      count_9_EXMPLR, A2=>count_8_EXMPLR, A3=>nx213);
   ix168 : nor02_2x port map ( Y=>nx213, A0=>nx125, A1=>nx145);
   ix214 : inv02 port map ( Y=>nx215, A=>nx47);
   ix216 : inv02 port map ( Y=>nx217, A=>nx47);
   ix218 : inv02 port map ( Y=>nx219, A=>nx47);
   ix220 : inv02 port map ( Y=>nx221, A=>nx47);
   ix222 : buf02 port map ( Y=>nx223, A=>clk);
   ix224 : buf02 port map ( Y=>nx225, A=>clk);
end Counter2Arch_unfold_2979 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity ReadLogic_13_80 is
   port (
      clk : IN std_logic ;
      resetState : IN std_logic ;
      switchRam : IN std_logic ;
      ramBasedAddress : IN std_logic_vector (12 DOWNTO 0) ;
      internalBus : OUT std_logic_vector (79 DOWNTO 0) ;
      ramDataInBus : IN std_logic_vector (79 DOWNTO 0) ;
      ramRead : OUT std_logic ;
      ramAddress : OUT std_logic_vector (12 DOWNTO 0) ;
      MFC : IN std_logic ;
      inputSize : IN std_logic_vector (12 DOWNTO 0) ;
      filterSize : IN std_logic_vector (12 DOWNTO 0) ;
      isFilter : IN std_logic ;
      loadNextWordList : IN std_logic ;
      loadWord : IN std_logic ;
      readOne : OUT std_logic ;
      readFinal : OUT std_logic ;
      aluNumber : OUT std_logic_vector (2 DOWNTO 0)) ;
end ReadLogic_13_80 ;

architecture ReadLogicArch_unfold_3077 of ReadLogic_13_80 is
   component DMA_13_80
      port (
         initialCount : IN std_logic_vector (2 DOWNTO 0) ;
         readBaseAddress : IN std_logic_vector (12 DOWNTO 0) ;
         readStep : IN std_logic_vector (12 DOWNTO 0) ;
         initAddress : IN std_logic ;
         initCounter : IN std_logic ;
         load : IN std_logic ;
         internalBus : OUT std_logic_vector (79 DOWNTO 0) ;
         finishedOneRead : OUT std_logic ;
         finishedReading : OUT std_logic ;
         clk : IN std_logic ;
         ramDataInBus : IN std_logic_vector (79 DOWNTO 0) ;
         ramRead : OUT std_logic ;
         ramReadAddress : OUT std_logic_vector (12 DOWNTO 0) ;
         MFC : IN std_logic) ;
   end component ;
   component Counter2_13
      port (
         load : IN std_logic_vector (12 DOWNTO 0) ;
         reset : IN std_logic ;
         clk : IN std_logic ;
         isLoad : IN std_logic ;
         count : OUT std_logic_vector (12 DOWNTO 0)) ;
   end component ;
   signal readOne_EXMPLR, readFinal_EXMPLR, aluNumber_2_EXMPLR, 
      aluNumber_0_EXMPLR, currentState_4, currentState_2, currentState_1, 
      dmaCountIn_2, dmaCountIn_1, addressRegOut_12, addressRegOut_11, 
      addressRegOut_10, addressRegOut_9, addressRegOut_8, addressRegOut_7, 
      addressRegOut_6, addressRegOut_5, addressRegOut_4, addressRegOut_3, 
      addressRegOut_2, addressRegOut_1, addressRegOut_0, addressRegIn_12, 
      addressRegIn_11, addressRegIn_10, addressRegIn_9, addressRegIn_8, 
      addressRegIn_7, addressRegIn_6, addressRegIn_5, addressRegIn_4, 
      addressRegIn_3, addressRegIn_2, addressRegIn_1, addressRegIn_0, 
      resetUnitNumberReg, baseAddressCounterClk, PWR, zerosSignal_2, 
      currentState_0, nx65, NOT_clk, nx20, nx22, nx28, nx44, nx52, nx56, 
      currentState_3, nx64, nx74, nx94, nx100, nx104, nx114, nx122, nx126, 
      nx136, nx144, nx152, nx160, nx168, nx176, nx184, nx192, nx200, nx208, 
      nx216, nx224, nx232, nx240, nx248, nx72, nx83, nx93, nx103, nx113, 
      nx125, nx129, nx133, nx137, nx140, nx147, nx151, nx153, nx156, nx163, 
      nx165, nx167, nx169, nx171, nx173, nx177, nx179, nx181, nx187, nx191, 
      nx196, nx201, nx205, nx209, nx213, nx217, nx221, nx225, nx229, nx233, 
      nx237, nx241, nx245, nx251, nx256, nx259, nx261, nx263, nx266, nx268, 
      nx271, nx280, nx282, nx284, nx286, nx288, nx290, nx296, nx298, nx300, 
      nx302: std_logic ;

begin
   readOne <= readOne_EXMPLR ;
   readFinal <= readFinal_EXMPLR ;
   aluNumber(2) <= aluNumber_2_EXMPLR ;
   aluNumber(0) <= aluNumber_0_EXMPLR ;
   dma : DMA_13_80 port map ( initialCount(2)=>dmaCountIn_2, initialCount(1)
      =>dmaCountIn_1, initialCount(0)=>PWR, readBaseAddress(12)=>
      addressRegOut_12, readBaseAddress(11)=>addressRegOut_11, 
      readBaseAddress(10)=>addressRegOut_10, readBaseAddress(9)=>
      addressRegOut_9, readBaseAddress(8)=>addressRegOut_8, 
      readBaseAddress(7)=>addressRegOut_7, readBaseAddress(6)=>
      addressRegOut_6, readBaseAddress(5)=>addressRegOut_5, 
      readBaseAddress(4)=>addressRegOut_4, readBaseAddress(3)=>
      addressRegOut_3, readBaseAddress(2)=>addressRegOut_2, 
      readBaseAddress(1)=>addressRegOut_1, readBaseAddress(0)=>
      addressRegOut_0, readStep(12)=>inputSize(12), readStep(11)=>
      inputSize(11), readStep(10)=>inputSize(10), readStep(9)=>inputSize(9), 
      readStep(8)=>inputSize(8), readStep(7)=>inputSize(7), readStep(6)=>
      inputSize(6), readStep(5)=>inputSize(5), readStep(4)=>inputSize(4), 
      readStep(3)=>inputSize(3), readStep(2)=>inputSize(2), readStep(1)=>
      inputSize(1), readStep(0)=>inputSize(0), initAddress=>
      resetUnitNumberReg, initCounter=>currentState_2, load=>currentState_4, 
      internalBus(79)=>internalBus(79), internalBus(78)=>internalBus(78), 
      internalBus(77)=>internalBus(77), internalBus(76)=>internalBus(76), 
      internalBus(75)=>internalBus(75), internalBus(74)=>internalBus(74), 
      internalBus(73)=>internalBus(73), internalBus(72)=>internalBus(72), 
      internalBus(71)=>internalBus(71), internalBus(70)=>internalBus(70), 
      internalBus(69)=>internalBus(69), internalBus(68)=>internalBus(68), 
      internalBus(67)=>internalBus(67), internalBus(66)=>internalBus(66), 
      internalBus(65)=>internalBus(65), internalBus(64)=>internalBus(64), 
      internalBus(63)=>internalBus(63), internalBus(62)=>internalBus(62), 
      internalBus(61)=>internalBus(61), internalBus(60)=>internalBus(60), 
      internalBus(59)=>internalBus(59), internalBus(58)=>internalBus(58), 
      internalBus(57)=>internalBus(57), internalBus(56)=>internalBus(56), 
      internalBus(55)=>internalBus(55), internalBus(54)=>internalBus(54), 
      internalBus(53)=>internalBus(53), internalBus(52)=>internalBus(52), 
      internalBus(51)=>internalBus(51), internalBus(50)=>internalBus(50), 
      internalBus(49)=>internalBus(49), internalBus(48)=>internalBus(48), 
      internalBus(47)=>internalBus(47), internalBus(46)=>internalBus(46), 
      internalBus(45)=>internalBus(45), internalBus(44)=>internalBus(44), 
      internalBus(43)=>internalBus(43), internalBus(42)=>internalBus(42), 
      internalBus(41)=>internalBus(41), internalBus(40)=>internalBus(40), 
      internalBus(39)=>internalBus(39), internalBus(38)=>internalBus(38), 
      internalBus(37)=>internalBus(37), internalBus(36)=>internalBus(36), 
      internalBus(35)=>internalBus(35), internalBus(34)=>internalBus(34), 
      internalBus(33)=>internalBus(33), internalBus(32)=>internalBus(32), 
      internalBus(31)=>internalBus(31), internalBus(30)=>internalBus(30), 
      internalBus(29)=>internalBus(29), internalBus(28)=>internalBus(28), 
      internalBus(27)=>internalBus(27), internalBus(26)=>internalBus(26), 
      internalBus(25)=>internalBus(25), internalBus(24)=>internalBus(24), 
      internalBus(23)=>internalBus(23), internalBus(22)=>internalBus(22), 
      internalBus(21)=>internalBus(21), internalBus(20)=>internalBus(20), 
      internalBus(19)=>internalBus(19), internalBus(18)=>internalBus(18), 
      internalBus(17)=>internalBus(17), internalBus(16)=>internalBus(16), 
      internalBus(15)=>internalBus(15), internalBus(14)=>internalBus(14), 
      internalBus(13)=>internalBus(13), internalBus(12)=>internalBus(12), 
      internalBus(11)=>internalBus(11), internalBus(10)=>internalBus(10), 
      internalBus(9)=>internalBus(9), internalBus(8)=>internalBus(8), 
      internalBus(7)=>internalBus(7), internalBus(6)=>internalBus(6), 
      internalBus(5)=>internalBus(5), internalBus(4)=>internalBus(4), 
      internalBus(3)=>internalBus(3), internalBus(2)=>internalBus(2), 
      internalBus(1)=>internalBus(1), internalBus(0)=>internalBus(0), 
      finishedOneRead=>readOne_EXMPLR, finishedReading=>readFinal_EXMPLR, 
      clk=>clk, ramDataInBus(79)=>ramDataInBus(79), ramDataInBus(78)=>
      ramDataInBus(78), ramDataInBus(77)=>ramDataInBus(77), ramDataInBus(76)
      =>ramDataInBus(76), ramDataInBus(75)=>ramDataInBus(75), 
      ramDataInBus(74)=>ramDataInBus(74), ramDataInBus(73)=>ramDataInBus(73), 
      ramDataInBus(72)=>ramDataInBus(72), ramDataInBus(71)=>ramDataInBus(71), 
      ramDataInBus(70)=>ramDataInBus(70), ramDataInBus(69)=>ramDataInBus(69), 
      ramDataInBus(68)=>ramDataInBus(68), ramDataInBus(67)=>ramDataInBus(67), 
      ramDataInBus(66)=>ramDataInBus(66), ramDataInBus(65)=>ramDataInBus(65), 
      ramDataInBus(64)=>ramDataInBus(64), ramDataInBus(63)=>ramDataInBus(63), 
      ramDataInBus(62)=>ramDataInBus(62), ramDataInBus(61)=>ramDataInBus(61), 
      ramDataInBus(60)=>ramDataInBus(60), ramDataInBus(59)=>ramDataInBus(59), 
      ramDataInBus(58)=>ramDataInBus(58), ramDataInBus(57)=>ramDataInBus(57), 
      ramDataInBus(56)=>ramDataInBus(56), ramDataInBus(55)=>ramDataInBus(55), 
      ramDataInBus(54)=>ramDataInBus(54), ramDataInBus(53)=>ramDataInBus(53), 
      ramDataInBus(52)=>ramDataInBus(52), ramDataInBus(51)=>ramDataInBus(51), 
      ramDataInBus(50)=>ramDataInBus(50), ramDataInBus(49)=>ramDataInBus(49), 
      ramDataInBus(48)=>ramDataInBus(48), ramDataInBus(47)=>ramDataInBus(47), 
      ramDataInBus(46)=>ramDataInBus(46), ramDataInBus(45)=>ramDataInBus(45), 
      ramDataInBus(44)=>ramDataInBus(44), ramDataInBus(43)=>ramDataInBus(43), 
      ramDataInBus(42)=>ramDataInBus(42), ramDataInBus(41)=>ramDataInBus(41), 
      ramDataInBus(40)=>ramDataInBus(40), ramDataInBus(39)=>ramDataInBus(39), 
      ramDataInBus(38)=>ramDataInBus(38), ramDataInBus(37)=>ramDataInBus(37), 
      ramDataInBus(36)=>ramDataInBus(36), ramDataInBus(35)=>ramDataInBus(35), 
      ramDataInBus(34)=>ramDataInBus(34), ramDataInBus(33)=>ramDataInBus(33), 
      ramDataInBus(32)=>ramDataInBus(32), ramDataInBus(31)=>ramDataInBus(31), 
      ramDataInBus(30)=>ramDataInBus(30), ramDataInBus(29)=>ramDataInBus(29), 
      ramDataInBus(28)=>ramDataInBus(28), ramDataInBus(27)=>ramDataInBus(27), 
      ramDataInBus(26)=>ramDataInBus(26), ramDataInBus(25)=>ramDataInBus(25), 
      ramDataInBus(24)=>ramDataInBus(24), ramDataInBus(23)=>ramDataInBus(23), 
      ramDataInBus(22)=>ramDataInBus(22), ramDataInBus(21)=>ramDataInBus(21), 
      ramDataInBus(20)=>ramDataInBus(20), ramDataInBus(19)=>ramDataInBus(19), 
      ramDataInBus(18)=>ramDataInBus(18), ramDataInBus(17)=>ramDataInBus(17), 
      ramDataInBus(16)=>ramDataInBus(16), ramDataInBus(15)=>ramDataInBus(15), 
      ramDataInBus(14)=>ramDataInBus(14), ramDataInBus(13)=>ramDataInBus(13), 
      ramDataInBus(12)=>ramDataInBus(12), ramDataInBus(11)=>ramDataInBus(11), 
      ramDataInBus(10)=>ramDataInBus(10), ramDataInBus(9)=>ramDataInBus(9), 
      ramDataInBus(8)=>ramDataInBus(8), ramDataInBus(7)=>ramDataInBus(7), 
      ramDataInBus(6)=>ramDataInBus(6), ramDataInBus(5)=>ramDataInBus(5), 
      ramDataInBus(4)=>ramDataInBus(4), ramDataInBus(3)=>ramDataInBus(3), 
      ramDataInBus(2)=>ramDataInBus(2), ramDataInBus(1)=>ramDataInBus(1), 
      ramDataInBus(0)=>ramDataInBus(0), ramRead=>ramRead, ramReadAddress(12)
      =>ramAddress(12), ramReadAddress(11)=>ramAddress(11), 
      ramReadAddress(10)=>ramAddress(10), ramReadAddress(9)=>ramAddress(9), 
      ramReadAddress(8)=>ramAddress(8), ramReadAddress(7)=>ramAddress(7), 
      ramReadAddress(6)=>ramAddress(6), ramReadAddress(5)=>ramAddress(5), 
      ramReadAddress(4)=>ramAddress(4), ramReadAddress(3)=>ramAddress(3), 
      ramReadAddress(2)=>ramAddress(2), ramReadAddress(1)=>ramAddress(1), 
      ramReadAddress(0)=>ramAddress(0), MFC=>MFC);
   baseAddressCounter : Counter2_13 port map ( load(12)=>addressRegIn_12, 
      load(11)=>addressRegIn_11, load(10)=>addressRegIn_10, load(9)=>
      addressRegIn_9, load(8)=>addressRegIn_8, load(7)=>addressRegIn_7, 
      load(6)=>addressRegIn_6, load(5)=>addressRegIn_5, load(4)=>
      addressRegIn_4, load(3)=>addressRegIn_3, load(2)=>addressRegIn_2, 
      load(1)=>addressRegIn_1, load(0)=>addressRegIn_0, reset=>zerosSignal_2, 
      clk=>baseAddressCounterClk, isLoad=>currentState_1, count(12)=>
      addressRegOut_12, count(11)=>addressRegOut_11, count(10)=>
      addressRegOut_10, count(9)=>addressRegOut_9, count(8)=>addressRegOut_8, 
      count(7)=>addressRegOut_7, count(6)=>addressRegOut_6, count(5)=>
      addressRegOut_5, count(4)=>addressRegOut_4, count(3)=>addressRegOut_3, 
      count(2)=>addressRegOut_2, count(1)=>addressRegOut_1, count(0)=>
      addressRegOut_0);
   ix22 : fake_gnd port map ( Y=>zerosSignal_2);
   ix20 : fake_vcc port map ( Y=>PWR);
   ix263 : mux21 port map ( Y=>baseAddressCounterClk, A0=>nx286, A1=>nx177, 
      S0=>clk);
   reg_currentState_1 : dff port map ( Q=>currentState_1, QB=>OPEN, D=>nx72, 
      CLK=>NOT_clk);
   ix74 : oai21 port map ( Y=>nx72, A0=>nx286, A1=>nx65, B0=>nx300);
   ix59 : nand03 port map ( Y=>nx65, A0=>nx125, A1=>nx156, A2=>nx165);
   ix126 : inv01 port map ( Y=>nx125, A=>nx56);
   ix57 : nand02 port map ( Y=>nx56, A0=>nx129, A1=>nx300);
   ix130 : nand02 port map ( Y=>nx129, A0=>readFinal_EXMPLR, A1=>
      currentState_4);
   ix114 : oai21 port map ( Y=>nx113, A0=>nx133, A1=>nx153, B0=>nx181);
   ix134 : oai21 port map ( Y=>nx133, A0=>nx74, A1=>currentState_3, B0=>
      nx300);
   ix75 : nor02_2x port map ( Y=>nx74, A0=>nx64, A1=>nx173);
   ix65 : nor03_2x port map ( Y=>nx64, A0=>nx137, A1=>switchRam, A2=>nx171);
   reg_currentState_2 : dff port map ( Q=>currentState_2, QB=>nx137, D=>nx83, 
      CLK=>NOT_clk);
   ix84 : mux21 port map ( Y=>nx83, A0=>nx137, A1=>nx140, S0=>nx65);
   ix141 : nand02 port map ( Y=>nx140, A0=>nx300, A1=>currentState_0);
   ix94 : oai21 port map ( Y=>nx93, A0=>nx147, A1=>nx153, B0=>nx167);
   ix148 : oai21 port map ( Y=>nx147, A0=>nx28, A1=>currentState_4, B0=>
      nx300);
   ix29 : oai21 port map ( Y=>nx28, A0=>nx137, A1=>nx20, B0=>nx286);
   ix21 : inv01 port map ( Y=>nx20, A=>nx151);
   ix152 : nor02_2x port map ( Y=>nx151, A0=>loadNextWordList, A1=>loadWord
   );
   ix154 : nor02_2x port map ( Y=>nx153, A0=>nx56, A1=>nx52);
   ix53 : nand02 port map ( Y=>nx52, A0=>nx156, A1=>nx165);
   ix157 : nand02 port map ( Y=>nx156, A0=>nx280, A1=>nx163);
   reg_currentState_0 : dff port map ( Q=>currentState_0, QB=>OPEN, D=>nx93, 
      CLK=>NOT_clk);
   ix162 : inv02 port map ( Y=>NOT_clk, A=>clk);
   reg_currentState_4 : dff port map ( Q=>currentState_4, QB=>nx163, D=>
      nx113, CLK=>NOT_clk);
   ix166 : oai21 port map ( Y=>nx165, A0=>loadNextWordList, A1=>loadWord, B0
      =>currentState_0);
   ix168 : nand04 port map ( Y=>nx167, A0=>currentState_0, A1=>nx129, A2=>
      nx300, A3=>nx169);
   ix170 : nor02_2x port map ( Y=>nx169, A0=>loadNextWordList, A1=>loadWord
   );
   ix172 : inv01 port map ( Y=>nx171, A=>loadNextWordList);
   ix174 : oai21 port map ( Y=>nx173, A0=>loadNextWordList, A1=>loadWord, B0
      =>currentState_2);
   ix104 : mux21 port map ( Y=>nx103, A0=>nx177, A1=>nx179, S0=>nx65);
   reg_currentState_3 : dff port map ( Q=>currentState_3, QB=>nx177, D=>
      nx103, CLK=>NOT_clk);
   ix180 : nand03 port map ( Y=>nx179, A0=>currentState_2, A1=>nx300, A2=>
      loadNextWordList);
   ix45 : nor02_2x port map ( Y=>nx44, A0=>nx280, A1=>nx169);
   ix97 : nand02 port map ( Y=>resetUnitNumberReg, A0=>nx187, A1=>nx286);
   ix188 : nand02 port map ( Y=>nx187, A0=>loadNextWordList, A1=>
      currentState_2);
   lat_addressRegIn_0 : latch port map ( Q=>addressRegIn_0, D=>nx136, CLK=>
      nx280);
   ix137 : nor02_2x port map ( Y=>nx136, A0=>nx191, A1=>nx286);
   ix192 : inv01 port map ( Y=>nx191, A=>ramBasedAddress(0));
   lat_addressRegIn_1 : latch port map ( Q=>addressRegIn_1, D=>nx144, CLK=>
      nx280);
   ix145 : nor02_2x port map ( Y=>nx144, A0=>nx196, A1=>nx286);
   ix197 : inv01 port map ( Y=>nx196, A=>ramBasedAddress(1));
   lat_addressRegIn_2 : latch port map ( Q=>addressRegIn_2, D=>nx152, CLK=>
      nx280);
   ix153 : nor02_2x port map ( Y=>nx152, A0=>nx201, A1=>nx286);
   ix202 : inv01 port map ( Y=>nx201, A=>ramBasedAddress(2));
   lat_addressRegIn_3 : latch port map ( Q=>addressRegIn_3, D=>nx160, CLK=>
      nx280);
   ix161 : nor02_2x port map ( Y=>nx160, A0=>nx205, A1=>nx288);
   ix206 : inv01 port map ( Y=>nx205, A=>ramBasedAddress(3));
   lat_addressRegIn_4 : latch port map ( Q=>addressRegIn_4, D=>nx168, CLK=>
      nx280);
   ix169 : nor02_2x port map ( Y=>nx168, A0=>nx209, A1=>nx288);
   ix210 : inv01 port map ( Y=>nx209, A=>ramBasedAddress(4));
   lat_addressRegIn_5 : latch port map ( Q=>addressRegIn_5, D=>nx176, CLK=>
      nx282);
   ix177 : nor02_2x port map ( Y=>nx176, A0=>nx213, A1=>nx288);
   ix214 : inv01 port map ( Y=>nx213, A=>ramBasedAddress(5));
   lat_addressRegIn_6 : latch port map ( Q=>addressRegIn_6, D=>nx184, CLK=>
      nx282);
   ix185 : nor02_2x port map ( Y=>nx184, A0=>nx217, A1=>nx288);
   ix218 : inv01 port map ( Y=>nx217, A=>ramBasedAddress(6));
   lat_addressRegIn_7 : latch port map ( Q=>addressRegIn_7, D=>nx192, CLK=>
      nx282);
   ix193 : nor02_2x port map ( Y=>nx192, A0=>nx221, A1=>nx288);
   ix222 : inv01 port map ( Y=>nx221, A=>ramBasedAddress(7));
   lat_addressRegIn_8 : latch port map ( Q=>addressRegIn_8, D=>nx200, CLK=>
      nx282);
   ix201 : nor02_2x port map ( Y=>nx200, A0=>nx225, A1=>nx288);
   ix226 : inv01 port map ( Y=>nx225, A=>ramBasedAddress(8));
   lat_addressRegIn_9 : latch port map ( Q=>addressRegIn_9, D=>nx208, CLK=>
      nx282);
   ix209 : nor02_2x port map ( Y=>nx208, A0=>nx229, A1=>nx288);
   ix230 : inv01 port map ( Y=>nx229, A=>ramBasedAddress(9));
   lat_addressRegIn_10 : latch port map ( Q=>addressRegIn_10, D=>nx216, CLK
      =>nx282);
   ix217 : nor02_2x port map ( Y=>nx216, A0=>nx233, A1=>nx290);
   ix234 : inv01 port map ( Y=>nx233, A=>ramBasedAddress(10));
   lat_addressRegIn_11 : latch port map ( Q=>addressRegIn_11, D=>nx224, CLK
      =>nx282);
   ix225 : nor02_2x port map ( Y=>nx224, A0=>nx237, A1=>nx290);
   ix238 : inv01 port map ( Y=>nx237, A=>ramBasedAddress(11));
   lat_addressRegIn_12 : latch port map ( Q=>addressRegIn_12, D=>nx232, CLK
      =>nx284);
   ix233 : nor02_2x port map ( Y=>nx232, A0=>nx241, A1=>nx290);
   ix242 : inv01 port map ( Y=>nx241, A=>ramBasedAddress(12));
   lat_dmaCountIn_1 : latch port map ( Q=>dmaCountIn_1, D=>nx240, CLK=>nx22
   );
   ix241 : nor02_2x port map ( Y=>nx240, A0=>nx245, A1=>nx171);
   ix246 : inv01 port map ( Y=>nx245, A=>filterSize(1));
   ix23 : nor02_2x port map ( Y=>nx22, A0=>nx137, A1=>nx151);
   lat_dmaCountIn_2 : latch port map ( Q=>dmaCountIn_2, D=>nx248, CLK=>nx22
   );
   ix249 : nor02_2x port map ( Y=>nx248, A0=>nx251, A1=>nx171);
   ix252 : inv01 port map ( Y=>nx251, A=>filterSize(2));
   aluNumberCounter_counterReg_reg_Q_0 : dff port map ( Q=>
      aluNumber_0_EXMPLR, QB=>nx263, D=>nx104, CLK=>nx100);
   ix105 : nand03 port map ( Y=>nx104, A0=>nx187, A1=>nx290, A2=>
      aluNumber_0_EXMPLR);
   ix101 : oai22 port map ( Y=>nx100, A0=>NOT_clk, A1=>nx256, B0=>nx259, B1
      =>nx261);
   ix95 : nor02_2x port map ( Y=>nx94, A0=>nx171, A1=>nx137);
   ix260 : nand02 port map ( Y=>nx259, A0=>loadNextWordList, A1=>
      readOne_EXMPLR);
   ix262 : nand02 port map ( Y=>nx261, A0=>NOT_clk, A1=>currentState_4);
   aluNumberCounter_counterReg_reg_Q_1 : dff port map ( Q=>aluNumber(1), QB
      =>nx268, D=>nx114, CLK=>nx100);
   ix115 : nand02 port map ( Y=>nx114, A0=>nx256, A1=>nx266);
   aluNumberCounter_counterReg_reg_Q_2 : dff port map ( Q=>
      aluNumber_2_EXMPLR, QB=>OPEN, D=>nx126, CLK=>nx100);
   ix127 : nand02 port map ( Y=>nx126, A0=>nx256, A1=>nx271);
   ix272 : xnor2 port map ( Y=>nx271, A0=>aluNumber_2_EXMPLR, A1=>nx122);
   ix123 : nor02_2x port map ( Y=>nx122, A0=>nx263, A1=>nx268);
   ix279 : inv02 port map ( Y=>nx280, A=>currentState_0);
   ix281 : inv02 port map ( Y=>nx282, A=>currentState_0);
   ix283 : inv02 port map ( Y=>nx284, A=>currentState_0);
   ix285 : inv02 port map ( Y=>nx286, A=>currentState_1);
   ix287 : inv02 port map ( Y=>nx288, A=>currentState_1);
   ix289 : inv02 port map ( Y=>nx290, A=>currentState_1);
   ix110 : nand04 port map ( Y=>nx181, A0=>currentState_4, A1=>nx296, A2=>
      nx302, A3=>nx298);
   ix295 : inv01 port map ( Y=>nx296, A=>readFinal_EXMPLR);
   ix297 : inv01 port map ( Y=>nx298, A=>nx44);
   ix257 : nor02_2x port map ( Y=>nx256, A0=>nx94, A1=>currentState_1);
   ix267 : xnor2 port map ( Y=>nx266, A0=>nx268, A1=>nx263);
   ix299 : inv01 port map ( Y=>nx300, A=>switchRam);
   ix301 : inv01 port map ( Y=>nx302, A=>switchRam);
end ReadLogicArch_unfold_3077 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity Counter2_12 is
   port (
      load : IN std_logic_vector (11 DOWNTO 0) ;
      reset : IN std_logic ;
      clk : IN std_logic ;
      isLoad : IN std_logic ;
      count : OUT std_logic_vector (11 DOWNTO 0)) ;
end Counter2_12 ;

architecture Counter2Arch_unfold_2974 of Counter2_12 is
   signal count_11_EXMPLR, count_9_EXMPLR, count_8_EXMPLR, count_7_EXMPLR, 
      count_6_EXMPLR, count_5_EXMPLR, count_4_EXMPLR, count_3_EXMPLR, 
      count_2_EXMPLR, count_1_EXMPLR, count_0_EXMPLR, nx10, nx24, nx38, nx42, 
      nx52, nx56, nx66, nx80, nx94, nx98, nx108, nx122, nx136, nx150, nx154, 
      nx164, nx39, nx41, nx43, nx45, nx49, nx51, nx53, nx57, nx61, nx63, 
      nx67, nx71, nx73, nx75, nx79, nx83, nx85, nx89, nx95, nx97, nx101, 
      nx105, nx107, nx109, nx113, nx117, nx119, nx123, nx129, nx131, nx135, 
      nx139, nx141, nx143, nx147, nx151, nx153, nx157, nx161, nx163, nx171, 
      nx173, nx175, nx177, nx179, nx181, nx183, nx185, nx187, nx189, nx191, 
      nx193, nx195, nx197, nx199, nx201, nx203: std_logic ;

begin
   count(11) <= count_11_EXMPLR ;
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
   ix11 : nand02 port map ( Y=>nx10, A0=>nx39, A1=>nx41);
   ix40 : nand02 port map ( Y=>nx39, A0=>load(0), A1=>nx193);
   ix42 : nand02 port map ( Y=>nx41, A0=>nx43, A1=>nx45);
   ix44 : inv01 port map ( Y=>nx43, A=>isLoad);
   counterReg_reg_Q_0 : dff port map ( Q=>count_0_EXMPLR, QB=>nx45, D=>nx10, 
      CLK=>nx201);
   counterReg_reg_Q_1 : dff port map ( Q=>count_1_EXMPLR, QB=>nx53, D=>nx24, 
      CLK=>nx201);
   ix25 : oai21 port map ( Y=>nx24, A0=>nx193, A1=>nx49, B0=>nx51);
   ix52 : nand02 port map ( Y=>nx51, A0=>load(1), A1=>nx193);
   counterReg_reg_Q_2 : dff port map ( Q=>count_2_EXMPLR, QB=>nx63, D=>nx38, 
      CLK=>nx201);
   ix39 : oai21 port map ( Y=>nx38, A0=>nx193, A1=>nx57, B0=>nx61);
   ix62 : nand02 port map ( Y=>nx61, A0=>load(2), A1=>nx193);
   counterReg_reg_Q_3 : dff port map ( Q=>count_3_EXMPLR, QB=>nx75, D=>nx52, 
      CLK=>nx201);
   ix53 : oai21 port map ( Y=>nx52, A0=>nx193, A1=>nx67, B0=>nx73);
   ix43 : nor02_2x port map ( Y=>nx42, A0=>nx63, A1=>nx71);
   ix72 : nand02 port map ( Y=>nx71, A0=>count_1_EXMPLR, A1=>count_0_EXMPLR
   );
   ix74 : nand02 port map ( Y=>nx73, A0=>load(3), A1=>nx193);
   counterReg_reg_Q_4 : dff port map ( Q=>count_4_EXMPLR, QB=>nx85, D=>nx66, 
      CLK=>nx201);
   ix67 : oai21 port map ( Y=>nx66, A0=>nx195, A1=>nx79, B0=>nx83);
   ix57 : nor03_2x port map ( Y=>nx56, A0=>nx75, A1=>nx63, A2=>nx71);
   ix84 : nand02 port map ( Y=>nx83, A0=>load(4), A1=>nx195);
   counterReg_reg_Q_5 : dff port map ( Q=>count_5_EXMPLR, QB=>nx97, D=>nx80, 
      CLK=>nx201);
   ix81 : oai21 port map ( Y=>nx80, A0=>nx195, A1=>nx89, B0=>nx95);
   ix96 : nand02 port map ( Y=>nx95, A0=>load(5), A1=>nx195);
   counterReg_reg_Q_6 : dff port map ( Q=>count_6_EXMPLR, QB=>nx109, D=>nx94, 
      CLK=>nx201);
   ix95 : oai21 port map ( Y=>nx94, A0=>nx195, A1=>nx101, B0=>nx107);
   ix106 : nand04 port map ( Y=>nx105, A0=>count_3_EXMPLR, A1=>
      count_2_EXMPLR, A2=>count_1_EXMPLR, A3=>count_0_EXMPLR);
   ix108 : nand02 port map ( Y=>nx107, A0=>load(6), A1=>nx195);
   counterReg_reg_Q_7 : dff port map ( Q=>count_7_EXMPLR, QB=>nx119, D=>
      nx108, CLK=>nx203);
   ix109 : oai21 port map ( Y=>nx108, A0=>nx195, A1=>nx113, B0=>nx117);
   ix99 : nor04 port map ( Y=>nx98, A0=>nx109, A1=>nx97, A2=>nx85, A3=>nx105
   );
   ix118 : nand02 port map ( Y=>nx117, A0=>load(7), A1=>nx197);
   counterReg_reg_Q_8 : dff port map ( Q=>count_8_EXMPLR, QB=>nx131, D=>
      nx122, CLK=>nx203);
   ix123 : oai21 port map ( Y=>nx122, A0=>nx197, A1=>nx123, B0=>nx129);
   ix130 : nand02 port map ( Y=>nx129, A0=>load(8), A1=>nx197);
   counterReg_reg_Q_9 : dff port map ( Q=>count_9_EXMPLR, QB=>nx143, D=>
      nx136, CLK=>nx203);
   ix137 : oai21 port map ( Y=>nx136, A0=>nx197, A1=>nx135, B0=>nx141);
   ix140 : inv01 port map ( Y=>nx139, A=>nx98);
   ix142 : nand02 port map ( Y=>nx141, A0=>load(9), A1=>nx197);
   counterReg_reg_Q_10 : dff port map ( Q=>count(10), QB=>nx153, D=>nx150, 
      CLK=>nx203);
   ix151 : oai21 port map ( Y=>nx150, A0=>nx197, A1=>nx147, B0=>nx151);
   ix152 : nand02 port map ( Y=>nx151, A0=>load(10), A1=>nx197);
   counterReg_reg_Q_11 : dff port map ( Q=>count_11_EXMPLR, QB=>OPEN, D=>
      nx164, CLK=>nx203);
   ix165 : oai21 port map ( Y=>nx164, A0=>nx199, A1=>nx157, B0=>nx163);
   ix158 : xnor2 port map ( Y=>nx157, A0=>count_11_EXMPLR, A1=>nx154);
   ix155 : nor04 port map ( Y=>nx154, A0=>nx153, A1=>nx143, A2=>nx131, A3=>
      nx161);
   ix162 : nand02 port map ( Y=>nx161, A0=>count_7_EXMPLR, A1=>nx98);
   ix164 : nand02 port map ( Y=>nx163, A0=>nx199, A1=>load(11));
   ix50 : xnor2 port map ( Y=>nx49, A0=>nx53, A1=>nx45);
   ix58 : xnor2 port map ( Y=>nx57, A0=>nx63, A1=>nx171);
   ix29 : nand02 port map ( Y=>nx171, A0=>count_1_EXMPLR, A1=>count_0_EXMPLR
   );
   ix68 : xnor2 port map ( Y=>nx67, A0=>nx75, A1=>nx173);
   ix172 : inv01 port map ( Y=>nx173, A=>nx42);
   ix80 : xnor2 port map ( Y=>nx79, A0=>nx85, A1=>nx175);
   ix174 : inv01 port map ( Y=>nx175, A=>nx56);
   ix90 : xnor2 port map ( Y=>nx89, A0=>nx97, A1=>nx177);
   ix71 : nand03 port map ( Y=>nx177, A0=>count_4_EXMPLR, A1=>count_3_EXMPLR, 
      A2=>nx179);
   ix94 : nor03_2x port map ( Y=>nx179, A0=>nx63, A1=>nx53, A2=>nx45);
   ix102 : xnor2 port map ( Y=>nx101, A0=>nx109, A1=>nx181);
   ix85 : nand03 port map ( Y=>nx181, A0=>count_5_EXMPLR, A1=>count_4_EXMPLR, 
      A2=>nx183);
   ix182 : inv01 port map ( Y=>nx183, A=>nx105);
   ix114 : xnor2 port map ( Y=>nx113, A0=>nx119, A1=>nx139);
   ix124 : xnor2 port map ( Y=>nx123, A0=>nx131, A1=>nx185);
   ix113 : nand04 port map ( Y=>nx185, A0=>count_7_EXMPLR, A1=>
      count_6_EXMPLR, A2=>count_5_EXMPLR, A3=>nx187);
   ix128 : nor02_2x port map ( Y=>nx187, A0=>nx85, A1=>nx175);
   ix136 : xnor2 port map ( Y=>nx135, A0=>nx143, A1=>nx189);
   ix127 : nand03 port map ( Y=>nx189, A0=>count_8_EXMPLR, A1=>
      count_7_EXMPLR, A2=>nx98);
   ix148 : xnor2 port map ( Y=>nx147, A0=>nx153, A1=>nx191);
   ix141 : nand04 port map ( Y=>nx191, A0=>count_9_EXMPLR, A1=>
      count_8_EXMPLR, A2=>count_7_EXMPLR, A3=>nx98);
   ix192 : inv02 port map ( Y=>nx193, A=>nx43);
   ix194 : inv02 port map ( Y=>nx195, A=>nx43);
   ix196 : inv02 port map ( Y=>nx197, A=>nx43);
   ix198 : inv02 port map ( Y=>nx199, A=>nx43);
   ix200 : buf02 port map ( Y=>nx201, A=>clk);
   ix202 : buf02 port map ( Y=>nx203, A=>clk);
end Counter2Arch_unfold_2974 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity MultiStepCounter_12 is
   port (
      load : IN std_logic_vector (11 DOWNTO 0) ;
      toBeAdded : IN std_logic_vector (11 DOWNTO 0) ;
      reset : IN std_logic ;
      clk : IN std_logic ;
      isLoad : IN std_logic ;
      MFC : IN std_logic ;
      count : OUT std_logic_vector (11 DOWNTO 0)) ;
end MultiStepCounter_12 ;

architecture MultiStepCounterArch_unfold_2949 of MultiStepCounter_12 is
   signal count_10_EXMPLR, count_9_EXMPLR, count_8_EXMPLR, count_7_EXMPLR, 
      count_6_EXMPLR, count_5_EXMPLR, count_4_EXMPLR, count_3_EXMPLR, 
      count_2_EXMPLR, count_1_EXMPLR, count_0_EXMPLR, nx14, nx20, nx28, nx40, 
      nx52, nx54, nx60, nx62, nx66, nx74, nx76, nx78, nx84, nx86, nx90, nx98, 
      nx104, nx106, nx110, nx118, nx124, nx126, nx130, nx144, nx146, nx150, 
      nx158, nx164, nx166, nx170, nx184, nx186, nx190, nx204, nx206, nx210, 
      nx224, nx226, nx230, nx244, nx246, nx250, nx45, nx49, nx53, nx55, nx61, 
      nx65, nx67, nx69, nx71, nx73, nx79, nx81, nx83, nx85, nx89, nx95, nx99, 
      nx101, nx105, nx113, nx116, nx119, nx121, nx125, nx127, nx131, nx136, 
      nx139, nx145, nx149, nx155, nx159, nx161, nx165, nx173, nx176, nx179, 
      nx183, nx191, nx194, nx196, nx199, nx207, nx211, nx213, nx216, nx223, 
      nx227, nx229, nx233, nx239, nx243, nx245, nx249, nx258, nx260, nx262, 
      nx268, nx270, nx272, nx274, nx276, nx278, nx280, nx282, nx284, nx286, 
      nx288, nx290, nx292, nx294, nx296, nx298, nx300: std_logic ;

begin
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
   ix21 : nand03 port map ( Y=>nx20, A0=>nx45, A1=>nx49, A2=>nx53);
   ix46 : nand02 port map ( Y=>nx45, A0=>count_0_EXMPLR, A1=>nx14);
   ix15 : nor02_2x port map ( Y=>nx14, A0=>MFC, A1=>nx298);
   ix50 : nand03 port map ( Y=>nx49, A0=>load(0), A1=>nx258, A2=>nx298);
   ix54 : nand02 port map ( Y=>nx53, A0=>MFC, A1=>nx55);
   counterReg_reg_Q_0 : dff port map ( Q=>count_0_EXMPLR, QB=>nx55, D=>nx20, 
      CLK=>clk);
   ix41 : oai222 port map ( Y=>nx40, A0=>nx258, A1=>nx61, B0=>nx67, B1=>nx69, 
      C0=>nx71, C1=>nx262);
   ix66 : inv01 port map ( Y=>nx65, A=>toBeAdded(1));
   counterReg_reg_Q_1 : dff port map ( Q=>count_1_EXMPLR, QB=>nx67, D=>nx40, 
      CLK=>clk);
   ix70 : inv01 port map ( Y=>nx69, A=>nx14);
   ix72 : inv01 port map ( Y=>nx71, A=>load(1));
   ix74 : nand02 port map ( Y=>nx73, A0=>nx258, A1=>nx298);
   ix67 : oai21 port map ( Y=>nx66, A0=>nx258, A1=>nx79, B0=>nx85);
   ix80 : xnor2 port map ( Y=>nx79, A0=>nx81, A1=>nx83);
   ix82 : aoi22 port map ( Y=>nx81, A0=>toBeAdded(1), A1=>count_1_EXMPLR, B0
      =>nx28, B1=>count_0_EXMPLR);
   ix86 : nor02_2x port map ( Y=>nx85, A0=>nx62, A1=>nx60);
   ix63 : nor03_2x port map ( Y=>nx62, A0=>nx89, A1=>MFC, A2=>nx298);
   counterReg_reg_Q_2 : dff port map ( Q=>count_2_EXMPLR, QB=>nx89, D=>nx66, 
      CLK=>clk);
   ix61 : nor02ii port map ( Y=>nx60, A0=>nx262, A1=>load(2));
   ix91 : oai21 port map ( Y=>nx90, A0=>nx258, A1=>nx95, B0=>nx101);
   ix79 : oai21 port map ( Y=>nx78, A0=>nx81, A1=>nx83, B0=>nx99);
   ix100 : nand02 port map ( Y=>nx99, A0=>toBeAdded(2), A1=>count_2_EXMPLR);
   ix102 : nor02_2x port map ( Y=>nx101, A0=>nx86, A1=>nx84);
   ix87 : nor03_2x port map ( Y=>nx86, A0=>nx105, A1=>MFC, A2=>nx298);
   counterReg_reg_Q_3 : dff port map ( Q=>count_3_EXMPLR, QB=>nx105, D=>nx90, 
      CLK=>clk);
   ix85 : nor02ii port map ( Y=>nx84, A0=>nx262, A1=>load(3));
   ix111 : oai21 port map ( Y=>nx110, A0=>nx258, A1=>nx113, B0=>nx127);
   ix117 : aoi22 port map ( Y=>nx116, A0=>toBeAdded(2), A1=>count_2_EXMPLR, 
      B0=>nx52, B1=>nx54);
   ix53 : oai21 port map ( Y=>nx52, A0=>nx119, A1=>nx55, B0=>nx121);
   ix122 : nand02 port map ( Y=>nx121, A0=>toBeAdded(1), A1=>count_1_EXMPLR
   );
   ix126 : inv01 port map ( Y=>nx125, A=>toBeAdded(2));
   ix128 : nor02_2x port map ( Y=>nx127, A0=>nx106, A1=>nx104);
   ix107 : nor03_2x port map ( Y=>nx106, A0=>nx131, A1=>MFC, A2=>nx298);
   counterReg_reg_Q_4 : dff port map ( Q=>count_4_EXMPLR, QB=>nx131, D=>
      nx110, CLK=>clk);
   ix105 : nor02ii port map ( Y=>nx104, A0=>nx262, A1=>load(4));
   ix131 : oai21 port map ( Y=>nx130, A0=>nx258, A1=>nx136, B0=>nx145);
   ix140 : oai21 port map ( Y=>nx139, A0=>nx76, A1=>nx74, B0=>count_3_EXMPLR
   );
   ix77 : nor02_2x port map ( Y=>nx76, A0=>nx125, A1=>nx89);
   ix75 : nor02ii port map ( Y=>nx74, A0=>nx81, A1=>nx54);
   ix146 : nor02_2x port map ( Y=>nx145, A0=>nx126, A1=>nx124);
   ix127 : nor03_2x port map ( Y=>nx126, A0=>nx149, A1=>MFC, A2=>nx298);
   counterReg_reg_Q_5 : dff port map ( Q=>count_5_EXMPLR, QB=>nx149, D=>
      nx130, CLK=>clk);
   ix125 : nor02ii port map ( Y=>nx124, A0=>nx262, A1=>load(5));
   ix151 : oai21 port map ( Y=>nx150, A0=>nx260, A1=>nx155, B0=>nx161);
   ix160 : nand03 port map ( Y=>nx159, A0=>nx78, A1=>count_3_EXMPLR, A2=>
      count_4_EXMPLR);
   ix162 : nor02_2x port map ( Y=>nx161, A0=>nx146, A1=>nx144);
   ix147 : nor03_2x port map ( Y=>nx146, A0=>nx165, A1=>MFC, A2=>nx300);
   counterReg_reg_Q_6 : dff port map ( Q=>count_6_EXMPLR, QB=>nx165, D=>
      nx150, CLK=>clk);
   ix145 : nor02ii port map ( Y=>nx144, A0=>nx262, A1=>load(6));
   ix171 : oai21 port map ( Y=>nx170, A0=>nx260, A1=>nx173, B0=>nx179);
   ix177 : nand04 port map ( Y=>nx176, A0=>nx78, A1=>count_3_EXMPLR, A2=>
      count_4_EXMPLR, A3=>count_5_EXMPLR);
   ix180 : nor02_2x port map ( Y=>nx179, A0=>nx166, A1=>nx164);
   ix167 : nor03_2x port map ( Y=>nx166, A0=>nx183, A1=>MFC, A2=>nx300);
   counterReg_reg_Q_7 : dff port map ( Q=>count_7_EXMPLR, QB=>nx183, D=>
      nx170, CLK=>clk);
   ix165 : nor02ii port map ( Y=>nx164, A0=>nx262, A1=>load(7));
   ix191 : oai21 port map ( Y=>nx190, A0=>nx260, A1=>nx191, B0=>nx196);
   ix195 : nand04 port map ( Y=>nx194, A0=>nx98, A1=>count_4_EXMPLR, A2=>
      count_5_EXMPLR, A3=>count_6_EXMPLR);
   ix197 : nor02_2x port map ( Y=>nx196, A0=>nx186, A1=>nx184);
   ix187 : nor03_2x port map ( Y=>nx186, A0=>nx199, A1=>MFC, A2=>nx300);
   counterReg_reg_Q_8 : dff port map ( Q=>count_8_EXMPLR, QB=>nx199, D=>
      nx190, CLK=>clk);
   ix185 : nor02ii port map ( Y=>nx184, A0=>nx73, A1=>load(8));
   ix211 : oai21 port map ( Y=>nx210, A0=>nx260, A1=>nx207, B0=>nx213);
   ix212 : nand04 port map ( Y=>nx211, A0=>nx118, A1=>count_5_EXMPLR, A2=>
      count_6_EXMPLR, A3=>count_7_EXMPLR);
   ix214 : nor02_2x port map ( Y=>nx213, A0=>nx206, A1=>nx204);
   ix207 : nor03_2x port map ( Y=>nx206, A0=>nx216, A1=>MFC, A2=>nx300);
   counterReg_reg_Q_9 : dff port map ( Q=>count_9_EXMPLR, QB=>nx216, D=>
      nx210, CLK=>clk);
   ix205 : nor02ii port map ( Y=>nx204, A0=>nx73, A1=>load(9));
   ix231 : oai21 port map ( Y=>nx230, A0=>nx260, A1=>nx223, B0=>nx229);
   ix228 : nand03 port map ( Y=>nx227, A0=>nx158, A1=>count_7_EXMPLR, A2=>
      count_8_EXMPLR);
   ix230 : nor02_2x port map ( Y=>nx229, A0=>nx226, A1=>nx224);
   ix227 : nor03_2x port map ( Y=>nx226, A0=>nx233, A1=>MFC, A2=>nx300);
   counterReg_reg_Q_10 : dff port map ( Q=>count_10_EXMPLR, QB=>nx233, D=>
      nx230, CLK=>clk);
   ix225 : nor02ii port map ( Y=>nx224, A0=>nx73, A1=>load(10));
   ix251 : oai21 port map ( Y=>nx250, A0=>nx260, A1=>nx239, B0=>nx245);
   ix244 : nand04 port map ( Y=>nx243, A0=>nx158, A1=>count_7_EXMPLR, A2=>
      count_8_EXMPLR, A3=>count_9_EXMPLR);
   ix246 : nor02_2x port map ( Y=>nx245, A0=>nx246, A1=>nx244);
   ix247 : nor03_2x port map ( Y=>nx246, A0=>nx249, A1=>MFC, A2=>nx300);
   counterReg_reg_Q_11 : dff port map ( Q=>count(11), QB=>nx249, D=>nx250, 
      CLK=>clk);
   ix245 : nor02ii port map ( Y=>nx244, A0=>nx73, A1=>load(11));
   ix257 : inv02 port map ( Y=>nx258, A=>MFC);
   ix259 : inv02 port map ( Y=>nx260, A=>MFC);
   ix261 : nand02 port map ( Y=>nx262, A0=>nx258, A1=>nx300);
   ix62 : xnor2 port map ( Y=>nx61, A0=>nx55, A1=>nx268);
   ix267 : inv01 port map ( Y=>nx268, A=>nx28);
   ix29 : xnor2 port map ( Y=>nx28, A0=>nx67, A1=>toBeAdded(1));
   ix84 : xnor2 port map ( Y=>nx83, A0=>nx89, A1=>nx125);
   ix96 : xnor2 port map ( Y=>nx95, A0=>nx105, A1=>nx270);
   ix269 : inv01 port map ( Y=>nx270, A=>nx78);
   ix114 : xnor2 port map ( Y=>nx113, A0=>nx131, A1=>nx272);
   ix271 : inv01 port map ( Y=>nx272, A=>nx98);
   ix99 : nor02_2x port map ( Y=>nx98, A0=>nx116, A1=>nx105);
   ix120 : xnor2 port map ( Y=>nx119, A0=>nx67, A1=>nx65);
   ix55 : xnor2 port map ( Y=>nx54, A0=>nx89, A1=>toBeAdded(2));
   ix137 : xnor2 port map ( Y=>nx136, A0=>nx149, A1=>nx274);
   ix273 : inv01 port map ( Y=>nx274, A=>nx118);
   ix119 : nor02_2x port map ( Y=>nx118, A0=>nx139, A1=>nx131);
   ix156 : xnor2 port map ( Y=>nx155, A0=>nx165, A1=>nx276);
   ix139 : nand02 port map ( Y=>nx276, A0=>nx278, A1=>count_5_EXMPLR);
   ix277 : inv01 port map ( Y=>nx278, A=>nx159);
   ix174 : xnor2 port map ( Y=>nx173, A0=>nx183, A1=>nx280);
   ix279 : inv01 port map ( Y=>nx280, A=>nx158);
   ix159 : nor02_2x port map ( Y=>nx158, A0=>nx176, A1=>nx165);
   ix192 : xnor2 port map ( Y=>nx191, A0=>nx199, A1=>nx282);
   ix179 : nand02 port map ( Y=>nx282, A0=>nx284, A1=>count_7_EXMPLR);
   ix283 : inv01 port map ( Y=>nx284, A=>nx194);
   ix208 : xnor2 port map ( Y=>nx207, A0=>nx216, A1=>nx286);
   ix199 : nand02 port map ( Y=>nx286, A0=>nx288, A1=>count_8_EXMPLR);
   ix287 : inv01 port map ( Y=>nx288, A=>nx211);
   ix224 : xnor2 port map ( Y=>nx223, A0=>nx233, A1=>nx290);
   ix219 : nand02 port map ( Y=>nx290, A0=>nx292, A1=>count_9_EXMPLR);
   ix291 : inv01 port map ( Y=>nx292, A=>nx227);
   ix240 : xnor2 port map ( Y=>nx239, A0=>nx249, A1=>nx294);
   ix239 : nand02 port map ( Y=>nx294, A0=>nx296, A1=>count_10_EXMPLR);
   ix295 : inv01 port map ( Y=>nx296, A=>nx243);
   ix297 : buf02 port map ( Y=>nx298, A=>isLoad);
   ix299 : buf02 port map ( Y=>nx300, A=>isLoad);
end MultiStepCounterArch_unfold_2949 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity ReadLogic_12_40 is
   port (
      clk : IN std_logic ;
      resetState : IN std_logic ;
      switchRam : IN std_logic ;
      ramBasedAddress : IN std_logic_vector (11 DOWNTO 0) ;
      internalBus : OUT std_logic_vector (39 DOWNTO 0) ;
      ramDataInBus : IN std_logic_vector (39 DOWNTO 0) ;
      ramRead : OUT std_logic ;
      ramAddress : OUT std_logic_vector (11 DOWNTO 0) ;
      MFC : IN std_logic ;
      inputSize : IN std_logic_vector (11 DOWNTO 0) ;
      filterSize : IN std_logic_vector (11 DOWNTO 0) ;
      isFilter : IN std_logic ;
      loadNextWordList : IN std_logic ;
      loadWord : IN std_logic ;
      readOne : OUT std_logic ;
      readFinal : OUT std_logic ;
      aluNumber : OUT std_logic_vector (2 DOWNTO 0)) ;
end ReadLogic_12_40 ;

architecture ReadLogicArch_unfold_3059 of ReadLogic_12_40 is
   component Counter2_12
      port (
         load : IN std_logic_vector (11 DOWNTO 0) ;
         reset : IN std_logic ;
         clk : IN std_logic ;
         isLoad : IN std_logic ;
         count : OUT std_logic_vector (11 DOWNTO 0)) ;
   end component ;
   component MultiStepCounter_12
      port (
         load : IN std_logic_vector (11 DOWNTO 0) ;
         toBeAdded : IN std_logic_vector (11 DOWNTO 0) ;
         reset : IN std_logic ;
         clk : IN std_logic ;
         isLoad : IN std_logic ;
         MFC : IN std_logic ;
         count : OUT std_logic_vector (11 DOWNTO 0)) ;
   end component ;
   signal readOne_EXMPLR, aluNumber_2_EXMPLR, aluNumber_0_EXMPLR, 
      currentState_1, addressRegOut_11, addressRegOut_10, addressRegOut_9, 
      addressRegOut_8, addressRegOut_7, addressRegOut_6, addressRegOut_5, 
      addressRegOut_4, addressRegOut_3, addressRegOut_2, addressRegOut_1, 
      addressRegOut_0, addressRegIn_11, addressRegIn_10, addressRegIn_9, 
      addressRegIn_8, addressRegIn_7, addressRegIn_6, addressRegIn_5, 
      addressRegIn_4, addressRegIn_3, addressRegIn_2, addressRegIn_1, 
      addressRegIn_0, resetUnitNumberReg, dmaReadBaseAddress_11, 
      dmaReadBaseAddress_10, dmaReadBaseAddress_9, dmaReadBaseAddress_8, 
      dmaReadBaseAddress_7, dmaReadBaseAddress_6, dmaReadBaseAddress_5, 
      dmaReadBaseAddress_4, dmaReadBaseAddress_3, dmaReadBaseAddress_2, 
      dmaReadBaseAddress_1, dmaReadBaseAddress_0, baseAddressCounterClk, 
      dma_tobeAdded_2, dma_tobeAdded_1, PWR, zerosSignal_2, currentState_4, 
      currentState_0, nx160, nx161, nx14, nx18, nx26, nx44, nx50, 
      dma_currentCount_2, nx54, nx162, dma_currentCount_1, dmaCountIn_1, 
      nx56, dma_currentCount_0, nx86, nx108, nx110, nx118, nx132, nx138, 
      nx144, nx156, nx176, nx180, nx190, nx198, nx202, nx228, nx232, nx336, 
      nx344, nx352, nx360, nx368, nx376, nx384, nx392, nx400, nx408, nx416, 
      nx424, nx171, nx181, nx191, nx201, nx211, nx221, nx231, nx245, nx249, 
      nx251, nx259, nx263, nx265, nx267, nx273, nx279, nx283, nx287, nx289, 
      nx293, nx295, nx299, nx301, nx303, nx309, nx313, nx315, nx319, nx323, 
      nx327, nx331, nx335, nx339, nx343, nx347, nx349, nx353, nx356, nx358, 
      nx364, nx372, nx374, nx377, nx379, nx382, nx385, nx388, nx390, nx393, 
      nx395, nx398, nx401, nx404, nx406, nx409, nx411, nx414, nx417, nx420, 
      nx422, nx425, nx427, nx430, nx432, nx463, nx466, nx468, nx470, nx473, 
      nx475, nx478, nx483, nx486, nx491, nx538, nx540, nx542, nx544, nx546, 
      nx548, nx550, nx552, nx554, nx556, nx558, nx560, nx562, nx564, nx566, 
      nx568, nx570, nx572, nx574, nx580, nx586, nx592, nx598, nx604, nx610, 
      nx0, nx5: std_logic ;

begin
   readOne <= readOne_EXMPLR ;
   aluNumber(2) <= aluNumber_2_EXMPLR ;
   aluNumber(0) <= aluNumber_0_EXMPLR ;
   baseAddressCounter : Counter2_12 port map ( load(11)=>addressRegIn_11, 
      load(10)=>addressRegIn_10, load(9)=>addressRegIn_9, load(8)=>
      addressRegIn_8, load(7)=>addressRegIn_7, load(6)=>addressRegIn_6, 
      load(5)=>addressRegIn_5, load(4)=>addressRegIn_4, load(3)=>
      addressRegIn_3, load(2)=>addressRegIn_2, load(1)=>addressRegIn_1, 
      load(0)=>addressRegIn_0, reset=>zerosSignal_2, clk=>
      baseAddressCounterClk, isLoad=>currentState_1, count(11)=>
      addressRegOut_11, count(10)=>addressRegOut_10, count(9)=>
      addressRegOut_9, count(8)=>addressRegOut_8, count(7)=>addressRegOut_7, 
      count(6)=>addressRegOut_6, count(5)=>addressRegOut_5, count(4)=>
      addressRegOut_4, count(3)=>addressRegOut_3, count(2)=>addressRegOut_2, 
      count(1)=>addressRegOut_1, count(0)=>addressRegOut_0);
   dma_addressRegister : MultiStepCounter_12 port map ( load(11)=>
      dmaReadBaseAddress_11, load(10)=>dmaReadBaseAddress_10, load(9)=>
      dmaReadBaseAddress_9, load(8)=>dmaReadBaseAddress_8, load(7)=>
      dmaReadBaseAddress_7, load(6)=>dmaReadBaseAddress_6, load(5)=>
      dmaReadBaseAddress_5, load(4)=>dmaReadBaseAddress_4, load(3)=>
      dmaReadBaseAddress_3, load(2)=>dmaReadBaseAddress_2, load(1)=>
      dmaReadBaseAddress_1, load(0)=>dmaReadBaseAddress_0, toBeAdded(11)=>
      zerosSignal_2, toBeAdded(10)=>zerosSignal_2, toBeAdded(9)=>
      zerosSignal_2, toBeAdded(8)=>zerosSignal_2, toBeAdded(7)=>
      zerosSignal_2, toBeAdded(6)=>zerosSignal_2, toBeAdded(5)=>
      zerosSignal_2, toBeAdded(4)=>zerosSignal_2, toBeAdded(3)=>
      zerosSignal_2, toBeAdded(2)=>dma_tobeAdded_2, toBeAdded(1)=>
      dma_tobeAdded_1, toBeAdded(0)=>PWR, reset=>zerosSignal_2, clk=>clk, 
      isLoad=>resetUnitNumberReg, MFC=>MFC, count(11)=>ramAddress(11), 
      count(10)=>ramAddress(10), count(9)=>ramAddress(9), count(8)=>
      ramAddress(8), count(7)=>ramAddress(7), count(6)=>ramAddress(6), 
      count(5)=>ramAddress(5), count(4)=>ramAddress(4), count(3)=>
      ramAddress(3), count(2)=>ramAddress(2), count(1)=>ramAddress(1), 
      count(0)=>ramAddress(0));
   ix105 : fake_gnd port map ( Y=>zerosSignal_2);
   ix103 : fake_vcc port map ( Y=>PWR);
   dma_readStepRegister_reg_Q_1 : dff port map ( Q=>dma_tobeAdded_1, QB=>
      OPEN, D=>inputSize(1), CLK=>nx556);
   ix182 : mux21 port map ( Y=>nx181, A0=>nx245, A1=>nx249, S0=>nx160);
   reg_currentState_2 : dff port map ( Q=>OPEN, QB=>nx245, D=>nx181, CLK=>
      nx550);
   ix250 : nand02 port map ( Y=>nx249, A0=>nx251, A1=>currentState_0);
   ix252 : inv01 port map ( Y=>nx251, A=>switchRam);
   ix192 : mux21 port map ( Y=>nx191, A0=>nx560, A1=>nx259, S0=>nx160);
   reg_currentState_0 : dff port map ( Q=>currentState_0, QB=>OPEN, D=>nx191, 
      CLK=>nx550);
   ix260 : nand02 port map ( Y=>nx259, A0=>nx251, A1=>nx26);
   ix27 : nand03 port map ( Y=>nx26, A0=>nx263, A1=>nx566, A2=>nx349);
   ix264 : nand03 port map ( Y=>nx263, A0=>nx554, A1=>nx265, A2=>nx267);
   ix266 : inv01 port map ( Y=>nx265, A=>loadWord);
   ix268 : inv01 port map ( Y=>nx267, A=>loadNextWordList);
   reg_currentState_1 : dff port map ( Q=>currentState_1, QB=>OPEN, D=>nx171, 
      CLK=>nx550);
   ix172 : oai21 port map ( Y=>nx171, A0=>nx566, A1=>nx160, B0=>nx251);
   ix153 : nand03 port map ( Y=>nx160, A0=>nx273, A1=>nx251, A2=>nx358);
   ix274 : oai21 port map ( Y=>nx273, A0=>nx144, A1=>nx132, B0=>nx538);
   ix145 : nor02_2x port map ( Y=>nx144, A0=>clk, A1=>nx138);
   ix139 : nand03 port map ( Y=>nx138, A0=>nx279, A1=>nx319, A2=>
      dma_currentCount_0);
   ix212 : nand02 port map ( Y=>nx211, A0=>nx283, A1=>nx289);
   ix284 : nand02 port map ( Y=>nx283, A0=>dma_currentCount_1, A1=>nx287);
   dma_counter_counterReg_reg_Q_1 : dff port map ( Q=>dma_currentCount_1, QB
      =>nx279, D=>nx211, CLK=>clk);
   ix288 : nor02_2x port map ( Y=>nx287, A0=>nx554, A1=>MFC);
   ix290 : nand02 port map ( Y=>nx289, A0=>nx86, A1=>nx54);
   ix87 : nand03 port map ( Y=>nx86, A0=>nx293, A1=>nx301, A2=>nx303);
   ix294 : nand03 port map ( Y=>nx293, A0=>nx245, A1=>nx279, A2=>nx295);
   dma_counter_counterReg_reg_Q_0 : dff port map ( Q=>dma_currentCount_0, QB
      =>nx295, D=>nx201, CLK=>clk);
   ix202 : mux21 port map ( Y=>nx201, A0=>nx299, A1=>nx295, S0=>nx287);
   ix300 : nor02_2x port map ( Y=>nx299, A0=>nx295, A1=>nx554);
   ix302 : nand03 port map ( Y=>nx301, A0=>dma_currentCount_1, A1=>
      dma_currentCount_0, A2=>nx245);
   ix304 : nand02 port map ( Y=>nx303, A0=>nx554, A1=>dmaCountIn_1);
   lat_dmaCountIn_1 : latch port map ( Q=>dmaCountIn_1, D=>nx56, CLK=>nx558
   );
   ix57 : nor02_2x port map ( Y=>nx56, A0=>nx309, A1=>nx267);
   ix310 : inv01 port map ( Y=>nx309, A=>inputSize(1));
   ix19 : nand02 port map ( Y=>nx18, A0=>nx313, A1=>nx572);
   ix314 : nand02 port map ( Y=>nx313, A0=>loadWord, A1=>nx554);
   ix316 : nand02 port map ( Y=>nx315, A0=>loadNextWordList, A1=>nx554);
   ix55 : inv01 port map ( Y=>nx54, A=>nx287);
   ix222 : nand02 port map ( Y=>nx221, A0=>nx323, A1=>nx327);
   ix324 : nand02 port map ( Y=>nx323, A0=>dma_currentCount_2, A1=>nx287);
   dma_counter_counterReg_reg_Q_2 : dff port map ( Q=>dma_currentCount_2, QB
      =>nx319, D=>nx221, CLK=>clk);
   ix328 : oai21 port map ( Y=>nx327, A0=>nx118, A1=>nx108, B0=>nx54);
   ix119 : nor02_2x port map ( Y=>nx118, A0=>nx245, A1=>nx331);
   ix111 : nor02_2x port map ( Y=>nx110, A0=>nx335, A1=>nx267);
   ix336 : inv01 port map ( Y=>nx335, A=>inputSize(2));
   ix110 : nor02_2x port map ( Y=>nx108, A0=>nx554, A1=>nx339);
   ix133 : nor02_2x port map ( Y=>nx132, A0=>nx550, A1=>nx343);
   ix344 : nand03 port map ( Y=>nx343, A0=>nx319, A1=>nx279, A2=>nx295);
   ix165 : nor02_2x port map ( Y=>readOne_EXMPLR, A0=>nx347, A1=>nx349);
   ix348 : inv01 port map ( Y=>nx347, A=>MFC);
   reg_currentState_4 : dff port map ( Q=>currentState_4, QB=>nx349, D=>
      nx231, CLK=>nx550);
   ix232 : mux21 port map ( Y=>nx231, A0=>nx349, A1=>nx353, S0=>nx160);
   ix354 : inv01 port map ( Y=>nx353, A=>nx156);
   ix157 : nor02_2x port map ( Y=>nx156, A0=>switchRam, A1=>nx356);
   ix357 : oai21 port map ( Y=>nx356, A0=>loadWord, A1=>loadNextWordList, B0
      =>nx556);
   ix359 : nor02_2x port map ( Y=>nx358, A0=>nx50, A1=>nx44);
   ix51 : nor02_2x port map ( Y=>nx50, A0=>currentState_4, A1=>nx161);
   ix41 : nor02_2x port map ( Y=>nx161, A0=>switchRam, A1=>nx560);
   ix45 : nor03_2x port map ( Y=>nx44, A0=>switchRam, A1=>nx560, A2=>nx364);
   ix365 : nor02_2x port map ( Y=>nx364, A0=>loadNextWordList, A1=>loadWord
   );
   dma_readStepRegister_reg_Q_2 : dff port map ( Q=>dma_tobeAdded_2, QB=>
      OPEN, D=>inputSize(2), CLK=>nx556);
   ix435 : nor02_2x port map ( Y=>baseAddressCounterClk, A0=>clk, A1=>nx566
   );
   ix245 : mux21 port map ( Y=>dmaReadBaseAddress_0, A0=>nx372, A1=>nx374, 
      S0=>nx572);
   ix373 : inv01 port map ( Y=>nx372, A=>ramBasedAddress(0));
   ix375 : inv01 port map ( Y=>nx374, A=>addressRegOut_0);
   ix253 : mux21 port map ( Y=>dmaReadBaseAddress_1, A0=>nx377, A1=>nx379, 
      S0=>nx572);
   ix378 : inv01 port map ( Y=>nx377, A=>ramBasedAddress(1));
   ix380 : inv01 port map ( Y=>nx379, A=>addressRegOut_1);
   ix261 : mux21 port map ( Y=>dmaReadBaseAddress_2, A0=>nx382, A1=>nx385, 
      S0=>nx572);
   ix383 : inv01 port map ( Y=>nx382, A=>ramBasedAddress(2));
   ix386 : inv01 port map ( Y=>nx385, A=>addressRegOut_2);
   ix269 : mux21 port map ( Y=>dmaReadBaseAddress_3, A0=>nx388, A1=>nx390, 
      S0=>nx572);
   ix389 : inv01 port map ( Y=>nx388, A=>ramBasedAddress(3));
   ix391 : inv01 port map ( Y=>nx390, A=>addressRegOut_3);
   ix277 : mux21 port map ( Y=>dmaReadBaseAddress_4, A0=>nx393, A1=>nx395, 
      S0=>nx572);
   ix394 : inv01 port map ( Y=>nx393, A=>ramBasedAddress(4));
   ix396 : inv01 port map ( Y=>nx395, A=>addressRegOut_4);
   ix285 : mux21 port map ( Y=>dmaReadBaseAddress_5, A0=>nx398, A1=>nx401, 
      S0=>nx572);
   ix399 : inv01 port map ( Y=>nx398, A=>ramBasedAddress(5));
   ix402 : inv01 port map ( Y=>nx401, A=>addressRegOut_5);
   ix293 : mux21 port map ( Y=>dmaReadBaseAddress_6, A0=>nx404, A1=>nx406, 
      S0=>nx574);
   ix405 : inv01 port map ( Y=>nx404, A=>ramBasedAddress(6));
   ix407 : inv01 port map ( Y=>nx406, A=>addressRegOut_6);
   ix301 : mux21 port map ( Y=>dmaReadBaseAddress_7, A0=>nx409, A1=>nx411, 
      S0=>nx574);
   ix410 : inv01 port map ( Y=>nx409, A=>ramBasedAddress(7));
   ix412 : inv01 port map ( Y=>nx411, A=>addressRegOut_7);
   ix309 : mux21 port map ( Y=>dmaReadBaseAddress_8, A0=>nx414, A1=>nx417, 
      S0=>nx574);
   ix415 : inv01 port map ( Y=>nx414, A=>ramBasedAddress(8));
   ix418 : inv01 port map ( Y=>nx417, A=>addressRegOut_8);
   ix317 : mux21 port map ( Y=>dmaReadBaseAddress_9, A0=>nx420, A1=>nx422, 
      S0=>nx574);
   ix421 : inv01 port map ( Y=>nx420, A=>ramBasedAddress(9));
   ix423 : inv01 port map ( Y=>nx422, A=>addressRegOut_9);
   ix325 : mux21 port map ( Y=>dmaReadBaseAddress_10, A0=>nx425, A1=>nx427, 
      S0=>nx574);
   ix426 : inv01 port map ( Y=>nx425, A=>ramBasedAddress(10));
   ix428 : inv01 port map ( Y=>nx427, A=>addressRegOut_10);
   ix333 : mux21 port map ( Y=>dmaReadBaseAddress_11, A0=>nx430, A1=>nx432, 
      S0=>nx574);
   ix431 : inv01 port map ( Y=>nx430, A=>ramBasedAddress(11));
   ix433 : inv01 port map ( Y=>nx432, A=>addressRegOut_11);
   ix173 : oai21 port map ( Y=>resetUnitNumberReg, A0=>nx267, A1=>nx245, B0
      =>nx566);
   lat_addressRegIn_0 : latch port map ( Q=>addressRegIn_0, D=>nx336, CLK=>
      nx560);
   ix337 : nor02_2x port map ( Y=>nx336, A0=>nx372, A1=>nx566);
   lat_addressRegIn_1 : latch port map ( Q=>addressRegIn_1, D=>nx344, CLK=>
      nx560);
   ix345 : nor02_2x port map ( Y=>nx344, A0=>nx377, A1=>nx566);
   lat_addressRegIn_2 : latch port map ( Q=>addressRegIn_2, D=>nx352, CLK=>
      nx560);
   ix353 : nor02_2x port map ( Y=>nx352, A0=>nx382, A1=>nx566);
   lat_addressRegIn_3 : latch port map ( Q=>addressRegIn_3, D=>nx360, CLK=>
      nx560);
   ix361 : nor02_2x port map ( Y=>nx360, A0=>nx388, A1=>nx568);
   lat_addressRegIn_4 : latch port map ( Q=>addressRegIn_4, D=>nx368, CLK=>
      nx562);
   ix369 : nor02_2x port map ( Y=>nx368, A0=>nx393, A1=>nx568);
   lat_addressRegIn_5 : latch port map ( Q=>addressRegIn_5, D=>nx376, CLK=>
      nx562);
   ix377 : nor02_2x port map ( Y=>nx376, A0=>nx398, A1=>nx568);
   lat_addressRegIn_6 : latch port map ( Q=>addressRegIn_6, D=>nx384, CLK=>
      nx562);
   ix385 : nor02_2x port map ( Y=>nx384, A0=>nx404, A1=>nx568);
   lat_addressRegIn_7 : latch port map ( Q=>addressRegIn_7, D=>nx392, CLK=>
      nx562);
   ix393 : nor02_2x port map ( Y=>nx392, A0=>nx409, A1=>nx568);
   lat_addressRegIn_8 : latch port map ( Q=>addressRegIn_8, D=>nx400, CLK=>
      nx562);
   ix401 : nor02_2x port map ( Y=>nx400, A0=>nx414, A1=>nx568);
   lat_addressRegIn_9 : latch port map ( Q=>addressRegIn_9, D=>nx408, CLK=>
      nx562);
   ix409 : nor02_2x port map ( Y=>nx408, A0=>nx420, A1=>nx568);
   lat_addressRegIn_10 : latch port map ( Q=>addressRegIn_10, D=>nx416, CLK
      =>nx562);
   ix417 : nor02_2x port map ( Y=>nx416, A0=>nx425, A1=>nx570);
   lat_addressRegIn_11 : latch port map ( Q=>addressRegIn_11, D=>nx424, CLK
      =>nx564);
   ix425 : nor02_2x port map ( Y=>nx424, A0=>nx430, A1=>nx570);
   aluNumberCounter_counterReg_reg_Q_0 : dff port map ( Q=>
      aluNumber_0_EXMPLR, QB=>nx470, D=>nx180, CLK=>nx176);
   ix181 : nand03 port map ( Y=>nx180, A0=>nx570, A1=>nx574, A2=>
      aluNumber_0_EXMPLR);
   ix177 : oai22 port map ( Y=>nx176, A0=>nx550, A1=>nx463, B0=>nx466, B1=>
      nx468);
   ix464 : nor02_2x port map ( Y=>nx463, A0=>currentState_1, A1=>nx14);
   ix15 : nor02_2x port map ( Y=>nx14, A0=>nx267, A1=>nx245);
   ix467 : nand02 port map ( Y=>nx466, A0=>MFC, A1=>currentState_4);
   ix469 : nand02 port map ( Y=>nx468, A0=>loadNextWordList, A1=>nx550);
   aluNumberCounter_counterReg_reg_Q_1 : dff port map ( Q=>aluNumber(1), QB
      =>nx475, D=>nx190, CLK=>nx176);
   ix191 : nand02 port map ( Y=>nx190, A0=>nx463, A1=>nx473);
   aluNumberCounter_counterReg_reg_Q_2 : dff port map ( Q=>
      aluNumber_2_EXMPLR, QB=>OPEN, D=>nx202, CLK=>nx176);
   ix203 : nand02 port map ( Y=>nx202, A0=>nx463, A1=>nx478);
   ix479 : xnor2 port map ( Y=>nx478, A0=>aluNumber_2_EXMPLR, A1=>nx198);
   ix199 : nor02_2x port map ( Y=>nx198, A0=>nx470, A1=>nx475);
   ix149 : nor02_2x port map ( Y=>readFinal, A0=>nx466, A1=>nx483);
   ix484 : nor02_2x port map ( Y=>nx483, A0=>nx144, A1=>nx132);
   ix237 : nor02_2x port map ( Y=>ramRead, A0=>nx349, A1=>nx486);
   ix487 : nor02_2x port map ( Y=>nx486, A0=>nx232, A1=>nx228);
   ix233 : nor02_2x port map ( Y=>nx232, A0=>nx552, A1=>nx162);
   ix131 : nor03_2x port map ( Y=>nx162, A0=>dma_currentCount_2, A1=>
      dma_currentCount_1, A2=>dma_currentCount_0);
   ix229 : nor02_2x port map ( Y=>nx228, A0=>clk, A1=>nx491);
   ix492 : nor02_2x port map ( Y=>nx491, A0=>nx466, A1=>nx138);
   dma_tristateLabel_tri_output_0 : trib04 port map ( Y=>internalBus(0), A=>
      ramDataInBus(0), E=>nx538);
   dma_tristateLabel_tri_output_1 : trib04 port map ( Y=>internalBus(1), A=>
      ramDataInBus(1), E=>nx538);
   dma_tristateLabel_tri_output_2 : trib04 port map ( Y=>internalBus(2), A=>
      ramDataInBus(2), E=>nx538);
   dma_tristateLabel_tri_output_3 : trib04 port map ( Y=>internalBus(3), A=>
      ramDataInBus(3), E=>nx538);
   dma_tristateLabel_tri_output_4 : trib04 port map ( Y=>internalBus(4), A=>
      ramDataInBus(4), E=>nx538);
   dma_tristateLabel_tri_output_5 : trib04 port map ( Y=>internalBus(5), A=>
      ramDataInBus(5), E=>nx538);
   dma_tristateLabel_tri_output_6 : trib04 port map ( Y=>internalBus(6), A=>
      ramDataInBus(6), E=>nx540);
   dma_tristateLabel_tri_output_7 : trib04 port map ( Y=>internalBus(7), A=>
      ramDataInBus(7), E=>nx540);
   dma_tristateLabel_tri_output_8 : trib04 port map ( Y=>internalBus(8), A=>
      ramDataInBus(8), E=>nx540);
   dma_tristateLabel_tri_output_9 : trib04 port map ( Y=>internalBus(9), A=>
      ramDataInBus(9), E=>nx540);
   dma_tristateLabel_tri_output_10 : trib04 port map ( Y=>internalBus(10), A
      =>ramDataInBus(10), E=>nx540);
   dma_tristateLabel_tri_output_11 : trib04 port map ( Y=>internalBus(11), A
      =>ramDataInBus(11), E=>nx540);
   dma_tristateLabel_tri_output_12 : trib04 port map ( Y=>internalBus(12), A
      =>ramDataInBus(12), E=>nx540);
   dma_tristateLabel_tri_output_13 : trib04 port map ( Y=>internalBus(13), A
      =>ramDataInBus(13), E=>nx542);
   dma_tristateLabel_tri_output_14 : trib04 port map ( Y=>internalBus(14), A
      =>ramDataInBus(14), E=>nx542);
   dma_tristateLabel_tri_output_15 : trib04 port map ( Y=>internalBus(15), A
      =>ramDataInBus(15), E=>nx542);
   dma_tristateLabel_tri_output_16 : trib04 port map ( Y=>internalBus(16), A
      =>ramDataInBus(16), E=>nx542);
   dma_tristateLabel_tri_output_17 : trib04 port map ( Y=>internalBus(17), A
      =>ramDataInBus(17), E=>nx542);
   dma_tristateLabel_tri_output_18 : trib04 port map ( Y=>internalBus(18), A
      =>ramDataInBus(18), E=>nx542);
   dma_tristateLabel_tri_output_19 : trib04 port map ( Y=>internalBus(19), A
      =>ramDataInBus(19), E=>nx542);
   dma_tristateLabel_tri_output_20 : trib04 port map ( Y=>internalBus(20), A
      =>ramDataInBus(20), E=>nx544);
   dma_tristateLabel_tri_output_21 : trib04 port map ( Y=>internalBus(21), A
      =>ramDataInBus(21), E=>nx544);
   dma_tristateLabel_tri_output_22 : trib04 port map ( Y=>internalBus(22), A
      =>ramDataInBus(22), E=>nx544);
   dma_tristateLabel_tri_output_23 : trib04 port map ( Y=>internalBus(23), A
      =>ramDataInBus(23), E=>nx544);
   dma_tristateLabel_tri_output_24 : trib04 port map ( Y=>internalBus(24), A
      =>ramDataInBus(24), E=>nx544);
   dma_tristateLabel_tri_output_25 : trib04 port map ( Y=>internalBus(25), A
      =>ramDataInBus(25), E=>nx544);
   dma_tristateLabel_tri_output_26 : trib04 port map ( Y=>internalBus(26), A
      =>ramDataInBus(26), E=>nx544);
   dma_tristateLabel_tri_output_27 : trib04 port map ( Y=>internalBus(27), A
      =>ramDataInBus(27), E=>nx546);
   dma_tristateLabel_tri_output_28 : trib04 port map ( Y=>internalBus(28), A
      =>ramDataInBus(28), E=>nx546);
   dma_tristateLabel_tri_output_29 : trib04 port map ( Y=>internalBus(29), A
      =>ramDataInBus(29), E=>nx546);
   dma_tristateLabel_tri_output_30 : trib04 port map ( Y=>internalBus(30), A
      =>ramDataInBus(30), E=>nx546);
   dma_tristateLabel_tri_output_31 : trib04 port map ( Y=>internalBus(31), A
      =>ramDataInBus(31), E=>nx546);
   dma_tristateLabel_tri_output_32 : trib04 port map ( Y=>internalBus(32), A
      =>ramDataInBus(32), E=>nx546);
   dma_tristateLabel_tri_output_33 : trib04 port map ( Y=>internalBus(33), A
      =>ramDataInBus(33), E=>nx546);
   dma_tristateLabel_tri_output_34 : trib04 port map ( Y=>internalBus(34), A
      =>ramDataInBus(34), E=>nx548);
   dma_tristateLabel_tri_output_35 : trib04 port map ( Y=>internalBus(35), A
      =>ramDataInBus(35), E=>nx548);
   dma_tristateLabel_tri_output_36 : trib04 port map ( Y=>internalBus(36), A
      =>ramDataInBus(36), E=>nx548);
   dma_tristateLabel_tri_output_37 : trib04 port map ( Y=>internalBus(37), A
      =>ramDataInBus(37), E=>nx548);
   dma_tristateLabel_tri_output_38 : trib04 port map ( Y=>internalBus(38), A
      =>ramDataInBus(38), E=>nx548);
   dma_tristateLabel_tri_output_39 : trib04 port map ( Y=>internalBus(39), A
      =>ramDataInBus(39), E=>nx548);
   ix537 : buf02 port map ( Y=>nx538, A=>readOne_EXMPLR);
   ix539 : buf02 port map ( Y=>nx540, A=>readOne_EXMPLR);
   ix541 : buf02 port map ( Y=>nx542, A=>readOne_EXMPLR);
   ix543 : buf02 port map ( Y=>nx544, A=>readOne_EXMPLR);
   ix545 : buf02 port map ( Y=>nx546, A=>readOne_EXMPLR);
   ix547 : buf02 port map ( Y=>nx548, A=>readOne_EXMPLR);
   ix549 : inv02 port map ( Y=>nx550, A=>clk);
   ix551 : inv02 port map ( Y=>nx552, A=>clk);
   ix553 : inv02 port map ( Y=>nx554, A=>nx245);
   ix555 : inv02 port map ( Y=>nx556, A=>nx245);
   ix557 : buf02 port map ( Y=>nx558, A=>nx580);
   ix559 : inv02 port map ( Y=>nx560, A=>currentState_0);
   ix561 : inv02 port map ( Y=>nx562, A=>currentState_0);
   ix563 : inv02 port map ( Y=>nx564, A=>currentState_0);
   ix565 : inv02 port map ( Y=>nx566, A=>currentState_1);
   ix567 : inv02 port map ( Y=>nx568, A=>currentState_1);
   ix569 : inv02 port map ( Y=>nx570, A=>currentState_1);
   ix571 : buf02 port map ( Y=>nx572, A=>nx315);
   ix573 : buf02 port map ( Y=>nx574, A=>nx315);
   ix579 : buf02 port map ( Y=>nx580, A=>nx586);
   ix585 : buf02 port map ( Y=>nx586, A=>nx592);
   ix591 : buf02 port map ( Y=>nx592, A=>nx598);
   ix597 : buf02 port map ( Y=>nx598, A=>nx604);
   ix603 : buf02 port map ( Y=>nx604, A=>nx18);
   ix340 : xnor2 port map ( Y=>nx339, A0=>nx319, A1=>nx610);
   ix99 : nand02 port map ( Y=>nx610, A0=>nx279, A1=>nx295);
   ix474 : xnor2 port map ( Y=>nx473, A0=>nx475, A1=>nx470);
   lat_dmaCountIn_2_u1 : latchr port map ( QB=>nx5, D=>nx110, CLK=>nx18, R=>
      zerosSignal_2);
   lat_dmaCountIn_2_u2 : inv01 port map ( Y=>nx0, A=>nx5);
   lat_dmaCountIn_2_u3 : buf02 port map ( Y=>nx331, A=>nx5);
end ReadLogicArch_unfold_3059 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity WriteDMA_13_80 is
   port (
      clk : IN std_logic ;
      writeBaseAddress : IN std_logic_vector (12 DOWNTO 0) ;
      writeStep : IN std_logic_vector (12 DOWNTO 0) ;
      writeToRam : IN std_logic ;
      counter : IN std_logic_vector (4 DOWNTO 0) ;
      initCounter : IN std_logic ;
      initAddress : IN std_logic ;
      internalBus : IN std_logic_vector (79 DOWNTO 0) ;
      ramWrite : OUT std_logic ;
      ramDataOutBus : OUT std_logic_vector (79 DOWNTO 0) ;
      ramWriteAddress : OUT std_logic_vector (12 DOWNTO 0) ;
      MFC : IN std_logic ;
      writeComplete : OUT std_logic ;
      writeCompleteOne : OUT std_logic) ;
end WriteDMA_13_80 ;

architecture WriteDMAArch_unfold_1966 of WriteDMA_13_80 is
   component MultiStepCounter_13
      port (
         load : IN std_logic_vector (12 DOWNTO 0) ;
         toBeAdded : IN std_logic_vector (12 DOWNTO 0) ;
         reset : IN std_logic ;
         clk : IN std_logic ;
         isLoad : IN std_logic ;
         MFC : IN std_logic ;
         count : OUT std_logic_vector (12 DOWNTO 0)) ;
   end component ;
   signal toBeAdded_12, toBeAdded_11, toBeAdded_10, toBeAdded_9, toBeAdded_8, 
      toBeAdded_7, toBeAdded_6, toBeAdded_5, toBeAdded_4, toBeAdded_3, 
      toBeAdded_2, toBeAdded_1, toBeAdded_0, GND, currentCount_2, nx190, 
      currentCount_1, currentCount_0, nx210, nx240, currentCount_3, nx246, 
      nx260, nx278, nx280, currentCount_4, nx292, nx300, nx135, nx145, nx155, 
      nx165, nx175, nx187, nx191, nx197, nx199, nx201, nx205, nx211, nx213, 
      nx217, nx223, nx227, nx229, nx233, nx235, nx239, nx241, nx242, nx245, 
      nx247, nx249, nx251, nx255, nx257, nx264, nx267, nx271, nx275, nx277, 
      nx281, nx287, nx317, nx320, nx323, nx326, nx329, nx332, nx335, nx338, 
      nx341, nx344, nx347, nx350, nx353, nx356, nx359, nx362, nx365, nx368, 
      nx371, nx374, nx377, nx380, nx383, nx386, nx389, nx392, nx395, nx398, 
      nx401, nx404, nx407, nx410, nx413, nx416, nx419, nx422, nx425, nx428, 
      nx431, nx434, nx437, nx440, nx443, nx446, nx449, nx452, nx455, nx458, 
      nx461, nx464, nx467, nx470, nx473, nx476, nx479, nx482, nx485, nx488, 
      nx491, nx494, nx497, nx500, nx503, nx506, nx509, nx512, nx515, nx518, 
      nx521, nx524, nx527, nx530, nx533, nx536, nx539, nx542, nx545, nx548, 
      nx551, nx554, nx561, nx563, nx565, nx567, nx569, nx571, nx573, nx575, 
      nx577, nx579, nx581, nx583, nx589, nx591, nx593, nx595, nx597, nx599, 
      nx601, nx603, nx605, nx607: std_logic ;

begin
   ramWrite <= GND ;
   writeAddressRegister : MultiStepCounter_13 port map ( load(12)=>
      writeBaseAddress(12), load(11)=>writeBaseAddress(11), load(10)=>
      writeBaseAddress(10), load(9)=>writeBaseAddress(9), load(8)=>
      writeBaseAddress(8), load(7)=>writeBaseAddress(7), load(6)=>
      writeBaseAddress(6), load(5)=>writeBaseAddress(5), load(4)=>
      writeBaseAddress(4), load(3)=>writeBaseAddress(3), load(2)=>
      writeBaseAddress(2), load(1)=>writeBaseAddress(1), load(0)=>
      writeBaseAddress(0), toBeAdded(12)=>toBeAdded_12, toBeAdded(11)=>
      toBeAdded_11, toBeAdded(10)=>toBeAdded_10, toBeAdded(9)=>toBeAdded_9, 
      toBeAdded(8)=>toBeAdded_8, toBeAdded(7)=>toBeAdded_7, toBeAdded(6)=>
      toBeAdded_6, toBeAdded(5)=>toBeAdded_5, toBeAdded(4)=>toBeAdded_4, 
      toBeAdded(3)=>toBeAdded_3, toBeAdded(2)=>toBeAdded_2, toBeAdded(1)=>
      toBeAdded_1, toBeAdded(0)=>toBeAdded_0, reset=>GND, clk=>clk, isLoad=>
      nx595, MFC=>MFC, count(12)=>ramWriteAddress(12), count(11)=>
      ramWriteAddress(11), count(10)=>ramWriteAddress(10), count(9)=>
      ramWriteAddress(9), count(8)=>ramWriteAddress(8), count(7)=>
      ramWriteAddress(7), count(6)=>ramWriteAddress(6), count(5)=>
      ramWriteAddress(5), count(4)=>ramWriteAddress(4), count(3)=>
      ramWriteAddress(3), count(2)=>ramWriteAddress(2), count(1)=>
      ramWriteAddress(1), count(0)=>ramWriteAddress(0));
   ix11 : fake_gnd port map ( Y=>GND);
   ix303 : nor02ii port map ( Y=>writeComplete, A0=>nx187, A1=>nx300);
   ix188 : nor02_2x port map ( Y=>nx187, A0=>nx280, A1=>nx278);
   ix281 : nor03_2x port map ( Y=>nx280, A0=>nx191, A1=>currentCount_3, A2=>
      nx251);
   ix192 : inv01 port map ( Y=>nx191, A=>clk);
   writecounter_counterReg_reg_Q_3 : dff port map ( Q=>currentCount_3, QB=>
      nx249, D=>nx165, CLK=>clk);
   ix166 : nand02 port map ( Y=>nx165, A0=>nx197, A1=>nx201);
   ix198 : nand02 port map ( Y=>nx197, A0=>currentCount_3, A1=>nx199);
   ix200 : nor02_2x port map ( Y=>nx199, A0=>MFC, A1=>nx595);
   ix202 : nand02 port map ( Y=>nx201, A0=>nx260, A1=>nx190);
   ix261 : oai21 port map ( Y=>nx260, A0=>nx595, A1=>nx205, B0=>nx247);
   writecounter_counterReg_reg_Q_2 : dff port map ( Q=>currentCount_2, QB=>
      nx245, D=>nx155, CLK=>clk);
   ix156 : nand02 port map ( Y=>nx155, A0=>nx211, A1=>nx213);
   ix212 : nand02 port map ( Y=>nx211, A0=>currentCount_2, A1=>nx199);
   ix214 : nand02 port map ( Y=>nx213, A0=>nx240, A1=>nx190);
   ix241 : oai21 port map ( Y=>nx240, A0=>nx595, A1=>nx217, B0=>nx242);
   writecounter_counterReg_reg_Q_1 : dff port map ( Q=>currentCount_1, QB=>
      nx241, D=>nx145, CLK=>clk);
   ix146 : oai21 port map ( Y=>nx145, A0=>nx223, A1=>nx199, B0=>nx239);
   ix224 : aoi21 port map ( Y=>nx223, A0=>counter(1), A1=>nx595, B0=>nx210);
   ix211 : nor02_2x port map ( Y=>nx210, A0=>nx595, A1=>nx227);
   ix136 : oai21 port map ( Y=>nx135, A0=>nx233, A1=>nx199, B0=>nx235);
   ix234 : mux21 port map ( Y=>nx233, A0=>nx229, A1=>counter(0), S0=>nx595);
   ix236 : nand02 port map ( Y=>nx235, A0=>currentCount_0, A1=>nx199);
   writecounter_counterReg_reg_Q_0 : dff port map ( Q=>currentCount_0, QB=>
      nx229, D=>nx135, CLK=>clk);
   ix240 : nand02 port map ( Y=>nx239, A0=>currentCount_1, A1=>nx199);
   ix243 : nand02 port map ( Y=>nx242, A0=>counter(2), A1=>nx597);
   ix191 : inv01 port map ( Y=>nx190, A=>nx199);
   ix248 : nand02 port map ( Y=>nx247, A0=>counter(3), A1=>nx597);
   ix252 : nand03 port map ( Y=>nx251, A0=>nx245, A1=>nx241, A2=>nx229);
   ix279 : nor03_2x port map ( Y=>nx278, A0=>currentCount_2, A1=>nx255, A2=>
      nx257);
   ix256 : nand02 port map ( Y=>nx255, A0=>nx191, A1=>nx249);
   ix258 : nand02 port map ( Y=>nx257, A0=>nx241, A1=>currentCount_0);
   ix301 : nor02_2x port map ( Y=>nx300, A0=>currentCount_4, A1=>nx281);
   writecounter_counterReg_reg_Q_4 : dff port map ( Q=>currentCount_4, QB=>
      OPEN, D=>nx175, CLK=>clk);
   ix176 : nand02 port map ( Y=>nx175, A0=>nx264, A1=>nx267);
   ix266 : nand02 port map ( Y=>nx264, A0=>currentCount_4, A1=>nx199);
   ix268 : nand02 port map ( Y=>nx267, A0=>nx292, A1=>nx190);
   ix293 : oai21 port map ( Y=>nx292, A0=>nx597, A1=>nx271, B0=>nx277);
   ix272 : xnor2 port map ( Y=>nx271, A0=>currentCount_4, A1=>nx246);
   ix247 : nor03_2x port map ( Y=>nx246, A0=>currentCount_3, A1=>
      currentCount_2, A2=>nx275);
   ix276 : nand02 port map ( Y=>nx275, A0=>nx241, A1=>nx229);
   ix278 : nand02 port map ( Y=>nx277, A0=>counter(4), A1=>nx597);
   ix282 : nand02 port map ( Y=>nx281, A0=>nx603, A1=>MFC);
   ix297 : nor02_2x port map ( Y=>writeCompleteOne, A0=>nx607, A1=>nx287);
   ix288 : inv01 port map ( Y=>nx287, A=>MFC);
   writeStepRegister_reg_Q_0 : dff port map ( Q=>toBeAdded_0, QB=>OPEN, D=>
      writeStep(0), CLK=>nx597);
   writeStepRegister_reg_Q_1 : dff port map ( Q=>toBeAdded_1, QB=>OPEN, D=>
      writeStep(1), CLK=>nx597);
   writeStepRegister_reg_Q_2 : dff port map ( Q=>toBeAdded_2, QB=>OPEN, D=>
      writeStep(2), CLK=>nx597);
   writeStepRegister_reg_Q_3 : dff port map ( Q=>toBeAdded_3, QB=>OPEN, D=>
      writeStep(3), CLK=>nx599);
   writeStepRegister_reg_Q_4 : dff port map ( Q=>toBeAdded_4, QB=>OPEN, D=>
      writeStep(4), CLK=>nx599);
   writeStepRegister_reg_Q_5 : dff port map ( Q=>toBeAdded_5, QB=>OPEN, D=>
      writeStep(5), CLK=>nx599);
   writeStepRegister_reg_Q_6 : dff port map ( Q=>toBeAdded_6, QB=>OPEN, D=>
      writeStep(6), CLK=>nx599);
   writeStepRegister_reg_Q_7 : dff port map ( Q=>toBeAdded_7, QB=>OPEN, D=>
      writeStep(7), CLK=>nx599);
   writeStepRegister_reg_Q_8 : dff port map ( Q=>toBeAdded_8, QB=>OPEN, D=>
      writeStep(8), CLK=>nx599);
   writeStepRegister_reg_Q_9 : dff port map ( Q=>toBeAdded_9, QB=>OPEN, D=>
      writeStep(9), CLK=>nx599);
   writeStepRegister_reg_Q_10 : dff port map ( Q=>toBeAdded_10, QB=>OPEN, D
      =>writeStep(10), CLK=>nx601);
   writeStepRegister_reg_Q_11 : dff port map ( Q=>toBeAdded_11, QB=>OPEN, D
      =>writeStep(11), CLK=>nx601);
   writeStepRegister_reg_Q_12 : dff port map ( Q=>toBeAdded_12, QB=>OPEN, D
      =>writeStep(12), CLK=>nx601);
   ix31 : nor02_2x port map ( Y=>ramDataOutBus(0), A0=>nx317, A1=>nx607);
   ix318 : inv01 port map ( Y=>nx317, A=>internalBus(0));
   ix33 : nor02_2x port map ( Y=>ramDataOutBus(1), A0=>nx320, A1=>nx607);
   ix321 : inv01 port map ( Y=>nx320, A=>internalBus(1));
   ix35 : nor02_2x port map ( Y=>ramDataOutBus(2), A0=>nx323, A1=>nx607);
   ix324 : inv01 port map ( Y=>nx323, A=>internalBus(2));
   ix37 : nor02_2x port map ( Y=>ramDataOutBus(3), A0=>nx326, A1=>nx607);
   ix327 : inv01 port map ( Y=>nx326, A=>internalBus(3));
   ix39 : nor02_2x port map ( Y=>ramDataOutBus(4), A0=>nx329, A1=>nx607);
   ix330 : inv01 port map ( Y=>nx329, A=>internalBus(4));
   ix41 : nor02_2x port map ( Y=>ramDataOutBus(5), A0=>nx332, A1=>nx607);
   ix333 : inv01 port map ( Y=>nx332, A=>internalBus(5));
   ix43 : nor02_2x port map ( Y=>ramDataOutBus(6), A0=>nx335, A1=>nx563);
   ix336 : inv01 port map ( Y=>nx335, A=>internalBus(6));
   ix45 : nor02_2x port map ( Y=>ramDataOutBus(7), A0=>nx338, A1=>nx563);
   ix339 : inv01 port map ( Y=>nx338, A=>internalBus(7));
   ix47 : nor02_2x port map ( Y=>ramDataOutBus(8), A0=>nx341, A1=>nx563);
   ix342 : inv01 port map ( Y=>nx341, A=>internalBus(8));
   ix49 : nor02_2x port map ( Y=>ramDataOutBus(9), A0=>nx344, A1=>nx563);
   ix345 : inv01 port map ( Y=>nx344, A=>internalBus(9));
   ix51 : nor02_2x port map ( Y=>ramDataOutBus(10), A0=>nx347, A1=>nx563);
   ix348 : inv01 port map ( Y=>nx347, A=>internalBus(10));
   ix53 : nor02_2x port map ( Y=>ramDataOutBus(11), A0=>nx350, A1=>nx563);
   ix351 : inv01 port map ( Y=>nx350, A=>internalBus(11));
   ix55 : nor02_2x port map ( Y=>ramDataOutBus(12), A0=>nx353, A1=>nx563);
   ix354 : inv01 port map ( Y=>nx353, A=>internalBus(12));
   ix57 : nor02_2x port map ( Y=>ramDataOutBus(13), A0=>nx356, A1=>nx565);
   ix357 : inv01 port map ( Y=>nx356, A=>internalBus(13));
   ix59 : nor02_2x port map ( Y=>ramDataOutBus(14), A0=>nx359, A1=>nx565);
   ix360 : inv01 port map ( Y=>nx359, A=>internalBus(14));
   ix61 : nor02_2x port map ( Y=>ramDataOutBus(15), A0=>nx362, A1=>nx565);
   ix363 : inv01 port map ( Y=>nx362, A=>internalBus(15));
   ix63 : nor02_2x port map ( Y=>ramDataOutBus(16), A0=>nx365, A1=>nx565);
   ix366 : inv01 port map ( Y=>nx365, A=>internalBus(16));
   ix65 : nor02_2x port map ( Y=>ramDataOutBus(17), A0=>nx368, A1=>nx565);
   ix369 : inv01 port map ( Y=>nx368, A=>internalBus(17));
   ix67 : nor02_2x port map ( Y=>ramDataOutBus(18), A0=>nx371, A1=>nx565);
   ix372 : inv01 port map ( Y=>nx371, A=>internalBus(18));
   ix69 : nor02_2x port map ( Y=>ramDataOutBus(19), A0=>nx374, A1=>nx565);
   ix375 : inv01 port map ( Y=>nx374, A=>internalBus(19));
   ix71 : nor02_2x port map ( Y=>ramDataOutBus(20), A0=>nx377, A1=>nx567);
   ix378 : inv01 port map ( Y=>nx377, A=>internalBus(20));
   ix73 : nor02_2x port map ( Y=>ramDataOutBus(21), A0=>nx380, A1=>nx567);
   ix381 : inv01 port map ( Y=>nx380, A=>internalBus(21));
   ix75 : nor02_2x port map ( Y=>ramDataOutBus(22), A0=>nx383, A1=>nx567);
   ix384 : inv01 port map ( Y=>nx383, A=>internalBus(22));
   ix77 : nor02_2x port map ( Y=>ramDataOutBus(23), A0=>nx386, A1=>nx567);
   ix387 : inv01 port map ( Y=>nx386, A=>internalBus(23));
   ix79 : nor02_2x port map ( Y=>ramDataOutBus(24), A0=>nx389, A1=>nx567);
   ix390 : inv01 port map ( Y=>nx389, A=>internalBus(24));
   ix81 : nor02_2x port map ( Y=>ramDataOutBus(25), A0=>nx392, A1=>nx567);
   ix393 : inv01 port map ( Y=>nx392, A=>internalBus(25));
   ix83 : nor02_2x port map ( Y=>ramDataOutBus(26), A0=>nx395, A1=>nx567);
   ix396 : inv01 port map ( Y=>nx395, A=>internalBus(26));
   ix85 : nor02_2x port map ( Y=>ramDataOutBus(27), A0=>nx398, A1=>nx569);
   ix399 : inv01 port map ( Y=>nx398, A=>internalBus(27));
   ix87 : nor02_2x port map ( Y=>ramDataOutBus(28), A0=>nx401, A1=>nx569);
   ix402 : inv01 port map ( Y=>nx401, A=>internalBus(28));
   ix89 : nor02_2x port map ( Y=>ramDataOutBus(29), A0=>nx404, A1=>nx569);
   ix405 : inv01 port map ( Y=>nx404, A=>internalBus(29));
   ix91 : nor02_2x port map ( Y=>ramDataOutBus(30), A0=>nx407, A1=>nx569);
   ix408 : inv01 port map ( Y=>nx407, A=>internalBus(30));
   ix93 : nor02_2x port map ( Y=>ramDataOutBus(31), A0=>nx410, A1=>nx569);
   ix411 : inv01 port map ( Y=>nx410, A=>internalBus(31));
   ix95 : nor02_2x port map ( Y=>ramDataOutBus(32), A0=>nx413, A1=>nx569);
   ix414 : inv01 port map ( Y=>nx413, A=>internalBus(32));
   ix97 : nor02_2x port map ( Y=>ramDataOutBus(33), A0=>nx416, A1=>nx569);
   ix417 : inv01 port map ( Y=>nx416, A=>internalBus(33));
   ix99 : nor02_2x port map ( Y=>ramDataOutBus(34), A0=>nx419, A1=>nx571);
   ix420 : inv01 port map ( Y=>nx419, A=>internalBus(34));
   ix101 : nor02_2x port map ( Y=>ramDataOutBus(35), A0=>nx422, A1=>nx571);
   ix423 : inv01 port map ( Y=>nx422, A=>internalBus(35));
   ix103 : nor02_2x port map ( Y=>ramDataOutBus(36), A0=>nx425, A1=>nx571);
   ix426 : inv01 port map ( Y=>nx425, A=>internalBus(36));
   ix105 : nor02_2x port map ( Y=>ramDataOutBus(37), A0=>nx428, A1=>nx571);
   ix429 : inv01 port map ( Y=>nx428, A=>internalBus(37));
   ix107 : nor02_2x port map ( Y=>ramDataOutBus(38), A0=>nx431, A1=>nx571);
   ix432 : inv01 port map ( Y=>nx431, A=>internalBus(38));
   ix109 : nor02_2x port map ( Y=>ramDataOutBus(39), A0=>nx434, A1=>nx571);
   ix435 : inv01 port map ( Y=>nx434, A=>internalBus(39));
   ix111 : nor02_2x port map ( Y=>ramDataOutBus(40), A0=>nx437, A1=>nx571);
   ix438 : inv01 port map ( Y=>nx437, A=>internalBus(40));
   ix113 : nor02_2x port map ( Y=>ramDataOutBus(41), A0=>nx440, A1=>nx573);
   ix441 : inv01 port map ( Y=>nx440, A=>internalBus(41));
   ix115 : nor02_2x port map ( Y=>ramDataOutBus(42), A0=>nx443, A1=>nx573);
   ix444 : inv01 port map ( Y=>nx443, A=>internalBus(42));
   ix117 : nor02_2x port map ( Y=>ramDataOutBus(43), A0=>nx446, A1=>nx573);
   ix447 : inv01 port map ( Y=>nx446, A=>internalBus(43));
   ix119 : nor02_2x port map ( Y=>ramDataOutBus(44), A0=>nx449, A1=>nx573);
   ix450 : inv01 port map ( Y=>nx449, A=>internalBus(44));
   ix121 : nor02_2x port map ( Y=>ramDataOutBus(45), A0=>nx452, A1=>nx573);
   ix453 : inv01 port map ( Y=>nx452, A=>internalBus(45));
   ix123 : nor02_2x port map ( Y=>ramDataOutBus(46), A0=>nx455, A1=>nx573);
   ix456 : inv01 port map ( Y=>nx455, A=>internalBus(46));
   ix125 : nor02_2x port map ( Y=>ramDataOutBus(47), A0=>nx458, A1=>nx573);
   ix459 : inv01 port map ( Y=>nx458, A=>internalBus(47));
   ix127 : nor02_2x port map ( Y=>ramDataOutBus(48), A0=>nx461, A1=>nx575);
   ix462 : inv01 port map ( Y=>nx461, A=>internalBus(48));
   ix129 : nor02_2x port map ( Y=>ramDataOutBus(49), A0=>nx464, A1=>nx575);
   ix465 : inv01 port map ( Y=>nx464, A=>internalBus(49));
   ix131 : nor02_2x port map ( Y=>ramDataOutBus(50), A0=>nx467, A1=>nx575);
   ix468 : inv01 port map ( Y=>nx467, A=>internalBus(50));
   ix133 : nor02_2x port map ( Y=>ramDataOutBus(51), A0=>nx470, A1=>nx575);
   ix471 : inv01 port map ( Y=>nx470, A=>internalBus(51));
   ix135 : nor02_2x port map ( Y=>ramDataOutBus(52), A0=>nx473, A1=>nx575);
   ix474 : inv01 port map ( Y=>nx473, A=>internalBus(52));
   ix137 : nor02_2x port map ( Y=>ramDataOutBus(53), A0=>nx476, A1=>nx575);
   ix477 : inv01 port map ( Y=>nx476, A=>internalBus(53));
   ix139 : nor02_2x port map ( Y=>ramDataOutBus(54), A0=>nx479, A1=>nx575);
   ix480 : inv01 port map ( Y=>nx479, A=>internalBus(54));
   ix141 : nor02_2x port map ( Y=>ramDataOutBus(55), A0=>nx482, A1=>nx577);
   ix483 : inv01 port map ( Y=>nx482, A=>internalBus(55));
   ix143 : nor02_2x port map ( Y=>ramDataOutBus(56), A0=>nx485, A1=>nx577);
   ix486 : inv01 port map ( Y=>nx485, A=>internalBus(56));
   ix145 : nor02_2x port map ( Y=>ramDataOutBus(57), A0=>nx488, A1=>nx577);
   ix489 : inv01 port map ( Y=>nx488, A=>internalBus(57));
   ix147 : nor02_2x port map ( Y=>ramDataOutBus(58), A0=>nx491, A1=>nx577);
   ix492 : inv01 port map ( Y=>nx491, A=>internalBus(58));
   ix149 : nor02_2x port map ( Y=>ramDataOutBus(59), A0=>nx494, A1=>nx577);
   ix495 : inv01 port map ( Y=>nx494, A=>internalBus(59));
   ix151 : nor02_2x port map ( Y=>ramDataOutBus(60), A0=>nx497, A1=>nx577);
   ix498 : inv01 port map ( Y=>nx497, A=>internalBus(60));
   ix153 : nor02_2x port map ( Y=>ramDataOutBus(61), A0=>nx500, A1=>nx577);
   ix501 : inv01 port map ( Y=>nx500, A=>internalBus(61));
   ix155 : nor02_2x port map ( Y=>ramDataOutBus(62), A0=>nx503, A1=>nx579);
   ix504 : inv01 port map ( Y=>nx503, A=>internalBus(62));
   ix157 : nor02_2x port map ( Y=>ramDataOutBus(63), A0=>nx506, A1=>nx579);
   ix507 : inv01 port map ( Y=>nx506, A=>internalBus(63));
   ix159 : nor02_2x port map ( Y=>ramDataOutBus(64), A0=>nx509, A1=>nx579);
   ix510 : inv01 port map ( Y=>nx509, A=>internalBus(64));
   ix161 : nor02_2x port map ( Y=>ramDataOutBus(65), A0=>nx512, A1=>nx579);
   ix513 : inv01 port map ( Y=>nx512, A=>internalBus(65));
   ix163 : nor02_2x port map ( Y=>ramDataOutBus(66), A0=>nx515, A1=>nx579);
   ix516 : inv01 port map ( Y=>nx515, A=>internalBus(66));
   ix165 : nor02_2x port map ( Y=>ramDataOutBus(67), A0=>nx518, A1=>nx579);
   ix519 : inv01 port map ( Y=>nx518, A=>internalBus(67));
   ix167 : nor02_2x port map ( Y=>ramDataOutBus(68), A0=>nx521, A1=>nx579);
   ix522 : inv01 port map ( Y=>nx521, A=>internalBus(68));
   ix169 : nor02_2x port map ( Y=>ramDataOutBus(69), A0=>nx524, A1=>nx581);
   ix525 : inv01 port map ( Y=>nx524, A=>internalBus(69));
   ix171 : nor02_2x port map ( Y=>ramDataOutBus(70), A0=>nx527, A1=>nx581);
   ix528 : inv01 port map ( Y=>nx527, A=>internalBus(70));
   ix173 : nor02_2x port map ( Y=>ramDataOutBus(71), A0=>nx530, A1=>nx581);
   ix531 : inv01 port map ( Y=>nx530, A=>internalBus(71));
   ix175 : nor02_2x port map ( Y=>ramDataOutBus(72), A0=>nx533, A1=>nx581);
   ix534 : inv01 port map ( Y=>nx533, A=>internalBus(72));
   ix177 : nor02_2x port map ( Y=>ramDataOutBus(73), A0=>nx536, A1=>nx581);
   ix537 : inv01 port map ( Y=>nx536, A=>internalBus(73));
   ix179 : nor02_2x port map ( Y=>ramDataOutBus(74), A0=>nx539, A1=>nx581);
   ix540 : inv01 port map ( Y=>nx539, A=>internalBus(74));
   ix181 : nor02_2x port map ( Y=>ramDataOutBus(75), A0=>nx542, A1=>nx581);
   ix543 : inv01 port map ( Y=>nx542, A=>internalBus(75));
   ix183 : nor02_2x port map ( Y=>ramDataOutBus(76), A0=>nx545, A1=>nx583);
   ix546 : inv01 port map ( Y=>nx545, A=>internalBus(76));
   ix185 : nor02_2x port map ( Y=>ramDataOutBus(77), A0=>nx548, A1=>nx583);
   ix549 : inv01 port map ( Y=>nx548, A=>internalBus(77));
   ix187 : nor02_2x port map ( Y=>ramDataOutBus(78), A0=>nx551, A1=>nx583);
   ix552 : inv01 port map ( Y=>nx551, A=>internalBus(78));
   ix189 : nor02_2x port map ( Y=>ramDataOutBus(79), A0=>nx554, A1=>nx583);
   ix555 : inv01 port map ( Y=>nx554, A=>internalBus(79));
   ix560 : inv02 port map ( Y=>nx561, A=>writeToRam);
   ix562 : inv02 port map ( Y=>nx563, A=>nx603);
   ix564 : inv02 port map ( Y=>nx565, A=>nx603);
   ix566 : inv02 port map ( Y=>nx567, A=>nx603);
   ix568 : inv02 port map ( Y=>nx569, A=>nx603);
   ix570 : inv02 port map ( Y=>nx571, A=>nx603);
   ix572 : inv02 port map ( Y=>nx573, A=>nx603);
   ix574 : inv02 port map ( Y=>nx575, A=>nx605);
   ix576 : inv02 port map ( Y=>nx577, A=>nx605);
   ix578 : inv02 port map ( Y=>nx579, A=>nx605);
   ix580 : inv02 port map ( Y=>nx581, A=>nx605);
   ix582 : inv02 port map ( Y=>nx583, A=>nx605);
   ix206 : xnor2 port map ( Y=>nx205, A0=>nx249, A1=>nx589);
   ix227 : nand03 port map ( Y=>nx589, A0=>nx245, A1=>nx241, A2=>nx229);
   ix218 : xnor2 port map ( Y=>nx217, A0=>nx245, A1=>nx591);
   ix223 : nand02 port map ( Y=>nx591, A0=>nx241, A1=>nx229);
   ix228 : xnor2 port map ( Y=>nx227, A0=>nx241, A1=>currentCount_0);
   ix592 : inv01 port map ( Y=>nx593, A=>initCounter);
   ix594 : inv02 port map ( Y=>nx595, A=>nx593);
   ix596 : inv02 port map ( Y=>nx597, A=>nx593);
   ix598 : inv02 port map ( Y=>nx599, A=>nx593);
   ix600 : inv02 port map ( Y=>nx601, A=>nx593);
   ix602 : inv02 port map ( Y=>nx603, A=>nx561);
   ix604 : inv02 port map ( Y=>nx605, A=>nx561);
   ix606 : inv02 port map ( Y=>nx607, A=>writeToRam);
end WriteDMAArch_unfold_1966 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity WriteLogic_13_80 is
   port (
      clk : IN std_logic ;
      resetState : IN std_logic ;
      switchRam : IN std_logic ;
      ramBasedAddress : IN std_logic_vector (12 DOWNTO 0) ;
      internalBus : IN std_logic_vector (79 DOWNTO 0) ;
      ramWrite : OUT std_logic ;
      ramDataOutBus : OUT std_logic_vector (79 DOWNTO 0) ;
      ramAddress : OUT std_logic_vector (12 DOWNTO 0) ;
      MFC : IN std_logic ;
      outputSize : IN std_logic_vector (12 DOWNTO 0) ;
      write : IN std_logic ;
      writeDone : OUT std_logic ;
      writeDoneOne : OUT std_logic) ;
end WriteLogic_13_80 ;

architecture WriteLogicArch_unfold_2859 of WriteLogic_13_80 is
   component WriteDMA_13_80
      port (
         clk : IN std_logic ;
         writeBaseAddress : IN std_logic_vector (12 DOWNTO 0) ;
         writeStep : IN std_logic_vector (12 DOWNTO 0) ;
         writeToRam : IN std_logic ;
         counter : IN std_logic_vector (4 DOWNTO 0) ;
         initCounter : IN std_logic ;
         initAddress : IN std_logic ;
         internalBus : IN std_logic_vector (79 DOWNTO 0) ;
         ramWrite : OUT std_logic ;
         ramDataOutBus : OUT std_logic_vector (79 DOWNTO 0) ;
         ramWriteAddress : OUT std_logic_vector (12 DOWNTO 0) ;
         MFC : IN std_logic ;
         writeComplete : OUT std_logic ;
         writeCompleteOne : OUT std_logic) ;
   end component ;
   component Counter2_13
      port (
         load : IN std_logic_vector (12 DOWNTO 0) ;
         reset : IN std_logic ;
         clk : IN std_logic ;
         isLoad : IN std_logic ;
         count : OUT std_logic_vector (12 DOWNTO 0)) ;
   end component ;
   signal writeDone_EXMPLR, currentState_2, addressRegOut_12, 
      addressRegOut_11, addressRegOut_10, addressRegOut_9, addressRegOut_8, 
      addressRegOut_7, addressRegOut_6, addressRegOut_5, addressRegOut_4, 
      addressRegOut_3, addressRegOut_2, addressRegOut_1, addressRegOut_0, 
      addressRegIn_12, addressRegIn_11, addressRegIn_10, addressRegIn_9, 
      addressRegIn_8, addressRegIn_7, addressRegIn_6, addressRegIn_5, 
      addressRegIn_4, addressRegIn_3, addressRegIn_2, addressRegIn_1, 
      addressRegIn_0, baseAddressCounterClk, dmaCountIn_4, dmaCountIn_3, 
      dmaCountIn_2, dmaCountIn_1, dmaCountIn_0, ramWrite_EXMPLR, nextState_1, 
      currentState_4, nx44, NOT_clk, currentState_3, currentState_0, nx38, 
      nx42, nx51, nx61, nx71, nx81, nx91, nx102, nx104, nx107, nx109, nx113, 
      nx117, nx121, nx125, nx130, nx133, nx135, nx137, nx139, nx143, nx145, 
      nx148, nx151, nx154, nx157, nx160, nx181, nx183, nx185: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   ramWrite <= ramWrite_EXMPLR ;
   writeDone <= writeDone_EXMPLR ;
   dma : WriteDMA_13_80 port map ( clk=>clk, writeBaseAddress(12)=>
      addressRegOut_12, writeBaseAddress(11)=>addressRegOut_11, 
      writeBaseAddress(10)=>addressRegOut_10, writeBaseAddress(9)=>
      addressRegOut_9, writeBaseAddress(8)=>addressRegOut_8, 
      writeBaseAddress(7)=>addressRegOut_7, writeBaseAddress(6)=>
      addressRegOut_6, writeBaseAddress(5)=>addressRegOut_5, 
      writeBaseAddress(4)=>addressRegOut_4, writeBaseAddress(3)=>
      addressRegOut_3, writeBaseAddress(2)=>addressRegOut_2, 
      writeBaseAddress(1)=>addressRegOut_1, writeBaseAddress(0)=>
      addressRegOut_0, writeStep(12)=>outputSize(12), writeStep(11)=>
      outputSize(11), writeStep(10)=>outputSize(10), writeStep(9)=>
      outputSize(9), writeStep(8)=>outputSize(8), writeStep(7)=>
      outputSize(7), writeStep(6)=>outputSize(6), writeStep(5)=>
      outputSize(5), writeStep(4)=>outputSize(4), writeStep(3)=>
      outputSize(3), writeStep(2)=>outputSize(2), writeStep(1)=>
      outputSize(1), writeStep(0)=>outputSize(0), writeToRam=>
      ramWrite_EXMPLR, counter(4)=>dmaCountIn_4, counter(3)=>dmaCountIn_3, 
      counter(2)=>dmaCountIn_2, counter(1)=>dmaCountIn_1, counter(0)=>
      dmaCountIn_0, initCounter=>currentState_2, initAddress=>nextState_1, 
      internalBus(79)=>internalBus(79), internalBus(78)=>internalBus(78), 
      internalBus(77)=>internalBus(77), internalBus(76)=>internalBus(76), 
      internalBus(75)=>internalBus(75), internalBus(74)=>internalBus(74), 
      internalBus(73)=>internalBus(73), internalBus(72)=>internalBus(72), 
      internalBus(71)=>internalBus(71), internalBus(70)=>internalBus(70), 
      internalBus(69)=>internalBus(69), internalBus(68)=>internalBus(68), 
      internalBus(67)=>internalBus(67), internalBus(66)=>internalBus(66), 
      internalBus(65)=>internalBus(65), internalBus(64)=>internalBus(64), 
      internalBus(63)=>internalBus(63), internalBus(62)=>internalBus(62), 
      internalBus(61)=>internalBus(61), internalBus(60)=>internalBus(60), 
      internalBus(59)=>internalBus(59), internalBus(58)=>internalBus(58), 
      internalBus(57)=>internalBus(57), internalBus(56)=>internalBus(56), 
      internalBus(55)=>internalBus(55), internalBus(54)=>internalBus(54), 
      internalBus(53)=>internalBus(53), internalBus(52)=>internalBus(52), 
      internalBus(51)=>internalBus(51), internalBus(50)=>internalBus(50), 
      internalBus(49)=>internalBus(49), internalBus(48)=>internalBus(48), 
      internalBus(47)=>internalBus(47), internalBus(46)=>internalBus(46), 
      internalBus(45)=>internalBus(45), internalBus(44)=>internalBus(44), 
      internalBus(43)=>internalBus(43), internalBus(42)=>internalBus(42), 
      internalBus(41)=>internalBus(41), internalBus(40)=>internalBus(40), 
      internalBus(39)=>internalBus(39), internalBus(38)=>internalBus(38), 
      internalBus(37)=>internalBus(37), internalBus(36)=>internalBus(36), 
      internalBus(35)=>internalBus(35), internalBus(34)=>internalBus(34), 
      internalBus(33)=>internalBus(33), internalBus(32)=>internalBus(32), 
      internalBus(31)=>internalBus(31), internalBus(30)=>internalBus(30), 
      internalBus(29)=>internalBus(29), internalBus(28)=>internalBus(28), 
      internalBus(27)=>internalBus(27), internalBus(26)=>internalBus(26), 
      internalBus(25)=>internalBus(25), internalBus(24)=>internalBus(24), 
      internalBus(23)=>internalBus(23), internalBus(22)=>internalBus(22), 
      internalBus(21)=>internalBus(21), internalBus(20)=>internalBus(20), 
      internalBus(19)=>internalBus(19), internalBus(18)=>internalBus(18), 
      internalBus(17)=>internalBus(17), internalBus(16)=>internalBus(16), 
      internalBus(15)=>internalBus(15), internalBus(14)=>internalBus(14), 
      internalBus(13)=>internalBus(13), internalBus(12)=>internalBus(12), 
      internalBus(11)=>internalBus(11), internalBus(10)=>internalBus(10), 
      internalBus(9)=>internalBus(9), internalBus(8)=>internalBus(8), 
      internalBus(7)=>internalBus(7), internalBus(6)=>internalBus(6), 
      internalBus(5)=>internalBus(5), internalBus(4)=>internalBus(4), 
      internalBus(3)=>internalBus(3), internalBus(2)=>internalBus(2), 
      internalBus(1)=>internalBus(1), internalBus(0)=>internalBus(0), 
      ramWrite=>DANGLING(0), ramDataOutBus(79)=>ramDataOutBus(79), 
      ramDataOutBus(78)=>ramDataOutBus(78), ramDataOutBus(77)=>
      ramDataOutBus(77), ramDataOutBus(76)=>ramDataOutBus(76), 
      ramDataOutBus(75)=>ramDataOutBus(75), ramDataOutBus(74)=>
      ramDataOutBus(74), ramDataOutBus(73)=>ramDataOutBus(73), 
      ramDataOutBus(72)=>ramDataOutBus(72), ramDataOutBus(71)=>
      ramDataOutBus(71), ramDataOutBus(70)=>ramDataOutBus(70), 
      ramDataOutBus(69)=>ramDataOutBus(69), ramDataOutBus(68)=>
      ramDataOutBus(68), ramDataOutBus(67)=>ramDataOutBus(67), 
      ramDataOutBus(66)=>ramDataOutBus(66), ramDataOutBus(65)=>
      ramDataOutBus(65), ramDataOutBus(64)=>ramDataOutBus(64), 
      ramDataOutBus(63)=>ramDataOutBus(63), ramDataOutBus(62)=>
      ramDataOutBus(62), ramDataOutBus(61)=>ramDataOutBus(61), 
      ramDataOutBus(60)=>ramDataOutBus(60), ramDataOutBus(59)=>
      ramDataOutBus(59), ramDataOutBus(58)=>ramDataOutBus(58), 
      ramDataOutBus(57)=>ramDataOutBus(57), ramDataOutBus(56)=>
      ramDataOutBus(56), ramDataOutBus(55)=>ramDataOutBus(55), 
      ramDataOutBus(54)=>ramDataOutBus(54), ramDataOutBus(53)=>
      ramDataOutBus(53), ramDataOutBus(52)=>ramDataOutBus(52), 
      ramDataOutBus(51)=>ramDataOutBus(51), ramDataOutBus(50)=>
      ramDataOutBus(50), ramDataOutBus(49)=>ramDataOutBus(49), 
      ramDataOutBus(48)=>ramDataOutBus(48), ramDataOutBus(47)=>
      ramDataOutBus(47), ramDataOutBus(46)=>ramDataOutBus(46), 
      ramDataOutBus(45)=>ramDataOutBus(45), ramDataOutBus(44)=>
      ramDataOutBus(44), ramDataOutBus(43)=>ramDataOutBus(43), 
      ramDataOutBus(42)=>ramDataOutBus(42), ramDataOutBus(41)=>
      ramDataOutBus(41), ramDataOutBus(40)=>ramDataOutBus(40), 
      ramDataOutBus(39)=>ramDataOutBus(39), ramDataOutBus(38)=>
      ramDataOutBus(38), ramDataOutBus(37)=>ramDataOutBus(37), 
      ramDataOutBus(36)=>ramDataOutBus(36), ramDataOutBus(35)=>
      ramDataOutBus(35), ramDataOutBus(34)=>ramDataOutBus(34), 
      ramDataOutBus(33)=>ramDataOutBus(33), ramDataOutBus(32)=>
      ramDataOutBus(32), ramDataOutBus(31)=>ramDataOutBus(31), 
      ramDataOutBus(30)=>ramDataOutBus(30), ramDataOutBus(29)=>
      ramDataOutBus(29), ramDataOutBus(28)=>ramDataOutBus(28), 
      ramDataOutBus(27)=>ramDataOutBus(27), ramDataOutBus(26)=>
      ramDataOutBus(26), ramDataOutBus(25)=>ramDataOutBus(25), 
      ramDataOutBus(24)=>ramDataOutBus(24), ramDataOutBus(23)=>
      ramDataOutBus(23), ramDataOutBus(22)=>ramDataOutBus(22), 
      ramDataOutBus(21)=>ramDataOutBus(21), ramDataOutBus(20)=>
      ramDataOutBus(20), ramDataOutBus(19)=>ramDataOutBus(19), 
      ramDataOutBus(18)=>ramDataOutBus(18), ramDataOutBus(17)=>
      ramDataOutBus(17), ramDataOutBus(16)=>ramDataOutBus(16), 
      ramDataOutBus(15)=>ramDataOutBus(15), ramDataOutBus(14)=>
      ramDataOutBus(14), ramDataOutBus(13)=>ramDataOutBus(13), 
      ramDataOutBus(12)=>ramDataOutBus(12), ramDataOutBus(11)=>
      ramDataOutBus(11), ramDataOutBus(10)=>ramDataOutBus(10), 
      ramDataOutBus(9)=>ramDataOutBus(9), ramDataOutBus(8)=>ramDataOutBus(8), 
      ramDataOutBus(7)=>ramDataOutBus(7), ramDataOutBus(6)=>ramDataOutBus(6), 
      ramDataOutBus(5)=>ramDataOutBus(5), ramDataOutBus(4)=>ramDataOutBus(4), 
      ramDataOutBus(3)=>ramDataOutBus(3), ramDataOutBus(2)=>ramDataOutBus(2), 
      ramDataOutBus(1)=>ramDataOutBus(1), ramDataOutBus(0)=>ramDataOutBus(0), 
      ramWriteAddress(12)=>ramAddress(12), ramWriteAddress(11)=>
      ramAddress(11), ramWriteAddress(10)=>ramAddress(10), 
      ramWriteAddress(9)=>ramAddress(9), ramWriteAddress(8)=>ramAddress(8), 
      ramWriteAddress(7)=>ramAddress(7), ramWriteAddress(6)=>ramAddress(6), 
      ramWriteAddress(5)=>ramAddress(5), ramWriteAddress(4)=>ramAddress(4), 
      ramWriteAddress(3)=>ramAddress(3), ramWriteAddress(2)=>ramAddress(2), 
      ramWriteAddress(1)=>ramAddress(1), ramWriteAddress(0)=>ramAddress(0), 
      MFC=>MFC, writeComplete=>writeDone_EXMPLR, writeCompleteOne=>
      writeDoneOne);
   baseAddressCounter : Counter2_13 port map ( load(12)=>addressRegIn_12, 
      load(11)=>addressRegIn_11, load(10)=>addressRegIn_10, load(9)=>
      addressRegIn_9, load(8)=>addressRegIn_8, load(7)=>addressRegIn_7, 
      load(6)=>addressRegIn_6, load(5)=>addressRegIn_5, load(4)=>
      addressRegIn_4, load(3)=>addressRegIn_3, load(2)=>addressRegIn_2, 
      load(1)=>addressRegIn_1, load(0)=>addressRegIn_0, reset=>nextState_1, 
      clk=>baseAddressCounterClk, isLoad=>nx181, count(12)=>addressRegOut_12, 
      count(11)=>addressRegOut_11, count(10)=>addressRegOut_10, count(9)=>
      addressRegOut_9, count(8)=>addressRegOut_8, count(7)=>addressRegOut_7, 
      count(6)=>addressRegOut_6, count(5)=>addressRegOut_5, count(4)=>
      addressRegOut_4, count(3)=>addressRegOut_3, count(2)=>addressRegOut_2, 
      count(1)=>addressRegOut_1, count(0)=>addressRegOut_0);
   ix6 : fake_gnd port map ( Y=>nextState_1);
   ix75 : nor02_2x port map ( Y=>ramWrite_EXMPLR, A0=>nx102, A1=>nx104);
   ix103 : inv01 port map ( Y=>nx102, A=>write);
   ix82 : mux21 port map ( Y=>nx81, A0=>nx107, A1=>nx104, S0=>nx139);
   ix108 : nand02 port map ( Y=>nx107, A0=>nx109, A1=>currentState_3);
   ix110 : inv01 port map ( Y=>nx109, A=>switchRam);
   ix72 : mux21 port map ( Y=>nx71, A0=>nx113, A1=>nx145, S0=>nx139);
   ix114 : nand02 port map ( Y=>nx113, A0=>nx109, A1=>currentState_2);
   ix62 : mux21 port map ( Y=>nx61, A0=>nx117, A1=>nx143, S0=>nx139);
   ix118 : nand02 port map ( Y=>nx117, A0=>nx109, A1=>currentState_0);
   ix52 : mux21 port map ( Y=>nx51, A0=>nx121, A1=>nx137, S0=>nx139);
   ix122 : oai21 port map ( Y=>nx121, A0=>nx181, A1=>currentState_4, B0=>
      nx109);
   ix92 : oai21 port map ( Y=>nx91, A0=>nx125, A1=>nx44, B0=>nx109);
   reg_currentState_1 : dff port map ( Q=>OPEN, QB=>nx125, D=>nx91, CLK=>
      NOT_clk);
   ix128 : inv01 port map ( Y=>NOT_clk, A=>clk);
   ix45 : nand04 port map ( Y=>nx44, A0=>nx130, A1=>nx109, A2=>nx133, A3=>
      nx135);
   ix131 : nand02 port map ( Y=>nx130, A0=>writeDone_EXMPLR, A1=>
      currentState_4);
   reg_currentState_4 : dff port map ( Q=>currentState_4, QB=>nx104, D=>nx81, 
      CLK=>NOT_clk);
   ix134 : nand02 port map ( Y=>nx133, A0=>write, A1=>currentState_0);
   ix136 : nand02 port map ( Y=>nx135, A0=>nx104, A1=>nx137);
   reg_currentState_0 : dff port map ( Q=>currentState_0, QB=>nx137, D=>nx51, 
      CLK=>NOT_clk);
   ix140 : nor02_2x port map ( Y=>nx139, A0=>nx42, A1=>nx38);
   ix43 : nand02 port map ( Y=>nx42, A0=>nx130, A1=>nx109);
   ix39 : nand02 port map ( Y=>nx38, A0=>nx133, A1=>nx135);
   reg_currentState_2 : dff port map ( Q=>currentState_2, QB=>nx143, D=>nx61, 
      CLK=>NOT_clk);
   reg_currentState_3 : dff port map ( Q=>currentState_3, QB=>nx145, D=>nx71, 
      CLK=>NOT_clk);
   ix77 : nor02_2x port map ( Y=>dmaCountIn_0, A0=>nx148, A1=>nx143);
   ix149 : inv01 port map ( Y=>nx148, A=>outputSize(0));
   ix79 : nor02_2x port map ( Y=>dmaCountIn_1, A0=>nx151, A1=>nx143);
   ix152 : inv01 port map ( Y=>nx151, A=>outputSize(1));
   ix81 : nor02_2x port map ( Y=>dmaCountIn_2, A0=>nx154, A1=>nx143);
   ix155 : inv01 port map ( Y=>nx154, A=>outputSize(2));
   ix83 : nor02_2x port map ( Y=>dmaCountIn_3, A0=>nx157, A1=>nx143);
   ix158 : inv01 port map ( Y=>nx157, A=>outputSize(3));
   ix85 : nor02_2x port map ( Y=>dmaCountIn_4, A0=>nx160, A1=>nx143);
   ix161 : inv01 port map ( Y=>nx160, A=>outputSize(4));
   ix93 : mux21 port map ( Y=>baseAddressCounterClk, A0=>nx125, A1=>nx145, 
      S0=>clk);
   lat_addressRegIn_0 : latch port map ( Q=>addressRegIn_0, D=>
      ramBasedAddress(0), CLK=>nx181);
   lat_addressRegIn_1 : latch port map ( Q=>addressRegIn_1, D=>
      ramBasedAddress(1), CLK=>nx181);
   lat_addressRegIn_2 : latch port map ( Q=>addressRegIn_2, D=>
      ramBasedAddress(2), CLK=>nx181);
   lat_addressRegIn_3 : latch port map ( Q=>addressRegIn_3, D=>
      ramBasedAddress(3), CLK=>nx181);
   lat_addressRegIn_4 : latch port map ( Q=>addressRegIn_4, D=>
      ramBasedAddress(4), CLK=>nx181);
   lat_addressRegIn_5 : latch port map ( Q=>addressRegIn_5, D=>
      ramBasedAddress(5), CLK=>nx183);
   lat_addressRegIn_6 : latch port map ( Q=>addressRegIn_6, D=>
      ramBasedAddress(6), CLK=>nx183);
   lat_addressRegIn_7 : latch port map ( Q=>addressRegIn_7, D=>
      ramBasedAddress(7), CLK=>nx183);
   lat_addressRegIn_8 : latch port map ( Q=>addressRegIn_8, D=>
      ramBasedAddress(8), CLK=>nx183);
   lat_addressRegIn_9 : latch port map ( Q=>addressRegIn_9, D=>
      ramBasedAddress(9), CLK=>nx183);
   lat_addressRegIn_10 : latch port map ( Q=>addressRegIn_10, D=>
      ramBasedAddress(10), CLK=>nx183);
   lat_addressRegIn_11 : latch port map ( Q=>addressRegIn_11, D=>
      ramBasedAddress(11), CLK=>nx183);
   lat_addressRegIn_12 : latch port map ( Q=>addressRegIn_12, D=>
      ramBasedAddress(12), CLK=>nx185);
   ix180 : inv02 port map ( Y=>nx181, A=>nx125);
   ix182 : inv02 port map ( Y=>nx183, A=>nx125);
   ix184 : inv02 port map ( Y=>nx185, A=>nx125);
end WriteLogicArch_unfold_2859 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity DMAController is
   port (
      clk : IN std_logic ;
      reset : IN std_logic ;
      weightsInternalBus : OUT std_logic_vector (39 DOWNTO 0) ;
      windowInternalBus : INOUT std_logic_vector (79 DOWNTO 0) ;
      weightsRamAddress : OUT std_logic_vector (11 DOWNTO 0) ;
      windowRamAddress : OUT std_logic_vector (12 DOWNTO 0) ;
      weightsRamDataInBus : IN std_logic_vector (39 DOWNTO 0) ;
      windowRamDataInBus : IN std_logic_vector (79 DOWNTO 0) ;
      weightsRamRead : OUT std_logic ;
      windowRamRead : OUT std_logic ;
      windowRamWrite : OUT std_logic ;
      windowRamDataOutBus : OUT std_logic_vector (79 DOWNTO 0) ;
      MFCWindowRam : IN std_logic ;
      MFCWeightsRam : IN std_logic ;
      loadNextFilter : IN std_logic ;
      loadNextWindow : IN std_logic ;
      loadNextRow : IN std_logic ;
      loadWord : IN std_logic ;
      layerFinished : IN std_logic ;
      write : IN std_logic ;
      weightsSizeType : IN std_logic ;
      inputSize : IN std_logic_vector (12 DOWNTO 0) ;
      outputSize : IN std_logic_vector (12 DOWNTO 0) ;
      windowRamBaseAddress1 : IN std_logic_vector (12 DOWNTO 0) ;
      windowRamBaseAddress2 : IN std_logic_vector (12 DOWNTO 0) ;
      filterRamBaseAddress : IN std_logic_vector (11 DOWNTO 0) ;
      windowReadOne : OUT std_logic ;
      windowReadFinal : OUT std_logic ;
      weightsReadOne : OUT std_logic ;
      weightsReadFinal : OUT std_logic ;
      writeDoneAll : OUT std_logic ;
      writeDoneOne : OUT std_logic ;
      filterAluNumber : OUT std_logic_vector (2 DOWNTO 0) ;
      windowAluNumber : OUT std_logic_vector (2 DOWNTO 0)) ;
end DMAController ;

architecture DMAControllerArch of DMAController is
   component ReadLogic_13_80
      port (
         clk : IN std_logic ;
         resetState : IN std_logic ;
         switchRam : IN std_logic ;
         ramBasedAddress : IN std_logic_vector (12 DOWNTO 0) ;
         internalBus : OUT std_logic_vector (79 DOWNTO 0) ;
         ramDataInBus : IN std_logic_vector (79 DOWNTO 0) ;
         ramRead : OUT std_logic ;
         ramAddress : OUT std_logic_vector (12 DOWNTO 0) ;
         MFC : IN std_logic ;
         inputSize : IN std_logic_vector (12 DOWNTO 0) ;
         filterSize : IN std_logic_vector (12 DOWNTO 0) ;
         isFilter : IN std_logic ;
         loadNextWordList : IN std_logic ;
         loadWord : IN std_logic ;
         readOne : OUT std_logic ;
         readFinal : OUT std_logic ;
         aluNumber : OUT std_logic_vector (2 DOWNTO 0)) ;
   end component ;
   component ReadLogic_12_40
      port (
         clk : IN std_logic ;
         resetState : IN std_logic ;
         switchRam : IN std_logic ;
         ramBasedAddress : IN std_logic_vector (11 DOWNTO 0) ;
         internalBus : OUT std_logic_vector (39 DOWNTO 0) ;
         ramDataInBus : IN std_logic_vector (39 DOWNTO 0) ;
         ramRead : OUT std_logic ;
         ramAddress : OUT std_logic_vector (11 DOWNTO 0) ;
         MFC : IN std_logic ;
         inputSize : IN std_logic_vector (11 DOWNTO 0) ;
         filterSize : IN std_logic_vector (11 DOWNTO 0) ;
         isFilter : IN std_logic ;
         loadNextWordList : IN std_logic ;
         loadWord : IN std_logic ;
         readOne : OUT std_logic ;
         readFinal : OUT std_logic ;
         aluNumber : OUT std_logic_vector (2 DOWNTO 0)) ;
   end component ;
   component WriteLogic_13_80
      port (
         clk : IN std_logic ;
         resetState : IN std_logic ;
         switchRam : IN std_logic ;
         ramBasedAddress : IN std_logic_vector (12 DOWNTO 0) ;
         internalBus : IN std_logic_vector (79 DOWNTO 0) ;
         ramWrite : OUT std_logic ;
         ramDataOutBus : OUT std_logic_vector (79 DOWNTO 0) ;
         ramAddress : OUT std_logic_vector (12 DOWNTO 0) ;
         MFC : IN std_logic ;
         outputSize : IN std_logic_vector (12 DOWNTO 0) ;
         write : IN std_logic ;
         writeDone : OUT std_logic ;
         writeDoneOne : OUT std_logic) ;
   end component ;
   signal currentReadRamBaseAddress_12, currentReadRamBaseAddress_11, 
      currentReadRamBaseAddress_10, currentReadRamBaseAddress_9, 
      currentReadRamBaseAddress_8, currentReadRamBaseAddress_7, 
      currentReadRamBaseAddress_6, currentReadRamBaseAddress_5, 
      currentReadRamBaseAddress_4, currentReadRamBaseAddress_3, 
      currentReadRamBaseAddress_2, currentReadRamBaseAddress_1, 
      currentReadRamBaseAddress_0, currentWriteRamBaseAddress_12, 
      currentWriteRamBaseAddress_11, currentWriteRamBaseAddress_10, 
      currentWriteRamBaseAddress_9, currentWriteRamBaseAddress_8, 
      currentWriteRamBaseAddress_7, currentWriteRamBaseAddress_6, 
      currentWriteRamBaseAddress_5, currentWriteRamBaseAddress_4, 
      currentWriteRamBaseAddress_3, currentWriteRamBaseAddress_2, 
      currentWriteRamBaseAddress_1, currentWriteRamBaseAddress_0, 
      readLogicRamAddress_12, readLogicRamAddress_11, readLogicRamAddress_10, 
      readLogicRamAddress_9, readLogicRamAddress_8, readLogicRamAddress_7, 
      readLogicRamAddress_6, readLogicRamAddress_5, readLogicRamAddress_4, 
      readLogicRamAddress_3, readLogicRamAddress_2, readLogicRamAddress_1, 
      readLogicRamAddress_0, writeLogicRamAddress_12, 
      writeLogicRamAddress_11, writeLogicRamAddress_10, 
      writeLogicRamAddress_9, writeLogicRamAddress_8, writeLogicRamAddress_7, 
      writeLogicRamAddress_6, writeLogicRamAddress_5, writeLogicRamAddress_4, 
      writeLogicRamAddress_3, writeLogicRamAddress_2, writeLogicRamAddress_1, 
      writeLogicRamAddress_0, switchRam, NOT_weightsSizeType, 
      weightsSizeForWindow_0, resetLogics, ramBaseAddressSelector, 
      NOT_ramBaseAddressSelector, nx741, nx744, nx749, nx752, nx754, nx757, 
      nx759, nx762, nx764, nx767, nx769, nx772, nx774, nx777, nx779, nx782, 
      nx784, nx787, nx789, nx792, nx794, nx797, nx799, nx802, nx804, nx807, 
      nx809, nx812, nx814, nx817, nx819, nx822, nx824, nx827, nx829, nx832, 
      nx834, nx837, nx839, nx842, nx844, nx847, nx849, nx852, nx854, nx857, 
      nx859, nx862, nx864, nx867, nx869, nx872, nx874, nx877, nx879, nx884, 
      nx886, nx889, nx891, nx894, nx896, nx899, nx901, nx904, nx906, nx909, 
      nx911, nx914, nx916, nx919, nx921, nx924, nx926, nx929, nx931, nx934, 
      nx936, nx939, nx941, nx948, nx950, nx952, nx954, nx956, nx958, nx960, 
      nx962, nx964, nx966, nx968: std_logic ;

begin
   windowReadLogicEnt : ReadLogic_13_80 port map ( clk=>clk, resetState=>
      resetLogics, switchRam=>switchRam, ramBasedAddress(12)=>
      currentReadRamBaseAddress_12, ramBasedAddress(11)=>
      currentReadRamBaseAddress_11, ramBasedAddress(10)=>
      currentReadRamBaseAddress_10, ramBasedAddress(9)=>
      currentReadRamBaseAddress_9, ramBasedAddress(8)=>
      currentReadRamBaseAddress_8, ramBasedAddress(7)=>
      currentReadRamBaseAddress_7, ramBasedAddress(6)=>
      currentReadRamBaseAddress_6, ramBasedAddress(5)=>
      currentReadRamBaseAddress_5, ramBasedAddress(4)=>
      currentReadRamBaseAddress_4, ramBasedAddress(3)=>
      currentReadRamBaseAddress_3, ramBasedAddress(2)=>
      currentReadRamBaseAddress_2, ramBasedAddress(1)=>
      currentReadRamBaseAddress_1, ramBasedAddress(0)=>
      currentReadRamBaseAddress_0, internalBus(79)=>windowInternalBus(79), 
      internalBus(78)=>windowInternalBus(78), internalBus(77)=>
      windowInternalBus(77), internalBus(76)=>windowInternalBus(76), 
      internalBus(75)=>windowInternalBus(75), internalBus(74)=>
      windowInternalBus(74), internalBus(73)=>windowInternalBus(73), 
      internalBus(72)=>windowInternalBus(72), internalBus(71)=>
      windowInternalBus(71), internalBus(70)=>windowInternalBus(70), 
      internalBus(69)=>windowInternalBus(69), internalBus(68)=>
      windowInternalBus(68), internalBus(67)=>windowInternalBus(67), 
      internalBus(66)=>windowInternalBus(66), internalBus(65)=>
      windowInternalBus(65), internalBus(64)=>windowInternalBus(64), 
      internalBus(63)=>windowInternalBus(63), internalBus(62)=>
      windowInternalBus(62), internalBus(61)=>windowInternalBus(61), 
      internalBus(60)=>windowInternalBus(60), internalBus(59)=>
      windowInternalBus(59), internalBus(58)=>windowInternalBus(58), 
      internalBus(57)=>windowInternalBus(57), internalBus(56)=>
      windowInternalBus(56), internalBus(55)=>windowInternalBus(55), 
      internalBus(54)=>windowInternalBus(54), internalBus(53)=>
      windowInternalBus(53), internalBus(52)=>windowInternalBus(52), 
      internalBus(51)=>windowInternalBus(51), internalBus(50)=>
      windowInternalBus(50), internalBus(49)=>windowInternalBus(49), 
      internalBus(48)=>windowInternalBus(48), internalBus(47)=>
      windowInternalBus(47), internalBus(46)=>windowInternalBus(46), 
      internalBus(45)=>windowInternalBus(45), internalBus(44)=>
      windowInternalBus(44), internalBus(43)=>windowInternalBus(43), 
      internalBus(42)=>windowInternalBus(42), internalBus(41)=>
      windowInternalBus(41), internalBus(40)=>windowInternalBus(40), 
      internalBus(39)=>windowInternalBus(39), internalBus(38)=>
      windowInternalBus(38), internalBus(37)=>windowInternalBus(37), 
      internalBus(36)=>windowInternalBus(36), internalBus(35)=>
      windowInternalBus(35), internalBus(34)=>windowInternalBus(34), 
      internalBus(33)=>windowInternalBus(33), internalBus(32)=>
      windowInternalBus(32), internalBus(31)=>windowInternalBus(31), 
      internalBus(30)=>windowInternalBus(30), internalBus(29)=>
      windowInternalBus(29), internalBus(28)=>windowInternalBus(28), 
      internalBus(27)=>windowInternalBus(27), internalBus(26)=>
      windowInternalBus(26), internalBus(25)=>windowInternalBus(25), 
      internalBus(24)=>windowInternalBus(24), internalBus(23)=>
      windowInternalBus(23), internalBus(22)=>windowInternalBus(22), 
      internalBus(21)=>windowInternalBus(21), internalBus(20)=>
      windowInternalBus(20), internalBus(19)=>windowInternalBus(19), 
      internalBus(18)=>windowInternalBus(18), internalBus(17)=>
      windowInternalBus(17), internalBus(16)=>windowInternalBus(16), 
      internalBus(15)=>windowInternalBus(15), internalBus(14)=>
      windowInternalBus(14), internalBus(13)=>windowInternalBus(13), 
      internalBus(12)=>windowInternalBus(12), internalBus(11)=>
      windowInternalBus(11), internalBus(10)=>windowInternalBus(10), 
      internalBus(9)=>windowInternalBus(9), internalBus(8)=>
      windowInternalBus(8), internalBus(7)=>windowInternalBus(7), 
      internalBus(6)=>windowInternalBus(6), internalBus(5)=>
      windowInternalBus(5), internalBus(4)=>windowInternalBus(4), 
      internalBus(3)=>windowInternalBus(3), internalBus(2)=>
      windowInternalBus(2), internalBus(1)=>windowInternalBus(1), 
      internalBus(0)=>windowInternalBus(0), ramDataInBus(79)=>
      windowRamDataInBus(79), ramDataInBus(78)=>windowRamDataInBus(78), 
      ramDataInBus(77)=>windowRamDataInBus(77), ramDataInBus(76)=>
      windowRamDataInBus(76), ramDataInBus(75)=>windowRamDataInBus(75), 
      ramDataInBus(74)=>windowRamDataInBus(74), ramDataInBus(73)=>
      windowRamDataInBus(73), ramDataInBus(72)=>windowRamDataInBus(72), 
      ramDataInBus(71)=>windowRamDataInBus(71), ramDataInBus(70)=>
      windowRamDataInBus(70), ramDataInBus(69)=>windowRamDataInBus(69), 
      ramDataInBus(68)=>windowRamDataInBus(68), ramDataInBus(67)=>
      windowRamDataInBus(67), ramDataInBus(66)=>windowRamDataInBus(66), 
      ramDataInBus(65)=>windowRamDataInBus(65), ramDataInBus(64)=>
      windowRamDataInBus(64), ramDataInBus(63)=>windowRamDataInBus(63), 
      ramDataInBus(62)=>windowRamDataInBus(62), ramDataInBus(61)=>
      windowRamDataInBus(61), ramDataInBus(60)=>windowRamDataInBus(60), 
      ramDataInBus(59)=>windowRamDataInBus(59), ramDataInBus(58)=>
      windowRamDataInBus(58), ramDataInBus(57)=>windowRamDataInBus(57), 
      ramDataInBus(56)=>windowRamDataInBus(56), ramDataInBus(55)=>
      windowRamDataInBus(55), ramDataInBus(54)=>windowRamDataInBus(54), 
      ramDataInBus(53)=>windowRamDataInBus(53), ramDataInBus(52)=>
      windowRamDataInBus(52), ramDataInBus(51)=>windowRamDataInBus(51), 
      ramDataInBus(50)=>windowRamDataInBus(50), ramDataInBus(49)=>
      windowRamDataInBus(49), ramDataInBus(48)=>windowRamDataInBus(48), 
      ramDataInBus(47)=>windowRamDataInBus(47), ramDataInBus(46)=>
      windowRamDataInBus(46), ramDataInBus(45)=>windowRamDataInBus(45), 
      ramDataInBus(44)=>windowRamDataInBus(44), ramDataInBus(43)=>
      windowRamDataInBus(43), ramDataInBus(42)=>windowRamDataInBus(42), 
      ramDataInBus(41)=>windowRamDataInBus(41), ramDataInBus(40)=>
      windowRamDataInBus(40), ramDataInBus(39)=>windowRamDataInBus(39), 
      ramDataInBus(38)=>windowRamDataInBus(38), ramDataInBus(37)=>
      windowRamDataInBus(37), ramDataInBus(36)=>windowRamDataInBus(36), 
      ramDataInBus(35)=>windowRamDataInBus(35), ramDataInBus(34)=>
      windowRamDataInBus(34), ramDataInBus(33)=>windowRamDataInBus(33), 
      ramDataInBus(32)=>windowRamDataInBus(32), ramDataInBus(31)=>
      windowRamDataInBus(31), ramDataInBus(30)=>windowRamDataInBus(30), 
      ramDataInBus(29)=>windowRamDataInBus(29), ramDataInBus(28)=>
      windowRamDataInBus(28), ramDataInBus(27)=>windowRamDataInBus(27), 
      ramDataInBus(26)=>windowRamDataInBus(26), ramDataInBus(25)=>
      windowRamDataInBus(25), ramDataInBus(24)=>windowRamDataInBus(24), 
      ramDataInBus(23)=>windowRamDataInBus(23), ramDataInBus(22)=>
      windowRamDataInBus(22), ramDataInBus(21)=>windowRamDataInBus(21), 
      ramDataInBus(20)=>windowRamDataInBus(20), ramDataInBus(19)=>
      windowRamDataInBus(19), ramDataInBus(18)=>windowRamDataInBus(18), 
      ramDataInBus(17)=>windowRamDataInBus(17), ramDataInBus(16)=>
      windowRamDataInBus(16), ramDataInBus(15)=>windowRamDataInBus(15), 
      ramDataInBus(14)=>windowRamDataInBus(14), ramDataInBus(13)=>
      windowRamDataInBus(13), ramDataInBus(12)=>windowRamDataInBus(12), 
      ramDataInBus(11)=>windowRamDataInBus(11), ramDataInBus(10)=>
      windowRamDataInBus(10), ramDataInBus(9)=>windowRamDataInBus(9), 
      ramDataInBus(8)=>windowRamDataInBus(8), ramDataInBus(7)=>
      windowRamDataInBus(7), ramDataInBus(6)=>windowRamDataInBus(6), 
      ramDataInBus(5)=>windowRamDataInBus(5), ramDataInBus(4)=>
      windowRamDataInBus(4), ramDataInBus(3)=>windowRamDataInBus(3), 
      ramDataInBus(2)=>windowRamDataInBus(2), ramDataInBus(1)=>
      windowRamDataInBus(1), ramDataInBus(0)=>windowRamDataInBus(0), ramRead
      =>windowRamRead, ramAddress(12)=>readLogicRamAddress_12, 
      ramAddress(11)=>readLogicRamAddress_11, ramAddress(10)=>
      readLogicRamAddress_10, ramAddress(9)=>readLogicRamAddress_9, 
      ramAddress(8)=>readLogicRamAddress_8, ramAddress(7)=>
      readLogicRamAddress_7, ramAddress(6)=>readLogicRamAddress_6, 
      ramAddress(5)=>readLogicRamAddress_5, ramAddress(4)=>
      readLogicRamAddress_4, ramAddress(3)=>readLogicRamAddress_3, 
      ramAddress(2)=>readLogicRamAddress_2, ramAddress(1)=>
      readLogicRamAddress_1, ramAddress(0)=>readLogicRamAddress_0, MFC=>
      MFCWindowRam, inputSize(12)=>inputSize(12), inputSize(11)=>
      inputSize(11), inputSize(10)=>inputSize(10), inputSize(9)=>
      inputSize(9), inputSize(8)=>inputSize(8), inputSize(7)=>inputSize(7), 
      inputSize(6)=>inputSize(6), inputSize(5)=>inputSize(5), inputSize(4)=>
      inputSize(4), inputSize(3)=>inputSize(3), inputSize(2)=>inputSize(2), 
      inputSize(1)=>inputSize(1), inputSize(0)=>inputSize(0), filterSize(12)
      =>resetLogics, filterSize(11)=>resetLogics, filterSize(10)=>
      resetLogics, filterSize(9)=>resetLogics, filterSize(8)=>resetLogics, 
      filterSize(7)=>resetLogics, filterSize(6)=>resetLogics, filterSize(5)
      =>resetLogics, filterSize(4)=>resetLogics, filterSize(3)=>resetLogics, 
      filterSize(2)=>weightsSizeType, filterSize(1)=>NOT_weightsSizeType, 
      filterSize(0)=>weightsSizeForWindow_0, isFilter=>resetLogics, 
      loadNextWordList=>loadNextWindow, loadWord=>loadNextRow, readOne=>
      windowReadOne, readFinal=>windowReadFinal, aluNumber(2)=>
      windowAluNumber(2), aluNumber(1)=>windowAluNumber(1), aluNumber(0)=>
      windowAluNumber(0));
   filterReadLogicEnt : ReadLogic_12_40 port map ( clk=>clk, resetState=>
      resetLogics, switchRam=>reset, ramBasedAddress(11)=>
      filterRamBaseAddress(11), ramBasedAddress(10)=>
      filterRamBaseAddress(10), ramBasedAddress(9)=>filterRamBaseAddress(9), 
      ramBasedAddress(8)=>filterRamBaseAddress(8), ramBasedAddress(7)=>
      filterRamBaseAddress(7), ramBasedAddress(6)=>filterRamBaseAddress(6), 
      ramBasedAddress(5)=>filterRamBaseAddress(5), ramBasedAddress(4)=>
      filterRamBaseAddress(4), ramBasedAddress(3)=>filterRamBaseAddress(3), 
      ramBasedAddress(2)=>filterRamBaseAddress(2), ramBasedAddress(1)=>
      filterRamBaseAddress(1), ramBasedAddress(0)=>filterRamBaseAddress(0), 
      internalBus(39)=>weightsInternalBus(39), internalBus(38)=>
      weightsInternalBus(38), internalBus(37)=>weightsInternalBus(37), 
      internalBus(36)=>weightsInternalBus(36), internalBus(35)=>
      weightsInternalBus(35), internalBus(34)=>weightsInternalBus(34), 
      internalBus(33)=>weightsInternalBus(33), internalBus(32)=>
      weightsInternalBus(32), internalBus(31)=>weightsInternalBus(31), 
      internalBus(30)=>weightsInternalBus(30), internalBus(29)=>
      weightsInternalBus(29), internalBus(28)=>weightsInternalBus(28), 
      internalBus(27)=>weightsInternalBus(27), internalBus(26)=>
      weightsInternalBus(26), internalBus(25)=>weightsInternalBus(25), 
      internalBus(24)=>weightsInternalBus(24), internalBus(23)=>
      weightsInternalBus(23), internalBus(22)=>weightsInternalBus(22), 
      internalBus(21)=>weightsInternalBus(21), internalBus(20)=>
      weightsInternalBus(20), internalBus(19)=>weightsInternalBus(19), 
      internalBus(18)=>weightsInternalBus(18), internalBus(17)=>
      weightsInternalBus(17), internalBus(16)=>weightsInternalBus(16), 
      internalBus(15)=>weightsInternalBus(15), internalBus(14)=>
      weightsInternalBus(14), internalBus(13)=>weightsInternalBus(13), 
      internalBus(12)=>weightsInternalBus(12), internalBus(11)=>
      weightsInternalBus(11), internalBus(10)=>weightsInternalBus(10), 
      internalBus(9)=>weightsInternalBus(9), internalBus(8)=>
      weightsInternalBus(8), internalBus(7)=>weightsInternalBus(7), 
      internalBus(6)=>weightsInternalBus(6), internalBus(5)=>
      weightsInternalBus(5), internalBus(4)=>weightsInternalBus(4), 
      internalBus(3)=>weightsInternalBus(3), internalBus(2)=>
      weightsInternalBus(2), internalBus(1)=>weightsInternalBus(1), 
      internalBus(0)=>weightsInternalBus(0), ramDataInBus(39)=>
      weightsRamDataInBus(39), ramDataInBus(38)=>weightsRamDataInBus(38), 
      ramDataInBus(37)=>weightsRamDataInBus(37), ramDataInBus(36)=>
      weightsRamDataInBus(36), ramDataInBus(35)=>weightsRamDataInBus(35), 
      ramDataInBus(34)=>weightsRamDataInBus(34), ramDataInBus(33)=>
      weightsRamDataInBus(33), ramDataInBus(32)=>weightsRamDataInBus(32), 
      ramDataInBus(31)=>weightsRamDataInBus(31), ramDataInBus(30)=>
      weightsRamDataInBus(30), ramDataInBus(29)=>weightsRamDataInBus(29), 
      ramDataInBus(28)=>weightsRamDataInBus(28), ramDataInBus(27)=>
      weightsRamDataInBus(27), ramDataInBus(26)=>weightsRamDataInBus(26), 
      ramDataInBus(25)=>weightsRamDataInBus(25), ramDataInBus(24)=>
      weightsRamDataInBus(24), ramDataInBus(23)=>weightsRamDataInBus(23), 
      ramDataInBus(22)=>weightsRamDataInBus(22), ramDataInBus(21)=>
      weightsRamDataInBus(21), ramDataInBus(20)=>weightsRamDataInBus(20), 
      ramDataInBus(19)=>weightsRamDataInBus(19), ramDataInBus(18)=>
      weightsRamDataInBus(18), ramDataInBus(17)=>weightsRamDataInBus(17), 
      ramDataInBus(16)=>weightsRamDataInBus(16), ramDataInBus(15)=>
      weightsRamDataInBus(15), ramDataInBus(14)=>weightsRamDataInBus(14), 
      ramDataInBus(13)=>weightsRamDataInBus(13), ramDataInBus(12)=>
      weightsRamDataInBus(12), ramDataInBus(11)=>weightsRamDataInBus(11), 
      ramDataInBus(10)=>weightsRamDataInBus(10), ramDataInBus(9)=>
      weightsRamDataInBus(9), ramDataInBus(8)=>weightsRamDataInBus(8), 
      ramDataInBus(7)=>weightsRamDataInBus(7), ramDataInBus(6)=>
      weightsRamDataInBus(6), ramDataInBus(5)=>weightsRamDataInBus(5), 
      ramDataInBus(4)=>weightsRamDataInBus(4), ramDataInBus(3)=>
      weightsRamDataInBus(3), ramDataInBus(2)=>weightsRamDataInBus(2), 
      ramDataInBus(1)=>weightsRamDataInBus(1), ramDataInBus(0)=>
      weightsRamDataInBus(0), ramRead=>weightsRamRead, ramAddress(11)=>
      weightsRamAddress(11), ramAddress(10)=>weightsRamAddress(10), 
      ramAddress(9)=>weightsRamAddress(9), ramAddress(8)=>
      weightsRamAddress(8), ramAddress(7)=>weightsRamAddress(7), 
      ramAddress(6)=>weightsRamAddress(6), ramAddress(5)=>
      weightsRamAddress(5), ramAddress(4)=>weightsRamAddress(4), 
      ramAddress(3)=>weightsRamAddress(3), ramAddress(2)=>
      weightsRamAddress(2), ramAddress(1)=>weightsRamAddress(1), 
      ramAddress(0)=>weightsRamAddress(0), MFC=>MFCWeightsRam, inputSize(11)
      =>resetLogics, inputSize(10)=>resetLogics, inputSize(9)=>resetLogics, 
      inputSize(8)=>resetLogics, inputSize(7)=>resetLogics, inputSize(6)=>
      resetLogics, inputSize(5)=>resetLogics, inputSize(4)=>resetLogics, 
      inputSize(3)=>resetLogics, inputSize(2)=>weightsSizeType, inputSize(1)
      =>NOT_weightsSizeType, inputSize(0)=>weightsSizeForWindow_0, 
      filterSize(11)=>resetLogics, filterSize(10)=>resetLogics, 
      filterSize(9)=>resetLogics, filterSize(8)=>resetLogics, filterSize(7)
      =>resetLogics, filterSize(6)=>resetLogics, filterSize(5)=>resetLogics, 
      filterSize(4)=>resetLogics, filterSize(3)=>resetLogics, filterSize(2)
      =>resetLogics, filterSize(1)=>resetLogics, filterSize(0)=>
      weightsSizeForWindow_0, isFilter=>weightsSizeForWindow_0, 
      loadNextWordList=>loadNextFilter, loadWord=>loadWord, readOne=>
      weightsReadOne, readFinal=>weightsReadFinal, aluNumber(2)=>
      filterAluNumber(2), aluNumber(1)=>filterAluNumber(1), aluNumber(0)=>
      filterAluNumber(0));
   writeLogicEnt : WriteLogic_13_80 port map ( clk=>clk, resetState=>
      resetLogics, switchRam=>switchRam, ramBasedAddress(12)=>
      currentWriteRamBaseAddress_12, ramBasedAddress(11)=>
      currentWriteRamBaseAddress_11, ramBasedAddress(10)=>
      currentWriteRamBaseAddress_10, ramBasedAddress(9)=>
      currentWriteRamBaseAddress_9, ramBasedAddress(8)=>
      currentWriteRamBaseAddress_8, ramBasedAddress(7)=>
      currentWriteRamBaseAddress_7, ramBasedAddress(6)=>
      currentWriteRamBaseAddress_6, ramBasedAddress(5)=>
      currentWriteRamBaseAddress_5, ramBasedAddress(4)=>
      currentWriteRamBaseAddress_4, ramBasedAddress(3)=>
      currentWriteRamBaseAddress_3, ramBasedAddress(2)=>
      currentWriteRamBaseAddress_2, ramBasedAddress(1)=>
      currentWriteRamBaseAddress_1, ramBasedAddress(0)=>
      currentWriteRamBaseAddress_0, internalBus(79)=>windowInternalBus(79), 
      internalBus(78)=>windowInternalBus(78), internalBus(77)=>
      windowInternalBus(77), internalBus(76)=>windowInternalBus(76), 
      internalBus(75)=>windowInternalBus(75), internalBus(74)=>
      windowInternalBus(74), internalBus(73)=>windowInternalBus(73), 
      internalBus(72)=>windowInternalBus(72), internalBus(71)=>
      windowInternalBus(71), internalBus(70)=>windowInternalBus(70), 
      internalBus(69)=>windowInternalBus(69), internalBus(68)=>
      windowInternalBus(68), internalBus(67)=>windowInternalBus(67), 
      internalBus(66)=>windowInternalBus(66), internalBus(65)=>
      windowInternalBus(65), internalBus(64)=>windowInternalBus(64), 
      internalBus(63)=>windowInternalBus(63), internalBus(62)=>
      windowInternalBus(62), internalBus(61)=>windowInternalBus(61), 
      internalBus(60)=>windowInternalBus(60), internalBus(59)=>
      windowInternalBus(59), internalBus(58)=>windowInternalBus(58), 
      internalBus(57)=>windowInternalBus(57), internalBus(56)=>
      windowInternalBus(56), internalBus(55)=>windowInternalBus(55), 
      internalBus(54)=>windowInternalBus(54), internalBus(53)=>
      windowInternalBus(53), internalBus(52)=>windowInternalBus(52), 
      internalBus(51)=>windowInternalBus(51), internalBus(50)=>
      windowInternalBus(50), internalBus(49)=>windowInternalBus(49), 
      internalBus(48)=>windowInternalBus(48), internalBus(47)=>
      windowInternalBus(47), internalBus(46)=>windowInternalBus(46), 
      internalBus(45)=>windowInternalBus(45), internalBus(44)=>
      windowInternalBus(44), internalBus(43)=>windowInternalBus(43), 
      internalBus(42)=>windowInternalBus(42), internalBus(41)=>
      windowInternalBus(41), internalBus(40)=>windowInternalBus(40), 
      internalBus(39)=>windowInternalBus(39), internalBus(38)=>
      windowInternalBus(38), internalBus(37)=>windowInternalBus(37), 
      internalBus(36)=>windowInternalBus(36), internalBus(35)=>
      windowInternalBus(35), internalBus(34)=>windowInternalBus(34), 
      internalBus(33)=>windowInternalBus(33), internalBus(32)=>
      windowInternalBus(32), internalBus(31)=>windowInternalBus(31), 
      internalBus(30)=>windowInternalBus(30), internalBus(29)=>
      windowInternalBus(29), internalBus(28)=>windowInternalBus(28), 
      internalBus(27)=>windowInternalBus(27), internalBus(26)=>
      windowInternalBus(26), internalBus(25)=>windowInternalBus(25), 
      internalBus(24)=>windowInternalBus(24), internalBus(23)=>
      windowInternalBus(23), internalBus(22)=>windowInternalBus(22), 
      internalBus(21)=>windowInternalBus(21), internalBus(20)=>
      windowInternalBus(20), internalBus(19)=>windowInternalBus(19), 
      internalBus(18)=>windowInternalBus(18), internalBus(17)=>
      windowInternalBus(17), internalBus(16)=>windowInternalBus(16), 
      internalBus(15)=>windowInternalBus(15), internalBus(14)=>
      windowInternalBus(14), internalBus(13)=>windowInternalBus(13), 
      internalBus(12)=>windowInternalBus(12), internalBus(11)=>
      windowInternalBus(11), internalBus(10)=>windowInternalBus(10), 
      internalBus(9)=>windowInternalBus(9), internalBus(8)=>
      windowInternalBus(8), internalBus(7)=>windowInternalBus(7), 
      internalBus(6)=>windowInternalBus(6), internalBus(5)=>
      windowInternalBus(5), internalBus(4)=>windowInternalBus(4), 
      internalBus(3)=>windowInternalBus(3), internalBus(2)=>
      windowInternalBus(2), internalBus(1)=>windowInternalBus(1), 
      internalBus(0)=>windowInternalBus(0), ramWrite=>windowRamWrite, 
      ramDataOutBus(79)=>windowRamDataOutBus(79), ramDataOutBus(78)=>
      windowRamDataOutBus(78), ramDataOutBus(77)=>windowRamDataOutBus(77), 
      ramDataOutBus(76)=>windowRamDataOutBus(76), ramDataOutBus(75)=>
      windowRamDataOutBus(75), ramDataOutBus(74)=>windowRamDataOutBus(74), 
      ramDataOutBus(73)=>windowRamDataOutBus(73), ramDataOutBus(72)=>
      windowRamDataOutBus(72), ramDataOutBus(71)=>windowRamDataOutBus(71), 
      ramDataOutBus(70)=>windowRamDataOutBus(70), ramDataOutBus(69)=>
      windowRamDataOutBus(69), ramDataOutBus(68)=>windowRamDataOutBus(68), 
      ramDataOutBus(67)=>windowRamDataOutBus(67), ramDataOutBus(66)=>
      windowRamDataOutBus(66), ramDataOutBus(65)=>windowRamDataOutBus(65), 
      ramDataOutBus(64)=>windowRamDataOutBus(64), ramDataOutBus(63)=>
      windowRamDataOutBus(63), ramDataOutBus(62)=>windowRamDataOutBus(62), 
      ramDataOutBus(61)=>windowRamDataOutBus(61), ramDataOutBus(60)=>
      windowRamDataOutBus(60), ramDataOutBus(59)=>windowRamDataOutBus(59), 
      ramDataOutBus(58)=>windowRamDataOutBus(58), ramDataOutBus(57)=>
      windowRamDataOutBus(57), ramDataOutBus(56)=>windowRamDataOutBus(56), 
      ramDataOutBus(55)=>windowRamDataOutBus(55), ramDataOutBus(54)=>
      windowRamDataOutBus(54), ramDataOutBus(53)=>windowRamDataOutBus(53), 
      ramDataOutBus(52)=>windowRamDataOutBus(52), ramDataOutBus(51)=>
      windowRamDataOutBus(51), ramDataOutBus(50)=>windowRamDataOutBus(50), 
      ramDataOutBus(49)=>windowRamDataOutBus(49), ramDataOutBus(48)=>
      windowRamDataOutBus(48), ramDataOutBus(47)=>windowRamDataOutBus(47), 
      ramDataOutBus(46)=>windowRamDataOutBus(46), ramDataOutBus(45)=>
      windowRamDataOutBus(45), ramDataOutBus(44)=>windowRamDataOutBus(44), 
      ramDataOutBus(43)=>windowRamDataOutBus(43), ramDataOutBus(42)=>
      windowRamDataOutBus(42), ramDataOutBus(41)=>windowRamDataOutBus(41), 
      ramDataOutBus(40)=>windowRamDataOutBus(40), ramDataOutBus(39)=>
      windowRamDataOutBus(39), ramDataOutBus(38)=>windowRamDataOutBus(38), 
      ramDataOutBus(37)=>windowRamDataOutBus(37), ramDataOutBus(36)=>
      windowRamDataOutBus(36), ramDataOutBus(35)=>windowRamDataOutBus(35), 
      ramDataOutBus(34)=>windowRamDataOutBus(34), ramDataOutBus(33)=>
      windowRamDataOutBus(33), ramDataOutBus(32)=>windowRamDataOutBus(32), 
      ramDataOutBus(31)=>windowRamDataOutBus(31), ramDataOutBus(30)=>
      windowRamDataOutBus(30), ramDataOutBus(29)=>windowRamDataOutBus(29), 
      ramDataOutBus(28)=>windowRamDataOutBus(28), ramDataOutBus(27)=>
      windowRamDataOutBus(27), ramDataOutBus(26)=>windowRamDataOutBus(26), 
      ramDataOutBus(25)=>windowRamDataOutBus(25), ramDataOutBus(24)=>
      windowRamDataOutBus(24), ramDataOutBus(23)=>windowRamDataOutBus(23), 
      ramDataOutBus(22)=>windowRamDataOutBus(22), ramDataOutBus(21)=>
      windowRamDataOutBus(21), ramDataOutBus(20)=>windowRamDataOutBus(20), 
      ramDataOutBus(19)=>windowRamDataOutBus(19), ramDataOutBus(18)=>
      windowRamDataOutBus(18), ramDataOutBus(17)=>windowRamDataOutBus(17), 
      ramDataOutBus(16)=>windowRamDataOutBus(16), ramDataOutBus(15)=>
      windowRamDataOutBus(15), ramDataOutBus(14)=>windowRamDataOutBus(14), 
      ramDataOutBus(13)=>windowRamDataOutBus(13), ramDataOutBus(12)=>
      windowRamDataOutBus(12), ramDataOutBus(11)=>windowRamDataOutBus(11), 
      ramDataOutBus(10)=>windowRamDataOutBus(10), ramDataOutBus(9)=>
      windowRamDataOutBus(9), ramDataOutBus(8)=>windowRamDataOutBus(8), 
      ramDataOutBus(7)=>windowRamDataOutBus(7), ramDataOutBus(6)=>
      windowRamDataOutBus(6), ramDataOutBus(5)=>windowRamDataOutBus(5), 
      ramDataOutBus(4)=>windowRamDataOutBus(4), ramDataOutBus(3)=>
      windowRamDataOutBus(3), ramDataOutBus(2)=>windowRamDataOutBus(2), 
      ramDataOutBus(1)=>windowRamDataOutBus(1), ramDataOutBus(0)=>
      windowRamDataOutBus(0), ramAddress(12)=>writeLogicRamAddress_12, 
      ramAddress(11)=>writeLogicRamAddress_11, ramAddress(10)=>
      writeLogicRamAddress_10, ramAddress(9)=>writeLogicRamAddress_9, 
      ramAddress(8)=>writeLogicRamAddress_8, ramAddress(7)=>
      writeLogicRamAddress_7, ramAddress(6)=>writeLogicRamAddress_6, 
      ramAddress(5)=>writeLogicRamAddress_5, ramAddress(4)=>
      writeLogicRamAddress_4, ramAddress(3)=>writeLogicRamAddress_3, 
      ramAddress(2)=>writeLogicRamAddress_2, ramAddress(1)=>
      writeLogicRamAddress_1, ramAddress(0)=>writeLogicRamAddress_0, MFC=>
      MFCWindowRam, outputSize(12)=>outputSize(12), outputSize(11)=>
      outputSize(11), outputSize(10)=>outputSize(10), outputSize(9)=>
      outputSize(9), outputSize(8)=>outputSize(8), outputSize(7)=>
      outputSize(7), outputSize(6)=>outputSize(6), outputSize(5)=>
      outputSize(5), outputSize(4)=>outputSize(4), outputSize(3)=>
      outputSize(3), outputSize(2)=>outputSize(2), outputSize(1)=>
      outputSize(1), outputSize(0)=>outputSize(0), write=>write, writeDone=>
      writeDoneAll, writeDoneOne=>writeDoneOne);
   ix678 : fake_gnd port map ( Y=>resetLogics);
   ix676 : fake_vcc port map ( Y=>weightsSizeForWindow_0);
   ix739 : inv01 port map ( Y=>NOT_weightsSizeType, A=>weightsSizeType);
   ix319 : inv01 port map ( Y=>switchRam, A=>nx741);
   ix742 : nor02_2x port map ( Y=>nx741, A0=>reset, A1=>layerFinished);
   ix117 : nand02 port map ( Y=>currentWriteRamBaseAddress_0, A0=>nx744, A1
      =>nx749);
   ix745 : nand02 port map ( Y=>nx744, A0=>windowRamBaseAddress1(0), A1=>
      nx948);
   reg_ramBaseAddressSelector : dffr port map ( Q=>ramBaseAddressSelector, 
      QB=>NOT_ramBaseAddressSelector, D=>NOT_ramBaseAddressSelector, CLK=>
      layerFinished, R=>reset);
   ix750 : nand02 port map ( Y=>nx749, A0=>windowRamBaseAddress2(0), A1=>
      nx956);
   ix125 : nand02 port map ( Y=>currentWriteRamBaseAddress_1, A0=>nx752, A1
      =>nx754);
   ix753 : nand02 port map ( Y=>nx752, A0=>windowRamBaseAddress1(1), A1=>
      nx948);
   ix755 : nand02 port map ( Y=>nx754, A0=>windowRamBaseAddress2(1), A1=>
      nx956);
   ix133 : nand02 port map ( Y=>currentWriteRamBaseAddress_2, A0=>nx757, A1
      =>nx759);
   ix758 : nand02 port map ( Y=>nx757, A0=>windowRamBaseAddress1(2), A1=>
      nx948);
   ix760 : nand02 port map ( Y=>nx759, A0=>windowRamBaseAddress2(2), A1=>
      nx956);
   ix141 : nand02 port map ( Y=>currentWriteRamBaseAddress_3, A0=>nx762, A1
      =>nx764);
   ix763 : nand02 port map ( Y=>nx762, A0=>windowRamBaseAddress1(3), A1=>
      nx948);
   ix765 : nand02 port map ( Y=>nx764, A0=>windowRamBaseAddress2(3), A1=>
      nx956);
   ix149 : nand02 port map ( Y=>currentWriteRamBaseAddress_4, A0=>nx767, A1
      =>nx769);
   ix768 : nand02 port map ( Y=>nx767, A0=>windowRamBaseAddress1(4), A1=>
      nx948);
   ix770 : nand02 port map ( Y=>nx769, A0=>windowRamBaseAddress2(4), A1=>
      nx956);
   ix157 : nand02 port map ( Y=>currentWriteRamBaseAddress_5, A0=>nx772, A1
      =>nx774);
   ix773 : nand02 port map ( Y=>nx772, A0=>windowRamBaseAddress1(5), A1=>
      nx948);
   ix775 : nand02 port map ( Y=>nx774, A0=>windowRamBaseAddress2(5), A1=>
      nx956);
   ix165 : nand02 port map ( Y=>currentWriteRamBaseAddress_6, A0=>nx777, A1
      =>nx779);
   ix778 : nand02 port map ( Y=>nx777, A0=>windowRamBaseAddress1(6), A1=>
      nx948);
   ix780 : nand02 port map ( Y=>nx779, A0=>windowRamBaseAddress2(6), A1=>
      nx956);
   ix173 : nand02 port map ( Y=>currentWriteRamBaseAddress_7, A0=>nx782, A1
      =>nx784);
   ix783 : nand02 port map ( Y=>nx782, A0=>windowRamBaseAddress1(7), A1=>
      nx950);
   ix785 : nand02 port map ( Y=>nx784, A0=>windowRamBaseAddress2(7), A1=>
      nx958);
   ix181 : nand02 port map ( Y=>currentWriteRamBaseAddress_8, A0=>nx787, A1
      =>nx789);
   ix788 : nand02 port map ( Y=>nx787, A0=>windowRamBaseAddress1(8), A1=>
      nx950);
   ix790 : nand02 port map ( Y=>nx789, A0=>windowRamBaseAddress2(8), A1=>
      nx958);
   ix189 : nand02 port map ( Y=>currentWriteRamBaseAddress_9, A0=>nx792, A1
      =>nx794);
   ix793 : nand02 port map ( Y=>nx792, A0=>windowRamBaseAddress1(9), A1=>
      nx950);
   ix795 : nand02 port map ( Y=>nx794, A0=>windowRamBaseAddress2(9), A1=>
      nx958);
   ix197 : nand02 port map ( Y=>currentWriteRamBaseAddress_10, A0=>nx797, A1
      =>nx799);
   ix798 : nand02 port map ( Y=>nx797, A0=>windowRamBaseAddress1(10), A1=>
      nx950);
   ix800 : nand02 port map ( Y=>nx799, A0=>windowRamBaseAddress2(10), A1=>
      nx958);
   ix205 : nand02 port map ( Y=>currentWriteRamBaseAddress_11, A0=>nx802, A1
      =>nx804);
   ix803 : nand02 port map ( Y=>nx802, A0=>windowRamBaseAddress1(11), A1=>
      nx950);
   ix805 : nand02 port map ( Y=>nx804, A0=>windowRamBaseAddress2(11), A1=>
      nx958);
   ix213 : nand02 port map ( Y=>currentWriteRamBaseAddress_12, A0=>nx807, A1
      =>nx809);
   ix808 : nand02 port map ( Y=>nx807, A0=>windowRamBaseAddress1(12), A1=>
      nx950);
   ix810 : nand02 port map ( Y=>nx809, A0=>windowRamBaseAddress2(12), A1=>
      nx958);
   ix221 : nand02 port map ( Y=>currentReadRamBaseAddress_0, A0=>nx812, A1=>
      nx814);
   ix813 : nand02 port map ( Y=>nx812, A0=>windowRamBaseAddress2(0), A1=>
      nx950);
   ix815 : nand02 port map ( Y=>nx814, A0=>windowRamBaseAddress1(0), A1=>
      nx958);
   ix229 : nand02 port map ( Y=>currentReadRamBaseAddress_1, A0=>nx817, A1=>
      nx819);
   ix818 : nand02 port map ( Y=>nx817, A0=>windowRamBaseAddress2(1), A1=>
      nx952);
   ix820 : nand02 port map ( Y=>nx819, A0=>windowRamBaseAddress1(1), A1=>
      nx960);
   ix237 : nand02 port map ( Y=>currentReadRamBaseAddress_2, A0=>nx822, A1=>
      nx824);
   ix823 : nand02 port map ( Y=>nx822, A0=>windowRamBaseAddress2(2), A1=>
      nx952);
   ix825 : nand02 port map ( Y=>nx824, A0=>windowRamBaseAddress1(2), A1=>
      nx960);
   ix245 : nand02 port map ( Y=>currentReadRamBaseAddress_3, A0=>nx827, A1=>
      nx829);
   ix828 : nand02 port map ( Y=>nx827, A0=>windowRamBaseAddress2(3), A1=>
      nx952);
   ix830 : nand02 port map ( Y=>nx829, A0=>windowRamBaseAddress1(3), A1=>
      nx960);
   ix253 : nand02 port map ( Y=>currentReadRamBaseAddress_4, A0=>nx832, A1=>
      nx834);
   ix833 : nand02 port map ( Y=>nx832, A0=>windowRamBaseAddress2(4), A1=>
      nx952);
   ix835 : nand02 port map ( Y=>nx834, A0=>windowRamBaseAddress1(4), A1=>
      nx960);
   ix261 : nand02 port map ( Y=>currentReadRamBaseAddress_5, A0=>nx837, A1=>
      nx839);
   ix838 : nand02 port map ( Y=>nx837, A0=>windowRamBaseAddress2(5), A1=>
      nx952);
   ix840 : nand02 port map ( Y=>nx839, A0=>windowRamBaseAddress1(5), A1=>
      nx960);
   ix269 : nand02 port map ( Y=>currentReadRamBaseAddress_6, A0=>nx842, A1=>
      nx844);
   ix843 : nand02 port map ( Y=>nx842, A0=>windowRamBaseAddress2(6), A1=>
      nx952);
   ix845 : nand02 port map ( Y=>nx844, A0=>windowRamBaseAddress1(6), A1=>
      nx960);
   ix277 : nand02 port map ( Y=>currentReadRamBaseAddress_7, A0=>nx847, A1=>
      nx849);
   ix848 : nand02 port map ( Y=>nx847, A0=>windowRamBaseAddress2(7), A1=>
      nx952);
   ix850 : nand02 port map ( Y=>nx849, A0=>windowRamBaseAddress1(7), A1=>
      nx960);
   ix285 : nand02 port map ( Y=>currentReadRamBaseAddress_8, A0=>nx852, A1=>
      nx854);
   ix853 : nand02 port map ( Y=>nx852, A0=>windowRamBaseAddress2(8), A1=>
      nx954);
   ix855 : nand02 port map ( Y=>nx854, A0=>windowRamBaseAddress1(8), A1=>
      nx962);
   ix293 : nand02 port map ( Y=>currentReadRamBaseAddress_9, A0=>nx857, A1=>
      nx859);
   ix858 : nand02 port map ( Y=>nx857, A0=>windowRamBaseAddress2(9), A1=>
      nx954);
   ix860 : nand02 port map ( Y=>nx859, A0=>windowRamBaseAddress1(9), A1=>
      nx962);
   ix301 : nand02 port map ( Y=>currentReadRamBaseAddress_10, A0=>nx862, A1
      =>nx864);
   ix863 : nand02 port map ( Y=>nx862, A0=>windowRamBaseAddress2(10), A1=>
      nx954);
   ix865 : nand02 port map ( Y=>nx864, A0=>windowRamBaseAddress1(10), A1=>
      nx962);
   ix309 : nand02 port map ( Y=>currentReadRamBaseAddress_11, A0=>nx867, A1
      =>nx869);
   ix868 : nand02 port map ( Y=>nx867, A0=>windowRamBaseAddress2(11), A1=>
      nx954);
   ix870 : nand02 port map ( Y=>nx869, A0=>windowRamBaseAddress1(11), A1=>
      nx962);
   ix317 : nand02 port map ( Y=>currentReadRamBaseAddress_12, A0=>nx872, A1
      =>nx874);
   ix873 : nand02 port map ( Y=>nx872, A0=>windowRamBaseAddress2(12), A1=>
      nx954);
   ix875 : nand02 port map ( Y=>nx874, A0=>windowRamBaseAddress1(12), A1=>
      nx962);
   ix7 : nand02 port map ( Y=>windowRamAddress(0), A0=>nx877, A1=>nx879);
   ix878 : nand02 port map ( Y=>nx877, A0=>writeLogicRamAddress_0, A1=>write
   );
   ix880 : nand02 port map ( Y=>nx879, A0=>readLogicRamAddress_0, A1=>nx966
   );
   ix15 : nand02 port map ( Y=>windowRamAddress(1), A0=>nx884, A1=>nx886);
   ix885 : nand02 port map ( Y=>nx884, A0=>writeLogicRamAddress_1, A1=>write
   );
   ix887 : nand02 port map ( Y=>nx886, A0=>readLogicRamAddress_1, A1=>nx966
   );
   ix23 : nand02 port map ( Y=>windowRamAddress(2), A0=>nx889, A1=>nx891);
   ix890 : nand02 port map ( Y=>nx889, A0=>writeLogicRamAddress_2, A1=>write
   );
   ix892 : nand02 port map ( Y=>nx891, A0=>readLogicRamAddress_2, A1=>nx966
   );
   ix31 : nand02 port map ( Y=>windowRamAddress(3), A0=>nx894, A1=>nx896);
   ix895 : nand02 port map ( Y=>nx894, A0=>writeLogicRamAddress_3, A1=>write
   );
   ix897 : nand02 port map ( Y=>nx896, A0=>readLogicRamAddress_3, A1=>nx966
   );
   ix39 : nand02 port map ( Y=>windowRamAddress(4), A0=>nx899, A1=>nx901);
   ix900 : nand02 port map ( Y=>nx899, A0=>writeLogicRamAddress_4, A1=>write
   );
   ix902 : nand02 port map ( Y=>nx901, A0=>readLogicRamAddress_4, A1=>nx966
   );
   ix47 : nand02 port map ( Y=>windowRamAddress(5), A0=>nx904, A1=>nx906);
   ix905 : nand02 port map ( Y=>nx904, A0=>writeLogicRamAddress_5, A1=>write
   );
   ix907 : nand02 port map ( Y=>nx906, A0=>readLogicRamAddress_5, A1=>nx966
   );
   ix55 : nand02 port map ( Y=>windowRamAddress(6), A0=>nx909, A1=>nx911);
   ix910 : nand02 port map ( Y=>nx909, A0=>writeLogicRamAddress_6, A1=>write
   );
   ix912 : nand02 port map ( Y=>nx911, A0=>readLogicRamAddress_6, A1=>nx966
   );
   ix63 : nand02 port map ( Y=>windowRamAddress(7), A0=>nx914, A1=>nx916);
   ix915 : nand02 port map ( Y=>nx914, A0=>writeLogicRamAddress_7, A1=>write
   );
   ix917 : nand02 port map ( Y=>nx916, A0=>readLogicRamAddress_7, A1=>nx968
   );
   ix71 : nand02 port map ( Y=>windowRamAddress(8), A0=>nx919, A1=>nx921);
   ix920 : nand02 port map ( Y=>nx919, A0=>writeLogicRamAddress_8, A1=>write
   );
   ix922 : nand02 port map ( Y=>nx921, A0=>readLogicRamAddress_8, A1=>nx968
   );
   ix79 : nand02 port map ( Y=>windowRamAddress(9), A0=>nx924, A1=>nx926);
   ix925 : nand02 port map ( Y=>nx924, A0=>writeLogicRamAddress_9, A1=>write
   );
   ix927 : nand02 port map ( Y=>nx926, A0=>readLogicRamAddress_9, A1=>nx968
   );
   ix87 : nand02 port map ( Y=>windowRamAddress(10), A0=>nx929, A1=>nx931);
   ix930 : nand02 port map ( Y=>nx929, A0=>writeLogicRamAddress_10, A1=>
      write);
   ix932 : nand02 port map ( Y=>nx931, A0=>readLogicRamAddress_10, A1=>nx968
   );
   ix95 : nand02 port map ( Y=>windowRamAddress(11), A0=>nx934, A1=>nx936);
   ix935 : nand02 port map ( Y=>nx934, A0=>writeLogicRamAddress_11, A1=>
      write);
   ix937 : nand02 port map ( Y=>nx936, A0=>readLogicRamAddress_11, A1=>nx968
   );
   ix103 : nand02 port map ( Y=>windowRamAddress(12), A0=>nx939, A1=>nx941);
   ix940 : nand02 port map ( Y=>nx939, A0=>write, A1=>
      writeLogicRamAddress_12);
   ix942 : nand02 port map ( Y=>nx941, A0=>nx968, A1=>readLogicRamAddress_12
   );
   ix947 : inv02 port map ( Y=>nx948, A=>nx962);
   ix949 : inv02 port map ( Y=>nx950, A=>nx962);
   ix951 : inv02 port map ( Y=>nx952, A=>nx964);
   ix953 : inv02 port map ( Y=>nx954, A=>nx964);
   ix955 : inv02 port map ( Y=>nx956, A=>ramBaseAddressSelector);
   ix957 : inv02 port map ( Y=>nx958, A=>ramBaseAddressSelector);
   ix959 : inv02 port map ( Y=>nx960, A=>ramBaseAddressSelector);
   ix961 : inv02 port map ( Y=>nx962, A=>ramBaseAddressSelector);
   ix963 : inv02 port map ( Y=>nx964, A=>ramBaseAddressSelector);
   ix965 : inv02 port map ( Y=>nx966, A=>write);
   ix967 : inv02 port map ( Y=>nx968, A=>write);
end DMAControllerArch ;


