
-- 
-- Definition of  DMAController
-- 
--      Tue Apr 16 16:42:59 2019
--      
--      LeonardoSpectrum Level 3, 2018a.2
-- 

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

architecture Counter2Arch_unfold_4027 of Counter2_13 is
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
   ix44 : nand02 port map ( Y=>nx43, A0=>load(0), A1=>nx219);
   ix46 : nand02 port map ( Y=>nx45, A0=>nx47, A1=>nx49);
   ix48 : inv01 port map ( Y=>nx47, A=>isLoad);
   counterReg_reg_Q_0 : dff port map ( Q=>count_0_EXMPLR, QB=>nx49, D=>nx10, 
      CLK=>nx215);
   counterReg_reg_Q_1 : dff port map ( Q=>count_1_EXMPLR, QB=>nx59, D=>nx24, 
      CLK=>nx215);
   ix25 : oai21 port map ( Y=>nx24, A0=>nx219, A1=>nx55, B0=>nx57);
   ix58 : nand02 port map ( Y=>nx57, A0=>load(1), A1=>nx219);
   counterReg_reg_Q_2 : dff port map ( Q=>count_2_EXMPLR, QB=>nx69, D=>nx38, 
      CLK=>nx215);
   ix39 : oai21 port map ( Y=>nx38, A0=>nx219, A1=>nx63, B0=>nx67);
   ix68 : nand02 port map ( Y=>nx67, A0=>load(2), A1=>nx219);
   counterReg_reg_Q_3 : dff port map ( Q=>count_3_EXMPLR, QB=>nx81, D=>nx52, 
      CLK=>nx215);
   ix53 : oai21 port map ( Y=>nx52, A0=>nx219, A1=>nx73, B0=>nx79);
   ix43 : nor02_2x port map ( Y=>nx42, A0=>nx69, A1=>nx77);
   ix78 : nand02 port map ( Y=>nx77, A0=>count_1_EXMPLR, A1=>count_0_EXMPLR
   );
   ix80 : nand02 port map ( Y=>nx79, A0=>load(3), A1=>nx219);
   counterReg_reg_Q_4 : dff port map ( Q=>count_4_EXMPLR, QB=>nx91, D=>nx66, 
      CLK=>nx215);
   ix67 : oai21 port map ( Y=>nx66, A0=>nx221, A1=>nx85, B0=>nx89);
   ix57 : nor03_2x port map ( Y=>nx56, A0=>nx81, A1=>nx69, A2=>nx77);
   ix90 : nand02 port map ( Y=>nx89, A0=>load(4), A1=>nx221);
   counterReg_reg_Q_5 : dff port map ( Q=>count_5_EXMPLR, QB=>nx103, D=>nx80, 
      CLK=>nx215);
   ix81 : oai21 port map ( Y=>nx80, A0=>nx221, A1=>nx95, B0=>nx101);
   ix102 : nand02 port map ( Y=>nx101, A0=>load(5), A1=>nx221);
   counterReg_reg_Q_6 : dff port map ( Q=>count_6_EXMPLR, QB=>nx115, D=>nx94, 
      CLK=>nx215);
   ix95 : oai21 port map ( Y=>nx94, A0=>nx221, A1=>nx107, B0=>nx113);
   ix112 : nand04 port map ( Y=>nx111, A0=>count_3_EXMPLR, A1=>
      count_2_EXMPLR, A2=>count_1_EXMPLR, A3=>count_0_EXMPLR);
   ix114 : nand02 port map ( Y=>nx113, A0=>load(6), A1=>nx221);
   counterReg_reg_Q_7 : dff port map ( Q=>count_7_EXMPLR, QB=>nx125, D=>
      nx108, CLK=>nx217);
   ix109 : oai21 port map ( Y=>nx108, A0=>nx221, A1=>nx119, B0=>nx123);
   ix99 : nor04 port map ( Y=>nx98, A0=>nx115, A1=>nx103, A2=>nx91, A3=>
      nx111);
   ix124 : nand02 port map ( Y=>nx123, A0=>load(7), A1=>nx223);
   counterReg_reg_Q_8 : dff port map ( Q=>count_8_EXMPLR, QB=>nx137, D=>
      nx122, CLK=>nx217);
   ix123 : oai21 port map ( Y=>nx122, A0=>nx223, A1=>nx129, B0=>nx135);
   ix136 : nand02 port map ( Y=>nx135, A0=>load(8), A1=>nx223);
   counterReg_reg_Q_9 : dff port map ( Q=>count_9_EXMPLR, QB=>nx149, D=>
      nx136, CLK=>nx217);
   ix137 : oai21 port map ( Y=>nx136, A0=>nx223, A1=>nx141, B0=>nx147);
   ix146 : inv01 port map ( Y=>nx145, A=>nx98);
   ix148 : nand02 port map ( Y=>nx147, A0=>load(9), A1=>nx223);
   counterReg_reg_Q_10 : dff port map ( Q=>count_10_EXMPLR, QB=>nx159, D=>
      nx150, CLK=>nx217);
   ix151 : oai21 port map ( Y=>nx150, A0=>nx223, A1=>nx153, B0=>nx157);
   ix158 : nand02 port map ( Y=>nx157, A0=>load(10), A1=>nx223);
   counterReg_reg_Q_11 : dff port map ( Q=>count(11), QB=>nx171, D=>nx164, 
      CLK=>nx217);
   ix165 : oai21 port map ( Y=>nx164, A0=>nx225, A1=>nx163, B0=>nx169);
   ix170 : nand02 port map ( Y=>nx169, A0=>load(11), A1=>nx225);
   counterReg_reg_Q_12 : dff port map ( Q=>count_12_EXMPLR, QB=>OPEN, D=>
      nx178, CLK=>nx217);
   ix179 : oai21 port map ( Y=>nx178, A0=>nx225, A1=>nx175, B0=>nx181);
   ix176 : xnor2 port map ( Y=>nx175, A0=>count_12_EXMPLR, A1=>nx168);
   ix169 : nor04 port map ( Y=>nx168, A0=>nx171, A1=>nx159, A2=>nx149, A3=>
      nx179);
   ix180 : nand03 port map ( Y=>nx179, A0=>count_8_EXMPLR, A1=>
      count_7_EXMPLR, A2=>nx98);
   ix182 : nand02 port map ( Y=>nx181, A0=>nx225, A1=>load(12));
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
   ix214 : buf02 port map ( Y=>nx215, A=>clk);
   ix216 : buf02 port map ( Y=>nx217, A=>clk);
   ix218 : inv02 port map ( Y=>nx219, A=>nx47);
   ix220 : inv02 port map ( Y=>nx221, A=>nx47);
   ix222 : inv02 port map ( Y=>nx223, A=>nx47);
   ix224 : inv02 port map ( Y=>nx225, A=>nx47);
end Counter2Arch_unfold_4027 ;

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

entity ReadLogic_13_80_false is
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
end ReadLogic_13_80_false ;

architecture ReadLogicArch_unfold_3077 of ReadLogic_13_80_false is
   component Counter2_13
      port (
         load : IN std_logic_vector (12 DOWNTO 0) ;
         reset : IN std_logic ;
         clk : IN std_logic ;
         isLoad : IN std_logic ;
         count : OUT std_logic_vector (12 DOWNTO 0)) ;
   end component ;
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
   signal readOne_EXMPLR, aluNumber_2_EXMPLR, aluNumber_0_EXMPLR, 
      ramRead_EXMPLR, addressRegOut_12, addressRegOut_11, addressRegOut_10, 
      addressRegOut_9, addressRegOut_8, addressRegOut_7, addressRegOut_6, 
      addressRegOut_5, addressRegOut_4, addressRegOut_3, addressRegOut_2, 
      addressRegOut_1, addressRegOut_0, resetUnitNumberReg, 
      baseAddressCounterClk, resetAddressReg, addressRegIn_12, 
      addressRegIn_11, addressRegIn_10, addressRegIn_9, addressRegIn_8, 
      addressRegIn_7, addressRegIn_6, addressRegIn_5, addressRegIn_4, 
      addressRegIn_3, addressRegIn_2, addressRegIn_1, addressRegIn_0, 
      dma_tobeAdded_12, dma_tobeAdded_11, dma_tobeAdded_10, dma_tobeAdded_9, 
      dma_tobeAdded_8, dma_tobeAdded_7, dma_tobeAdded_6, dma_tobeAdded_5, 
      dma_tobeAdded_4, dma_tobeAdded_3, dma_tobeAdded_2, dma_tobeAdded_1, 
      dma_tobeAdded_0, dmaInitRamBaseAddress, NOT_clk, nx14, NOT_MFC, 
      dma_currentCount_1, nx50, dma_currentCount_0, nx68, dma_currentCount_2, 
      nx108, nx132, nx164, nx168, nx178, nx186, nx190, nx265, nx267, nx277, 
      nx287, nx297, nx307, nx344, nx346, nx350, nx353, nx355, nx362, nx366, 
      nx368, nx370, nx372, nx379, nx381, nx383, nx386, nx390, nx392, nx394, 
      nx396, nx399, nx401, nx404, nx406, nx409, nx412, nx415, nx417, nx419, 
      nx421, nx424, nx427, nx430, nx433, nx436, nx439, nx442, nx445, nx448, 
      nx451, nx454, nx457, nx461, nx463, nx466, nx471, nx473, nx475, nx478, 
      nx480, nx483, nx573, nx575, nx577, nx579, nx581, nx583, nx585, nx587, 
      nx589, nx591, nx593, nx595, nx597, nx599, nx601, nx603, nx605, nx607, 
      nx613, nx615, nx617, nx623, nx5: std_logic ;

begin
   ramRead <= ramRead_EXMPLR ;
   readOne <= readOne_EXMPLR ;
   aluNumber(2) <= aluNumber_2_EXMPLR ;
   aluNumber(0) <= aluNumber_0_EXMPLR ;
   Normal_g_baseAddressCounter : Counter2_13 port map ( load(12)=>
      addressRegIn_12, load(11)=>addressRegIn_11, load(10)=>addressRegIn_10, 
      load(9)=>addressRegIn_9, load(8)=>addressRegIn_8, load(7)=>
      addressRegIn_7, load(6)=>addressRegIn_6, load(5)=>addressRegIn_5, 
      load(4)=>addressRegIn_4, load(3)=>addressRegIn_3, load(2)=>
      addressRegIn_2, load(1)=>addressRegIn_1, load(0)=>addressRegIn_0, 
      reset=>dmaInitRamBaseAddress, clk=>baseAddressCounterClk, isLoad=>
      resetAddressReg, count(12)=>addressRegOut_12, count(11)=>
      addressRegOut_11, count(10)=>addressRegOut_10, count(9)=>
      addressRegOut_9, count(8)=>addressRegOut_8, count(7)=>addressRegOut_7, 
      count(6)=>addressRegOut_6, count(5)=>addressRegOut_5, count(4)=>
      addressRegOut_4, count(3)=>addressRegOut_3, count(2)=>addressRegOut_2, 
      count(1)=>addressRegOut_1, count(0)=>addressRegOut_0);
   dma_addressRegister : MultiStepCounter_13 port map ( load(12)=>
      addressRegOut_12, load(11)=>addressRegOut_11, load(10)=>
      addressRegOut_10, load(9)=>addressRegOut_9, load(8)=>addressRegOut_8, 
      load(7)=>addressRegOut_7, load(6)=>addressRegOut_6, load(5)=>
      addressRegOut_5, load(4)=>addressRegOut_4, load(3)=>addressRegOut_3, 
      load(2)=>addressRegOut_2, load(1)=>addressRegOut_1, load(0)=>
      addressRegOut_0, toBeAdded(12)=>dma_tobeAdded_12, toBeAdded(11)=>
      dma_tobeAdded_11, toBeAdded(10)=>dma_tobeAdded_10, toBeAdded(9)=>
      dma_tobeAdded_9, toBeAdded(8)=>dma_tobeAdded_8, toBeAdded(7)=>
      dma_tobeAdded_7, toBeAdded(6)=>dma_tobeAdded_6, toBeAdded(5)=>
      dma_tobeAdded_5, toBeAdded(4)=>dma_tobeAdded_4, toBeAdded(3)=>
      dma_tobeAdded_3, toBeAdded(2)=>dma_tobeAdded_2, toBeAdded(1)=>
      dma_tobeAdded_1, toBeAdded(0)=>dma_tobeAdded_0, reset=>
      dmaInitRamBaseAddress, clk=>clk, isLoad=>resetUnitNumberReg, MFC=>MFC, 
      count(12)=>ramAddress(12), count(11)=>ramAddress(11), count(10)=>
      ramAddress(10), count(9)=>ramAddress(9), count(8)=>ramAddress(8), 
      count(7)=>ramAddress(7), count(6)=>ramAddress(6), count(5)=>
      ramAddress(5), count(4)=>ramAddress(4), count(3)=>ramAddress(3), 
      count(2)=>ramAddress(2), count(1)=>ramAddress(1), count(0)=>
      ramAddress(0));
   ix208 : fake_gnd port map ( Y=>dmaInitRamBaseAddress);
   dma_readStepRegister_reg_Q_0 : dff port map ( Q=>dma_tobeAdded_0, QB=>
      OPEN, D=>inputSize(0), CLK=>clk);
   dma_readStepRegister_reg_Q_1 : dff port map ( Q=>dma_tobeAdded_1, QB=>
      OPEN, D=>inputSize(1), CLK=>clk);
   dma_readStepRegister_reg_Q_2 : dff port map ( Q=>dma_tobeAdded_2, QB=>
      OPEN, D=>inputSize(2), CLK=>clk);
   dma_readStepRegister_reg_Q_3 : dff port map ( Q=>dma_tobeAdded_3, QB=>
      OPEN, D=>inputSize(3), CLK=>clk);
   dma_readStepRegister_reg_Q_4 : dff port map ( Q=>dma_tobeAdded_4, QB=>
      OPEN, D=>inputSize(4), CLK=>clk);
   dma_readStepRegister_reg_Q_5 : dff port map ( Q=>dma_tobeAdded_5, QB=>
      OPEN, D=>inputSize(5), CLK=>clk);
   dma_readStepRegister_reg_Q_6 : dff port map ( Q=>dma_tobeAdded_6, QB=>
      OPEN, D=>inputSize(6), CLK=>clk);
   dma_readStepRegister_reg_Q_7 : dff port map ( Q=>dma_tobeAdded_7, QB=>
      OPEN, D=>inputSize(7), CLK=>clk);
   dma_readStepRegister_reg_Q_8 : dff port map ( Q=>dma_tobeAdded_8, QB=>
      OPEN, D=>inputSize(8), CLK=>clk);
   dma_readStepRegister_reg_Q_9 : dff port map ( Q=>dma_tobeAdded_9, QB=>
      OPEN, D=>inputSize(9), CLK=>clk);
   dma_readStepRegister_reg_Q_10 : dff port map ( Q=>dma_tobeAdded_10, QB=>
      OPEN, D=>inputSize(10), CLK=>clk);
   dma_readStepRegister_reg_Q_11 : dff port map ( Q=>dma_tobeAdded_11, QB=>
      OPEN, D=>inputSize(11), CLK=>clk);
   dma_readStepRegister_reg_Q_12 : dff port map ( Q=>dma_tobeAdded_12, QB=>
      OPEN, D=>inputSize(12), CLK=>clk);
   ix277 : nor02_2x port map ( Y=>addressRegIn_0, A0=>nx344, A1=>nx605);
   ix345 : inv01 port map ( Y=>nx344, A=>ramBasedAddress(0));
   ix347 : nand02 port map ( Y=>nx346, A0=>nx601, A1=>nx615);
   ix268 : inv01 port map ( Y=>nx267, A=>nx350);
   ix351 : nor02ii port map ( Y=>nx350, A0=>nx265, A1=>nx421);
   ix266 : oai221 port map ( Y=>nx265, A0=>loadNextWordList, A1=>nx353, B0=>
      nx601, B1=>nx615, C0=>nx370);
   ix354 : oai21 port map ( Y=>nx353, A0=>loadNextWordList, A1=>loadWord, B0
      =>nx355);
   reg_currentState_0 : dff port map ( Q=>OPEN, QB=>nx355, D=>nx267, CLK=>
      NOT_clk);
   ix358 : inv01 port map ( Y=>NOT_clk, A=>clk);
   ix308 : oai21 port map ( Y=>nx307, A0=>switchRam, A1=>nx362, B0=>nx368);
   ix363 : aoi21 port map ( Y=>nx362, A0=>nx355, A1=>nx597, B0=>nx14);
   reg_currentState_1 : dff port map ( Q=>ramRead_EXMPLR, QB=>OPEN, D=>nx307, 
      CLK=>NOT_clk);
   ix15 : nor02_2x port map ( Y=>nx14, A0=>nx601, A1=>nx366);
   ix367 : nor02_2x port map ( Y=>nx366, A0=>loadNextWordList, A1=>loadWord
   );
   ix369 : nand04 port map ( Y=>nx368, A0=>nx597, A1=>nx370, A2=>nx601, A3=>
      nx372);
   ix371 : inv01 port map ( Y=>nx370, A=>switchRam);
   ix375 : inv16 port map ( Y=>NOT_MFC, A=>MFC);
   ix133 : nor03_2x port map ( Y=>nx132, A0=>dma_currentCount_1, A1=>nx404, 
      A2=>nx419);
   dma_counter_counterReg_reg_Q_1 : dff port map ( Q=>dma_currentCount_1, QB
      =>OPEN, D=>nx287, CLK=>clk);
   ix288 : oai21 port map ( Y=>nx287, A0=>nx379, A1=>nx392, B0=>nx401);
   ix380 : aoi322 port map ( Y=>nx379, A0=>filterSize(1), A1=>
      loadNextWordList, A2=>nx381, B0=>dma_currentCount_1, B1=>nx383, C0=>
      nx68, C1=>nx399);
   ix382 : nor02_2x port map ( Y=>nx381, A0=>nx597, A1=>nx601);
   ix51 : nor03_2x port map ( Y=>nx50, A0=>nx597, A1=>nx601, A2=>nx386);
   ix387 : nor02_2x port map ( Y=>nx386, A0=>loadNextWordList, A1=>loadWord
   );
   ix278 : nand02 port map ( Y=>nx277, A0=>nx390, A1=>nx394);
   ix391 : nand02 port map ( Y=>nx390, A0=>dma_currentCount_0, A1=>nx392);
   ix395 : aoi21 port map ( Y=>nx394, A0=>nx396, A1=>MFC, B0=>nx50);
   dma_counter_counterReg_reg_Q_0 : dff port map ( Q=>dma_currentCount_0, QB
      =>nx396, D=>nx277, CLK=>clk);
   ix69 : nor02_2x port map ( Y=>nx68, A0=>dma_currentCount_1, A1=>
      dma_currentCount_0);
   ix400 : inv01 port map ( Y=>nx399, A=>nx50);
   ix402 : nand02 port map ( Y=>nx401, A0=>dma_currentCount_1, A1=>nx392);
   ix405 : nand02 port map ( Y=>nx404, A0=>NOT_clk, A1=>nx406);
   ix298 : oai21 port map ( Y=>nx297, A0=>nx409, A1=>nx392, B0=>nx417);
   ix410 : nor02ii port map ( Y=>nx409, A0=>nx108, A1=>nx415);
   ix109 : nor02_2x port map ( Y=>nx108, A0=>nx412, A1=>nx50);
   dma_counter_counterReg_reg_Q_2 : dff port map ( Q=>dma_currentCount_2, QB
      =>nx406, D=>nx297, CLK=>clk);
   ix416 : nand04 port map ( Y=>nx415, A0=>filterSize(2), A1=>
      loadNextWordList, A2=>nx615, A3=>nx355);
   ix418 : nand02 port map ( Y=>nx417, A0=>dma_currentCount_2, A1=>nx392);
   ix420 : nand03 port map ( Y=>nx419, A0=>dma_currentCount_0, A1=>MFC, A2=>
      nx597);
   ix422 : nand04 port map ( Y=>nx421, A0=>nx601, A1=>nx370, A2=>nx597, A3=>
      nx372);
   ix279 : nor02_2x port map ( Y=>addressRegIn_1, A0=>nx424, A1=>nx605);
   ix425 : inv01 port map ( Y=>nx424, A=>ramBasedAddress(1));
   ix281 : nor02_2x port map ( Y=>addressRegIn_2, A0=>nx427, A1=>nx605);
   ix428 : inv01 port map ( Y=>nx427, A=>ramBasedAddress(2));
   ix283 : nor02_2x port map ( Y=>addressRegIn_3, A0=>nx430, A1=>nx605);
   ix431 : inv01 port map ( Y=>nx430, A=>ramBasedAddress(3));
   ix285 : nor02_2x port map ( Y=>addressRegIn_4, A0=>nx433, A1=>nx605);
   ix434 : inv01 port map ( Y=>nx433, A=>ramBasedAddress(4));
   ix287 : nor02_2x port map ( Y=>addressRegIn_5, A0=>nx436, A1=>nx605);
   ix437 : inv01 port map ( Y=>nx436, A=>ramBasedAddress(5));
   ix289 : nor02_2x port map ( Y=>addressRegIn_6, A0=>nx439, A1=>nx605);
   ix440 : inv01 port map ( Y=>nx439, A=>ramBasedAddress(6));
   ix291 : nor02_2x port map ( Y=>addressRegIn_7, A0=>nx442, A1=>nx607);
   ix443 : inv01 port map ( Y=>nx442, A=>ramBasedAddress(7));
   ix293 : nor02_2x port map ( Y=>addressRegIn_8, A0=>nx445, A1=>nx607);
   ix446 : inv01 port map ( Y=>nx445, A=>ramBasedAddress(8));
   ix295 : nor02_2x port map ( Y=>addressRegIn_9, A0=>nx448, A1=>nx607);
   ix449 : inv01 port map ( Y=>nx448, A=>ramBasedAddress(9));
   ix297 : nor02_2x port map ( Y=>addressRegIn_10, A0=>nx451, A1=>nx607);
   ix452 : inv01 port map ( Y=>nx451, A=>ramBasedAddress(10));
   ix299 : nor02_2x port map ( Y=>addressRegIn_11, A0=>nx454, A1=>nx607);
   ix455 : inv01 port map ( Y=>nx454, A=>ramBasedAddress(11));
   ix301 : nor02_2x port map ( Y=>addressRegIn_12, A0=>nx457, A1=>nx607);
   ix458 : inv01 port map ( Y=>nx457, A=>ramBasedAddress(12));
   ix39 : nor02_2x port map ( Y=>resetAddressReg, A0=>nx355, A1=>nx597);
   ix309 : nand02 port map ( Y=>baseAddressCounterClk, A0=>nx461, A1=>nx463
   );
   ix462 : nand03 port map ( Y=>nx461, A0=>NOT_clk, A1=>nx603, A2=>nx615);
   ix464 : nand03 port map ( Y=>nx463, A0=>clk, A1=>nx355, A2=>nx599);
   ix161 : inv01 port map ( Y=>resetUnitNumberReg, A=>nx466);
   ix467 : oai21 port map ( Y=>nx466, A0=>loadNextWordList, A1=>nx603, B0=>
      nx615);
   aluNumberCounter_counterReg_reg_Q_0 : dff port map ( Q=>
      aluNumber_0_EXMPLR, QB=>nx475, D=>nx168, CLK=>nx164);
   ix169 : nand02 port map ( Y=>nx168, A0=>nx466, A1=>aluNumber_0_EXMPLR);
   ix165 : oai22 port map ( Y=>nx164, A0=>nx471, A1=>nx473, B0=>NOT_clk, B1
      =>nx466);
   ix472 : nand02 port map ( Y=>nx471, A0=>loadNextWordList, A1=>NOT_clk);
   ix474 : nand02 port map ( Y=>nx473, A0=>nx599, A1=>MFC);
   aluNumberCounter_counterReg_reg_Q_1 : dff port map ( Q=>aluNumber(1), QB
      =>nx480, D=>nx178, CLK=>nx164);
   ix179 : nand02 port map ( Y=>nx178, A0=>nx466, A1=>nx478);
   aluNumberCounter_counterReg_reg_Q_2 : dff port map ( Q=>
      aluNumber_2_EXMPLR, QB=>OPEN, D=>nx190, CLK=>nx164);
   ix191 : nand02 port map ( Y=>nx190, A0=>nx466, A1=>nx483);
   ix484 : xnor2 port map ( Y=>nx483, A0=>aluNumber_2_EXMPLR, A1=>nx186);
   ix187 : nor02_2x port map ( Y=>nx186, A0=>nx475, A1=>nx480);
   ix129 : nor02_2x port map ( Y=>readOne_EXMPLR, A0=>NOT_MFC, A1=>nx615);
   dma_tristateLabel_tri_output_0 : trib04 port map ( Y=>internalBus(0), A=>
      ramDataInBus(0), E=>nx573);
   dma_tristateLabel_tri_output_1 : trib04 port map ( Y=>internalBus(1), A=>
      ramDataInBus(1), E=>nx573);
   dma_tristateLabel_tri_output_2 : trib04 port map ( Y=>internalBus(2), A=>
      ramDataInBus(2), E=>nx573);
   dma_tristateLabel_tri_output_3 : trib04 port map ( Y=>internalBus(3), A=>
      ramDataInBus(3), E=>nx573);
   dma_tristateLabel_tri_output_4 : trib04 port map ( Y=>internalBus(4), A=>
      ramDataInBus(4), E=>nx573);
   dma_tristateLabel_tri_output_5 : trib04 port map ( Y=>internalBus(5), A=>
      ramDataInBus(5), E=>nx573);
   dma_tristateLabel_tri_output_6 : trib04 port map ( Y=>internalBus(6), A=>
      ramDataInBus(6), E=>nx573);
   dma_tristateLabel_tri_output_7 : trib04 port map ( Y=>internalBus(7), A=>
      ramDataInBus(7), E=>nx575);
   dma_tristateLabel_tri_output_8 : trib04 port map ( Y=>internalBus(8), A=>
      ramDataInBus(8), E=>nx575);
   dma_tristateLabel_tri_output_9 : trib04 port map ( Y=>internalBus(9), A=>
      ramDataInBus(9), E=>nx575);
   dma_tristateLabel_tri_output_10 : trib04 port map ( Y=>internalBus(10), A
      =>ramDataInBus(10), E=>nx575);
   dma_tristateLabel_tri_output_11 : trib04 port map ( Y=>internalBus(11), A
      =>ramDataInBus(11), E=>nx575);
   dma_tristateLabel_tri_output_12 : trib04 port map ( Y=>internalBus(12), A
      =>ramDataInBus(12), E=>nx575);
   dma_tristateLabel_tri_output_13 : trib04 port map ( Y=>internalBus(13), A
      =>ramDataInBus(13), E=>nx575);
   dma_tristateLabel_tri_output_14 : trib04 port map ( Y=>internalBus(14), A
      =>ramDataInBus(14), E=>nx577);
   dma_tristateLabel_tri_output_15 : trib04 port map ( Y=>internalBus(15), A
      =>ramDataInBus(15), E=>nx577);
   dma_tristateLabel_tri_output_16 : trib04 port map ( Y=>internalBus(16), A
      =>ramDataInBus(16), E=>nx577);
   dma_tristateLabel_tri_output_17 : trib04 port map ( Y=>internalBus(17), A
      =>ramDataInBus(17), E=>nx577);
   dma_tristateLabel_tri_output_18 : trib04 port map ( Y=>internalBus(18), A
      =>ramDataInBus(18), E=>nx577);
   dma_tristateLabel_tri_output_19 : trib04 port map ( Y=>internalBus(19), A
      =>ramDataInBus(19), E=>nx577);
   dma_tristateLabel_tri_output_20 : trib04 port map ( Y=>internalBus(20), A
      =>ramDataInBus(20), E=>nx577);
   dma_tristateLabel_tri_output_21 : trib04 port map ( Y=>internalBus(21), A
      =>ramDataInBus(21), E=>nx579);
   dma_tristateLabel_tri_output_22 : trib04 port map ( Y=>internalBus(22), A
      =>ramDataInBus(22), E=>nx579);
   dma_tristateLabel_tri_output_23 : trib04 port map ( Y=>internalBus(23), A
      =>ramDataInBus(23), E=>nx579);
   dma_tristateLabel_tri_output_24 : trib04 port map ( Y=>internalBus(24), A
      =>ramDataInBus(24), E=>nx579);
   dma_tristateLabel_tri_output_25 : trib04 port map ( Y=>internalBus(25), A
      =>ramDataInBus(25), E=>nx579);
   dma_tristateLabel_tri_output_26 : trib04 port map ( Y=>internalBus(26), A
      =>ramDataInBus(26), E=>nx579);
   dma_tristateLabel_tri_output_27 : trib04 port map ( Y=>internalBus(27), A
      =>ramDataInBus(27), E=>nx579);
   dma_tristateLabel_tri_output_28 : trib04 port map ( Y=>internalBus(28), A
      =>ramDataInBus(28), E=>nx581);
   dma_tristateLabel_tri_output_29 : trib04 port map ( Y=>internalBus(29), A
      =>ramDataInBus(29), E=>nx581);
   dma_tristateLabel_tri_output_30 : trib04 port map ( Y=>internalBus(30), A
      =>ramDataInBus(30), E=>nx581);
   dma_tristateLabel_tri_output_31 : trib04 port map ( Y=>internalBus(31), A
      =>ramDataInBus(31), E=>nx581);
   dma_tristateLabel_tri_output_32 : trib04 port map ( Y=>internalBus(32), A
      =>ramDataInBus(32), E=>nx581);
   dma_tristateLabel_tri_output_33 : trib04 port map ( Y=>internalBus(33), A
      =>ramDataInBus(33), E=>nx581);
   dma_tristateLabel_tri_output_34 : trib04 port map ( Y=>internalBus(34), A
      =>ramDataInBus(34), E=>nx581);
   dma_tristateLabel_tri_output_35 : trib04 port map ( Y=>internalBus(35), A
      =>ramDataInBus(35), E=>nx583);
   dma_tristateLabel_tri_output_36 : trib04 port map ( Y=>internalBus(36), A
      =>ramDataInBus(36), E=>nx583);
   dma_tristateLabel_tri_output_37 : trib04 port map ( Y=>internalBus(37), A
      =>ramDataInBus(37), E=>nx583);
   dma_tristateLabel_tri_output_38 : trib04 port map ( Y=>internalBus(38), A
      =>ramDataInBus(38), E=>nx583);
   dma_tristateLabel_tri_output_39 : trib04 port map ( Y=>internalBus(39), A
      =>ramDataInBus(39), E=>nx583);
   dma_tristateLabel_tri_output_40 : trib04 port map ( Y=>internalBus(40), A
      =>ramDataInBus(40), E=>nx583);
   dma_tristateLabel_tri_output_41 : trib04 port map ( Y=>internalBus(41), A
      =>ramDataInBus(41), E=>nx583);
   dma_tristateLabel_tri_output_42 : trib04 port map ( Y=>internalBus(42), A
      =>ramDataInBus(42), E=>nx585);
   dma_tristateLabel_tri_output_43 : trib04 port map ( Y=>internalBus(43), A
      =>ramDataInBus(43), E=>nx585);
   dma_tristateLabel_tri_output_44 : trib04 port map ( Y=>internalBus(44), A
      =>ramDataInBus(44), E=>nx585);
   dma_tristateLabel_tri_output_45 : trib04 port map ( Y=>internalBus(45), A
      =>ramDataInBus(45), E=>nx585);
   dma_tristateLabel_tri_output_46 : trib04 port map ( Y=>internalBus(46), A
      =>ramDataInBus(46), E=>nx585);
   dma_tristateLabel_tri_output_47 : trib04 port map ( Y=>internalBus(47), A
      =>ramDataInBus(47), E=>nx585);
   dma_tristateLabel_tri_output_48 : trib04 port map ( Y=>internalBus(48), A
      =>ramDataInBus(48), E=>nx585);
   dma_tristateLabel_tri_output_49 : trib04 port map ( Y=>internalBus(49), A
      =>ramDataInBus(49), E=>nx587);
   dma_tristateLabel_tri_output_50 : trib04 port map ( Y=>internalBus(50), A
      =>ramDataInBus(50), E=>nx587);
   dma_tristateLabel_tri_output_51 : trib04 port map ( Y=>internalBus(51), A
      =>ramDataInBus(51), E=>nx587);
   dma_tristateLabel_tri_output_52 : trib04 port map ( Y=>internalBus(52), A
      =>ramDataInBus(52), E=>nx587);
   dma_tristateLabel_tri_output_53 : trib04 port map ( Y=>internalBus(53), A
      =>ramDataInBus(53), E=>nx587);
   dma_tristateLabel_tri_output_54 : trib04 port map ( Y=>internalBus(54), A
      =>ramDataInBus(54), E=>nx587);
   dma_tristateLabel_tri_output_55 : trib04 port map ( Y=>internalBus(55), A
      =>ramDataInBus(55), E=>nx587);
   dma_tristateLabel_tri_output_56 : trib04 port map ( Y=>internalBus(56), A
      =>ramDataInBus(56), E=>nx589);
   dma_tristateLabel_tri_output_57 : trib04 port map ( Y=>internalBus(57), A
      =>ramDataInBus(57), E=>nx589);
   dma_tristateLabel_tri_output_58 : trib04 port map ( Y=>internalBus(58), A
      =>ramDataInBus(58), E=>nx589);
   dma_tristateLabel_tri_output_59 : trib04 port map ( Y=>internalBus(59), A
      =>ramDataInBus(59), E=>nx589);
   dma_tristateLabel_tri_output_60 : trib04 port map ( Y=>internalBus(60), A
      =>ramDataInBus(60), E=>nx589);
   dma_tristateLabel_tri_output_61 : trib04 port map ( Y=>internalBus(61), A
      =>ramDataInBus(61), E=>nx589);
   dma_tristateLabel_tri_output_62 : trib04 port map ( Y=>internalBus(62), A
      =>ramDataInBus(62), E=>nx589);
   dma_tristateLabel_tri_output_63 : trib04 port map ( Y=>internalBus(63), A
      =>ramDataInBus(63), E=>nx591);
   dma_tristateLabel_tri_output_64 : trib04 port map ( Y=>internalBus(64), A
      =>ramDataInBus(64), E=>nx591);
   dma_tristateLabel_tri_output_65 : trib04 port map ( Y=>internalBus(65), A
      =>ramDataInBus(65), E=>nx591);
   dma_tristateLabel_tri_output_66 : trib04 port map ( Y=>internalBus(66), A
      =>ramDataInBus(66), E=>nx591);
   dma_tristateLabel_tri_output_67 : trib04 port map ( Y=>internalBus(67), A
      =>ramDataInBus(67), E=>nx591);
   dma_tristateLabel_tri_output_68 : trib04 port map ( Y=>internalBus(68), A
      =>ramDataInBus(68), E=>nx591);
   dma_tristateLabel_tri_output_69 : trib04 port map ( Y=>internalBus(69), A
      =>ramDataInBus(69), E=>nx591);
   dma_tristateLabel_tri_output_70 : trib04 port map ( Y=>internalBus(70), A
      =>ramDataInBus(70), E=>nx593);
   dma_tristateLabel_tri_output_71 : trib04 port map ( Y=>internalBus(71), A
      =>ramDataInBus(71), E=>nx593);
   dma_tristateLabel_tri_output_72 : trib04 port map ( Y=>internalBus(72), A
      =>ramDataInBus(72), E=>nx593);
   dma_tristateLabel_tri_output_73 : trib04 port map ( Y=>internalBus(73), A
      =>ramDataInBus(73), E=>nx593);
   dma_tristateLabel_tri_output_74 : trib04 port map ( Y=>internalBus(74), A
      =>ramDataInBus(74), E=>nx593);
   dma_tristateLabel_tri_output_75 : trib04 port map ( Y=>internalBus(75), A
      =>ramDataInBus(75), E=>nx593);
   dma_tristateLabel_tri_output_76 : trib04 port map ( Y=>internalBus(76), A
      =>ramDataInBus(76), E=>nx593);
   dma_tristateLabel_tri_output_77 : trib04 port map ( Y=>internalBus(77), A
      =>ramDataInBus(77), E=>nx595);
   dma_tristateLabel_tri_output_78 : trib04 port map ( Y=>internalBus(78), A
      =>ramDataInBus(78), E=>nx595);
   dma_tristateLabel_tri_output_79 : trib04 port map ( Y=>internalBus(79), A
      =>ramDataInBus(79), E=>nx595);
   ix572 : buf02 port map ( Y=>nx573, A=>nx613);
   ix574 : buf02 port map ( Y=>nx575, A=>nx613);
   ix576 : buf02 port map ( Y=>nx577, A=>nx613);
   ix578 : buf02 port map ( Y=>nx579, A=>nx613);
   ix580 : buf02 port map ( Y=>nx581, A=>nx613);
   ix582 : buf02 port map ( Y=>nx583, A=>nx613);
   ix584 : buf02 port map ( Y=>nx585, A=>nx613);
   ix586 : buf02 port map ( Y=>nx587, A=>readOne_EXMPLR);
   ix588 : buf02 port map ( Y=>nx589, A=>readOne_EXMPLR);
   ix590 : buf02 port map ( Y=>nx591, A=>readOne_EXMPLR);
   ix592 : buf02 port map ( Y=>nx593, A=>readOne_EXMPLR);
   ix594 : buf02 port map ( Y=>nx595, A=>readOne_EXMPLR);
   ix596 : inv02 port map ( Y=>nx597, A=>nx615);
   ix598 : inv02 port map ( Y=>nx599, A=>nx617);
   ix600 : inv02 port map ( Y=>nx601, A=>nx355);
   ix602 : inv02 port map ( Y=>nx603, A=>nx355);
   ix604 : buf02 port map ( Y=>nx605, A=>nx346);
   ix606 : buf02 port map ( Y=>nx607, A=>nx346);
   ix612 : nor02_2x port map ( Y=>nx613, A0=>NOT_MFC, A1=>nx617);
   ix614 : inv02 port map ( Y=>nx615, A=>ramRead_EXMPLR);
   ix616 : inv02 port map ( Y=>nx617, A=>ramRead_EXMPLR);
   ix384 : nor02_2x port map ( Y=>nx383, A0=>nx50, A1=>nx396);
   ix393 : nor02_2x port map ( Y=>nx392, A0=>nx50, A1=>MFC);
   ix413 : xnor2 port map ( Y=>nx412, A0=>nx406, A1=>nx623);
   ix622 : inv01 port map ( Y=>nx623, A=>nx68);
   ix479 : xnor2 port map ( Y=>nx478, A0=>nx480, A1=>nx475);
   dma_lat_internalFinishedReading_u1 : latchs_ni port map ( QB=>nx5, D=>
      dmaInitRamBaseAddress, CLK=>NOT_MFC, S=>nx132);
   dma_lat_internalFinishedReading_u2 : inv02 port map ( Y=>readFinal, A=>
      nx5);
   dma_lat_internalFinishedReading_u3 : buf02 port map ( Y=>nx372, A=>nx5);

end ReadLogicArch_unfold_3077 ;

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
      count_6_EXMPLR, count_5_EXMPLR, count_4_EXMPLR, count_2_EXMPLR, 
      count_1_EXMPLR, count_0_EXMPLR, nx6, nx14, nx20, nx42, nx50, nx54, 
      nx56, nx62, nx64, nx68, nx80, nx86, nx88, nx92, nx100, nx106, nx108, 
      nx112, nx126, nx128, nx132, nx142, nx152, nx160, nx166, nx168, nx172, 
      nx180, nx186, nx188, nx192, nx206, nx208, nx212, nx222, nx232, nx240, 
      nx246, nx248, nx252, nx46, nx48, nx51, nx53, nx55, nx57, nx63, nx65, 
      nx67, nx69, nx71, nx75, nx79, nx83, nx85, nx89, nx96, nx99, nx103, 
      nx105, nx107, nx111, nx117, nx121, nx123, nx127, nx135, nx141, nx145, 
      nx153, nx156, nx159, nx165, nx169, nx173, nx178, nx181, nx183, nx187, 
      nx195, nx198, nx201, nx209, nx213, nx218, nx221, nx225, nx235, nx237, 
      nx244, nx247, nx249, nx251, nx253, nx255, nx257, nx259, nx261, nx263, 
      nx265, nx267: std_logic ;

begin
   count(10) <= count_10_EXMPLR ;
   count(9) <= count_9_EXMPLR ;
   count(8) <= count_8_EXMPLR ;
   count(7) <= count_7_EXMPLR ;
   count(6) <= count_6_EXMPLR ;
   count(5) <= count_5_EXMPLR ;
   count(4) <= count_4_EXMPLR ;
   count(2) <= count_2_EXMPLR ;
   count(1) <= count_1_EXMPLR ;
   count(0) <= count_0_EXMPLR ;
   ix21 : oai222 port map ( Y=>nx20, A0=>nx46, A1=>nx48, B0=>nx235, B1=>nx53, 
      C0=>nx55, C1=>nx237);
   counterReg_reg_Q_0 : dff port map ( Q=>count_0_EXMPLR, QB=>nx46, D=>nx20, 
      CLK=>clk);
   ix49 : inv01 port map ( Y=>nx48, A=>nx14);
   ix15 : nor02_2x port map ( Y=>nx14, A0=>MFC, A1=>nx265);
   ix52 : inv01 port map ( Y=>nx51, A=>MFC);
   ix56 : inv01 port map ( Y=>nx55, A=>load(0));
   ix58 : nand02 port map ( Y=>nx57, A0=>nx235, A1=>nx265);
   ix43 : oai222 port map ( Y=>nx42, A0=>nx235, A1=>nx63, B0=>nx69, B1=>nx48, 
      C0=>nx71, C1=>nx237);
   ix64 : xnor2 port map ( Y=>nx63, A0=>nx65, A1=>nx67);
   ix66 : nand02 port map ( Y=>nx65, A0=>toBeAdded(0), A1=>count_0_EXMPLR);
   counterReg_reg_Q_1 : dff port map ( Q=>count_1_EXMPLR, QB=>nx69, D=>nx42, 
      CLK=>clk);
   ix72 : inv01 port map ( Y=>nx71, A=>load(1));
   ix69 : oai21 port map ( Y=>nx68, A0=>nx235, A1=>nx75, B0=>nx85);
   ix76 : xnor2 port map ( Y=>nx75, A0=>nx54, A1=>nx56);
   ix55 : oai22 port map ( Y=>nx54, A0=>nx65, A1=>nx67, B0=>nx79, B1=>nx69);
   ix80 : inv01 port map ( Y=>nx79, A=>toBeAdded(1));
   ix84 : inv01 port map ( Y=>nx83, A=>toBeAdded(2));
   ix86 : nor02_2x port map ( Y=>nx85, A0=>nx64, A1=>nx62);
   ix65 : nor03_2x port map ( Y=>nx64, A0=>nx89, A1=>MFC, A2=>nx265);
   counterReg_reg_Q_2 : dff port map ( Q=>count_2_EXMPLR, QB=>nx89, D=>nx68, 
      CLK=>clk);
   ix63 : nor02ii port map ( Y=>nx62, A0=>nx237, A1=>load(2));
   ix93 : oai21 port map ( Y=>nx92, A0=>nx235, A1=>nx96, B0=>nx107);
   ix81 : oai21 port map ( Y=>nx80, A0=>nx99, A1=>nx103, B0=>nx105);
   ix100 : aoi21 port map ( Y=>nx99, A0=>toBeAdded(1), A1=>count_1_EXMPLR, 
      B0=>nx50);
   ix51 : nor02_2x port map ( Y=>nx50, A0=>nx65, A1=>nx67);
   ix106 : nand02 port map ( Y=>nx105, A0=>toBeAdded(2), A1=>count_2_EXMPLR
   );
   ix108 : nor02_2x port map ( Y=>nx107, A0=>nx88, A1=>nx86);
   ix89 : nor03_2x port map ( Y=>nx88, A0=>nx111, A1=>MFC, A2=>nx265);
   counterReg_reg_Q_3 : dff port map ( Q=>count(3), QB=>nx111, D=>nx92, CLK
      =>clk);
   ix87 : nor02ii port map ( Y=>nx86, A0=>nx237, A1=>load(3));
   ix113 : oai21 port map ( Y=>nx112, A0=>nx51, A1=>nx117, B0=>nx123);
   ix122 : aoi22 port map ( Y=>nx121, A0=>toBeAdded(2), A1=>count_2_EXMPLR, 
      B0=>nx54, B1=>nx56);
   ix124 : nor02_2x port map ( Y=>nx123, A0=>nx108, A1=>nx106);
   ix109 : nor03_2x port map ( Y=>nx108, A0=>nx127, A1=>MFC, A2=>nx265);
   counterReg_reg_Q_4 : dff port map ( Q=>count_4_EXMPLR, QB=>nx127, D=>
      nx112, CLK=>clk);
   ix107 : nor02ii port map ( Y=>nx106, A0=>nx237, A1=>load(4));
   ix133 : oai21 port map ( Y=>nx132, A0=>nx51, A1=>nx135, B0=>nx141);
   ix142 : nor02_2x port map ( Y=>nx141, A0=>nx128, A1=>nx126);
   ix129 : nor03_2x port map ( Y=>nx128, A0=>nx145, A1=>MFC, A2=>nx265);
   counterReg_reg_Q_5 : dff port map ( Q=>count_5_EXMPLR, QB=>nx145, D=>
      nx132, CLK=>clk);
   ix127 : nor02ii port map ( Y=>nx126, A0=>nx237, A1=>load(5));
   counterReg_reg_Q_6 : dff port map ( Q=>count_6_EXMPLR, QB=>OPEN, D=>nx152, 
      CLK=>clk);
   ix153 : inv01 port map ( Y=>nx152, A=>nx153);
   ix154 : aoi222 port map ( Y=>nx153, A0=>count_6_EXMPLR, A1=>nx14, B0=>
      load(6), B1=>nx6, C0=>MFC, C1=>nx142);
   ix7 : nor02_2x port map ( Y=>nx6, A0=>MFC, A1=>nx156);
   ix157 : inv01 port map ( Y=>nx156, A=>isLoad);
   ix143 : xnor2 port map ( Y=>nx142, A0=>count_6_EXMPLR, A1=>nx159);
   ix160 : nand03 port map ( Y=>nx159, A0=>nx100, A1=>count_4_EXMPLR, A2=>
      count_5_EXMPLR);
   ix173 : oai21 port map ( Y=>nx172, A0=>nx51, A1=>nx165, B0=>nx169);
   ix161 : nor02ii port map ( Y=>nx160, A0=>nx159, A1=>count_6_EXMPLR);
   ix170 : nor02_2x port map ( Y=>nx169, A0=>nx168, A1=>nx166);
   ix169 : nor03_2x port map ( Y=>nx168, A0=>nx173, A1=>MFC, A2=>nx265);
   counterReg_reg_Q_7 : dff port map ( Q=>count_7_EXMPLR, QB=>nx173, D=>
      nx172, CLK=>clk);
   ix167 : nor02ii port map ( Y=>nx166, A0=>nx237, A1=>load(7));
   ix193 : oai21 port map ( Y=>nx192, A0=>nx51, A1=>nx178, B0=>nx183);
   ix182 : nand04 port map ( Y=>nx181, A0=>nx100, A1=>count_4_EXMPLR, A2=>
      count_5_EXMPLR, A3=>count_6_EXMPLR);
   ix184 : nor02_2x port map ( Y=>nx183, A0=>nx188, A1=>nx186);
   ix189 : nor03_2x port map ( Y=>nx188, A0=>nx187, A1=>MFC, A2=>nx267);
   counterReg_reg_Q_8 : dff port map ( Q=>count_8_EXMPLR, QB=>nx187, D=>
      nx192, CLK=>clk);
   ix187 : nor02ii port map ( Y=>nx186, A0=>nx57, A1=>load(8));
   ix213 : oai21 port map ( Y=>nx212, A0=>nx51, A1=>nx195, B0=>nx198);
   ix199 : nor02_2x port map ( Y=>nx198, A0=>nx208, A1=>nx206);
   ix209 : nor03_2x port map ( Y=>nx208, A0=>nx201, A1=>MFC, A2=>nx267);
   counterReg_reg_Q_9 : dff port map ( Q=>count_9_EXMPLR, QB=>nx201, D=>
      nx212, CLK=>clk);
   ix207 : nor02ii port map ( Y=>nx206, A0=>nx57, A1=>load(9));
   counterReg_reg_Q_10 : dff port map ( Q=>count_10_EXMPLR, QB=>OPEN, D=>
      nx232, CLK=>clk);
   ix233 : inv01 port map ( Y=>nx232, A=>nx209);
   ix210 : aoi222 port map ( Y=>nx209, A0=>count_10_EXMPLR, A1=>nx14, B0=>
      load(10), B1=>nx6, C0=>MFC, C1=>nx222);
   ix223 : xnor2 port map ( Y=>nx222, A0=>count_10_EXMPLR, A1=>nx213);
   ix214 : nand03 port map ( Y=>nx213, A0=>nx180, A1=>count_8_EXMPLR, A2=>
      count_9_EXMPLR);
   ix253 : oai21 port map ( Y=>nx252, A0=>nx51, A1=>nx218, B0=>nx221);
   ix241 : nor02ii port map ( Y=>nx240, A0=>nx213, A1=>count_10_EXMPLR);
   ix222 : nor02_2x port map ( Y=>nx221, A0=>nx248, A1=>nx246);
   ix249 : nor03_2x port map ( Y=>nx248, A0=>nx225, A1=>MFC, A2=>nx267);
   counterReg_reg_Q_11 : dff port map ( Q=>count(11), QB=>nx225, D=>nx252, 
      CLK=>clk);
   ix247 : nor02ii port map ( Y=>nx246, A0=>nx57, A1=>load(11));
   ix234 : inv01 port map ( Y=>nx235, A=>MFC);
   ix236 : nand02 port map ( Y=>nx237, A0=>nx235, A1=>nx267);
   ix54 : xnor2 port map ( Y=>nx53, A0=>nx46, A1=>nx244);
   ix243 : inv01 port map ( Y=>nx244, A=>toBeAdded(0));
   ix68 : xnor2 port map ( Y=>nx67, A0=>nx69, A1=>nx79);
   ix57 : xnor2 port map ( Y=>nx56, A0=>nx89, A1=>toBeAdded(2));
   ix97 : xnor2 port map ( Y=>nx96, A0=>nx111, A1=>nx247);
   ix245 : inv01 port map ( Y=>nx247, A=>nx80);
   ix104 : xnor2 port map ( Y=>nx103, A0=>nx89, A1=>nx83);
   ix118 : xnor2 port map ( Y=>nx117, A0=>nx127, A1=>nx249);
   ix248 : inv01 port map ( Y=>nx249, A=>nx100);
   ix101 : nor02_2x port map ( Y=>nx100, A0=>nx121, A1=>nx111);
   ix136 : xnor2 port map ( Y=>nx135, A0=>nx145, A1=>nx251);
   ix121 : nand02 port map ( Y=>nx251, A0=>nx253, A1=>count_4_EXMPLR);
   ix139 : nor02_2x port map ( Y=>nx253, A0=>nx247, A1=>nx111);
   ix166 : xnor2 port map ( Y=>nx165, A0=>nx173, A1=>nx255);
   ix254 : inv01 port map ( Y=>nx255, A=>nx160);
   ix179 : xnor2 port map ( Y=>nx178, A0=>nx187, A1=>nx257);
   ix256 : inv01 port map ( Y=>nx257, A=>nx180);
   ix181 : nor02_2x port map ( Y=>nx180, A0=>nx181, A1=>nx173);
   ix196 : xnor2 port map ( Y=>nx195, A0=>nx201, A1=>nx259);
   ix201 : nand03 port map ( Y=>nx259, A0=>nx261, A1=>count_7_EXMPLR, A2=>
      count_8_EXMPLR);
   ix260 : inv01 port map ( Y=>nx261, A=>nx181);
   ix219 : xnor2 port map ( Y=>nx218, A0=>nx225, A1=>nx263);
   ix262 : inv01 port map ( Y=>nx263, A=>nx240);
   ix264 : inv02 port map ( Y=>nx265, A=>nx156);
   ix266 : inv02 port map ( Y=>nx267, A=>nx156);
end MultiStepCounterArch_unfold_2949 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity ReadLogic_12_40_true is
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
end ReadLogic_12_40_true ;

architecture ReadLogicArch_unfold_3059 of ReadLogic_12_40_true is
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
   signal readOne_EXMPLR, readFinal_EXMPLR, aluNumber_2_EXMPLR, 
      aluNumber_0_EXMPLR, ramRead_EXMPLR, dmaReadBaseAddress_11, 
      dmaReadBaseAddress_10, dmaReadBaseAddress_9, dmaReadBaseAddress_8, 
      dmaReadBaseAddress_7, dmaReadBaseAddress_6, dmaReadBaseAddress_5, 
      dmaReadBaseAddress_4, dmaReadBaseAddress_3, dmaReadBaseAddress_2, 
      dmaReadBaseAddress_1, dmaReadBaseAddress_0, dmaInitRamBaseAddress, 
      dma_tobeAdded_2, dma_tobeAdded_1, dma_tobeAdded_0, addressRegOut_11, 
      NOT_clk, currentState_0, nx147, nx14, NOT_MFC, dma_currentCount_1, 
      nx36, dma_currentCount_0, nx54, dma_currentCount_2, nx94, nx118, nx152, 
      nx156, nx166, nx174, nx178, nx155, nx165, nx175, nx185, nx195, nx213, 
      nx217, nx223, nx231, nx233, nx237, nx241, nx243, nx245, nx248, nx252, 
      nx254, nx256, nx258, nx261, nx263, nx266, nx268, nx271, nx274, nx277, 
      nx279, nx281, nx283, nx286, nx289, nx291, nx294, nx297, nx300, nx303, 
      nx306, nx309, nx312, nx315, nx318, nx321, nx324, nx328, nx331, nx333, 
      nx335, nx338, nx340, nx343, nx393, nx395, nx397, nx399, nx401, nx403, 
      nx405, nx407, nx413, nx5: std_logic ;

begin
   ramRead <= ramRead_EXMPLR ;
   readOne <= readOne_EXMPLR ;
   readFinal <= readFinal_EXMPLR ;
   aluNumber(2) <= aluNumber_2_EXMPLR ;
   aluNumber(0) <= aluNumber_0_EXMPLR ;
   dma_addressRegister : MultiStepCounter_12 port map ( load(11)=>
      dmaReadBaseAddress_11, load(10)=>dmaReadBaseAddress_10, load(9)=>
      dmaReadBaseAddress_9, load(8)=>dmaReadBaseAddress_8, load(7)=>
      dmaReadBaseAddress_7, load(6)=>dmaReadBaseAddress_6, load(5)=>
      dmaReadBaseAddress_5, load(4)=>dmaReadBaseAddress_4, load(3)=>
      dmaReadBaseAddress_3, load(2)=>dmaReadBaseAddress_2, load(1)=>
      dmaReadBaseAddress_1, load(0)=>dmaReadBaseAddress_0, toBeAdded(11)=>
      addressRegOut_11, toBeAdded(10)=>addressRegOut_11, toBeAdded(9)=>
      addressRegOut_11, toBeAdded(8)=>addressRegOut_11, toBeAdded(7)=>
      addressRegOut_11, toBeAdded(6)=>addressRegOut_11, toBeAdded(5)=>
      addressRegOut_11, toBeAdded(4)=>addressRegOut_11, toBeAdded(3)=>
      addressRegOut_11, toBeAdded(2)=>dma_tobeAdded_2, toBeAdded(1)=>
      dma_tobeAdded_1, toBeAdded(0)=>dma_tobeAdded_0, reset=>
      addressRegOut_11, clk=>clk, isLoad=>dmaInitRamBaseAddress, MFC=>MFC, 
      count(11)=>ramAddress(11), count(10)=>ramAddress(10), count(9)=>
      ramAddress(9), count(8)=>ramAddress(8), count(7)=>ramAddress(7), 
      count(6)=>ramAddress(6), count(5)=>ramAddress(5), count(4)=>
      ramAddress(4), count(3)=>ramAddress(3), count(2)=>ramAddress(2), 
      count(1)=>ramAddress(1), count(0)=>ramAddress(0));
   ix114 : fake_gnd port map ( Y=>addressRegOut_11);
   dma_readStepRegister_reg_Q_0 : dff port map ( Q=>dma_tobeAdded_0, QB=>
      OPEN, D=>inputSize(0), CLK=>clk);
   dma_readStepRegister_reg_Q_1 : dff port map ( Q=>dma_tobeAdded_1, QB=>
      OPEN, D=>inputSize(1), CLK=>clk);
   dma_readStepRegister_reg_Q_2 : dff port map ( Q=>dma_tobeAdded_2, QB=>
      OPEN, D=>inputSize(2), CLK=>clk);
   ix25 : nor02_2x port map ( Y=>dmaInitRamBaseAddress, A0=>nx213, A1=>
      ramRead_EXMPLR);
   ix156 : nand03 port map ( Y=>nx155, A0=>nx217, A1=>nx283, A2=>nx243);
   ix218 : nand04 port map ( Y=>nx217, A0=>currentState_0, A1=>nx223, A2=>
      ramRead_EXMPLR, A3=>nx243);
   reg_currentState_0 : dff port map ( Q=>currentState_0, QB=>nx213, D=>
      nx155, CLK=>NOT_clk);
   ix222 : inv01 port map ( Y=>NOT_clk, A=>clk);
   ix226 : inv16 port map ( Y=>NOT_MFC, A=>MFC);
   ix119 : nor03_2x port map ( Y=>nx118, A0=>dma_currentCount_1, A1=>nx266, 
      A2=>nx281);
   dma_counter_counterReg_reg_Q_1 : dff port map ( Q=>dma_currentCount_1, QB
      =>OPEN, D=>nx175, CLK=>clk);
   ix176 : oai21 port map ( Y=>nx175, A0=>nx231, A1=>nx254, B0=>nx263);
   ix232 : aoi322 port map ( Y=>nx231, A0=>filterSize(1), A1=>
      loadNextWordList, A2=>nx233, B0=>dma_currentCount_1, B1=>nx245, C0=>
      nx54, C1=>nx261);
   ix234 : nor02_2x port map ( Y=>nx233, A0=>ramRead_EXMPLR, A1=>
      currentState_0);
   ix196 : oai33 port map ( Y=>nx195, A0=>nx237, A1=>readFinal_EXMPLR, A2=>
      nx147, B0=>switchRam, B1=>currentState_0, B2=>nx241);
   reg_currentState_1 : dff port map ( Q=>ramRead_EXMPLR, QB=>nx237, D=>
      nx195, CLK=>NOT_clk);
   ix21 : oai21 port map ( Y=>nx147, A0=>currentState_0, A1=>nx241, B0=>
      nx243);
   ix242 : nor03_2x port map ( Y=>nx241, A0=>loadNextWordList, A1=>loadWord, 
      A2=>ramRead_EXMPLR);
   ix244 : inv01 port map ( Y=>nx243, A=>switchRam);
   ix37 : nor03_2x port map ( Y=>nx36, A0=>ramRead_EXMPLR, A1=>
      currentState_0, A2=>nx248);
   ix249 : nor02_2x port map ( Y=>nx248, A0=>loadNextWordList, A1=>loadWord
   );
   ix166 : nand02 port map ( Y=>nx165, A0=>nx252, A1=>nx256);
   ix253 : nand02 port map ( Y=>nx252, A0=>dma_currentCount_0, A1=>nx254);
   ix257 : aoi21 port map ( Y=>nx256, A0=>nx258, A1=>MFC, B0=>nx36);
   dma_counter_counterReg_reg_Q_0 : dff port map ( Q=>dma_currentCount_0, QB
      =>nx258, D=>nx165, CLK=>clk);
   ix55 : nor02_2x port map ( Y=>nx54, A0=>dma_currentCount_1, A1=>
      dma_currentCount_0);
   ix262 : inv01 port map ( Y=>nx261, A=>nx36);
   ix264 : nand02 port map ( Y=>nx263, A0=>dma_currentCount_1, A1=>nx254);
   ix267 : nand02 port map ( Y=>nx266, A0=>NOT_clk, A1=>nx268);
   ix186 : oai21 port map ( Y=>nx185, A0=>nx271, A1=>nx254, B0=>nx279);
   ix272 : nor02ii port map ( Y=>nx271, A0=>nx94, A1=>nx277);
   ix95 : nor02_2x port map ( Y=>nx94, A0=>nx274, A1=>nx36);
   dma_counter_counterReg_reg_Q_2 : dff port map ( Q=>dma_currentCount_2, QB
      =>nx268, D=>nx185, CLK=>clk);
   ix278 : nand04 port map ( Y=>nx277, A0=>filterSize(2), A1=>
      loadNextWordList, A2=>nx237, A3=>nx213);
   ix280 : nand02 port map ( Y=>nx279, A0=>dma_currentCount_2, A1=>nx254);
   ix282 : nand03 port map ( Y=>nx281, A0=>dma_currentCount_0, A1=>MFC, A2=>
      ramRead_EXMPLR);
   ix284 : nand02 port map ( Y=>nx283, A0=>nx213, A1=>nx14);
   ix15 : nand02 port map ( Y=>nx14, A0=>nx286, A1=>nx237);
   ix287 : nor02_2x port map ( Y=>nx286, A0=>loadNextWordList, A1=>loadWord
   );
   ix205 : nor02_2x port map ( Y=>dmaReadBaseAddress_0, A0=>nx289, A1=>nx405
   );
   ix290 : inv01 port map ( Y=>nx289, A=>ramBasedAddress(0));
   ix292 : nand02 port map ( Y=>nx291, A0=>currentState_0, A1=>nx237);
   ix207 : nor02_2x port map ( Y=>dmaReadBaseAddress_1, A0=>nx294, A1=>nx405
   );
   ix295 : inv01 port map ( Y=>nx294, A=>ramBasedAddress(1));
   ix209 : nor02_2x port map ( Y=>dmaReadBaseAddress_2, A0=>nx297, A1=>nx405
   );
   ix298 : inv01 port map ( Y=>nx297, A=>ramBasedAddress(2));
   ix211 : nor02_2x port map ( Y=>dmaReadBaseAddress_3, A0=>nx300, A1=>nx405
   );
   ix301 : inv01 port map ( Y=>nx300, A=>ramBasedAddress(3));
   ix213 : nor02_2x port map ( Y=>dmaReadBaseAddress_4, A0=>nx303, A1=>nx405
   );
   ix304 : inv01 port map ( Y=>nx303, A=>ramBasedAddress(4));
   ix215 : nor02_2x port map ( Y=>dmaReadBaseAddress_5, A0=>nx306, A1=>nx405
   );
   ix307 : inv01 port map ( Y=>nx306, A=>ramBasedAddress(5));
   ix217 : nor02_2x port map ( Y=>dmaReadBaseAddress_6, A0=>nx309, A1=>nx405
   );
   ix310 : inv01 port map ( Y=>nx309, A=>ramBasedAddress(6));
   ix219 : nor02_2x port map ( Y=>dmaReadBaseAddress_7, A0=>nx312, A1=>nx407
   );
   ix313 : inv01 port map ( Y=>nx312, A=>ramBasedAddress(7));
   ix221 : nor02_2x port map ( Y=>dmaReadBaseAddress_8, A0=>nx315, A1=>nx407
   );
   ix316 : inv01 port map ( Y=>nx315, A=>ramBasedAddress(8));
   ix223 : nor02_2x port map ( Y=>dmaReadBaseAddress_9, A0=>nx318, A1=>nx407
   );
   ix319 : inv01 port map ( Y=>nx318, A=>ramBasedAddress(9));
   ix225 : nor02_2x port map ( Y=>dmaReadBaseAddress_10, A0=>nx321, A1=>
      nx407);
   ix322 : inv01 port map ( Y=>nx321, A=>ramBasedAddress(10));
   ix227 : nor02_2x port map ( Y=>dmaReadBaseAddress_11, A0=>nx324, A1=>
      nx407);
   ix325 : inv01 port map ( Y=>nx324, A=>ramBasedAddress(11));
   aluNumberCounter_counterReg_reg_Q_0 : dff port map ( Q=>
      aluNumber_0_EXMPLR, QB=>nx335, D=>nx156, CLK=>nx152);
   ix157 : nand02 port map ( Y=>nx156, A0=>aluNumber_0_EXMPLR, A1=>nx328);
   ix329 : oai21 port map ( Y=>nx328, A0=>loadNextWordList, A1=>
      currentState_0, B0=>nx237);
   ix153 : oai22 port map ( Y=>nx152, A0=>nx331, A1=>nx333, B0=>NOT_clk, B1
      =>nx328);
   ix332 : nand02 port map ( Y=>nx331, A0=>loadNextWordList, A1=>NOT_clk);
   ix334 : nand02 port map ( Y=>nx333, A0=>ramRead_EXMPLR, A1=>MFC);
   aluNumberCounter_counterReg_reg_Q_1 : dff port map ( Q=>aluNumber(1), QB
      =>nx340, D=>nx166, CLK=>nx152);
   ix167 : nand02 port map ( Y=>nx166, A0=>nx338, A1=>nx328);
   aluNumberCounter_counterReg_reg_Q_2 : dff port map ( Q=>
      aluNumber_2_EXMPLR, QB=>OPEN, D=>nx178, CLK=>nx152);
   ix179 : nand02 port map ( Y=>nx178, A0=>nx343, A1=>nx328);
   ix344 : xnor2 port map ( Y=>nx343, A0=>aluNumber_2_EXMPLR, A1=>nx174);
   ix175 : nor02_2x port map ( Y=>nx174, A0=>nx335, A1=>nx340);
   ix115 : nor02_2x port map ( Y=>readOne_EXMPLR, A0=>NOT_MFC, A1=>nx237);
   dma_tristateLabel_tri_output_0 : trib04 port map ( Y=>internalBus(0), A=>
      ramDataInBus(0), E=>nx393);
   dma_tristateLabel_tri_output_1 : trib04 port map ( Y=>internalBus(1), A=>
      ramDataInBus(1), E=>nx393);
   dma_tristateLabel_tri_output_2 : trib04 port map ( Y=>internalBus(2), A=>
      ramDataInBus(2), E=>nx393);
   dma_tristateLabel_tri_output_3 : trib04 port map ( Y=>internalBus(3), A=>
      ramDataInBus(3), E=>nx393);
   dma_tristateLabel_tri_output_4 : trib04 port map ( Y=>internalBus(4), A=>
      ramDataInBus(4), E=>nx393);
   dma_tristateLabel_tri_output_5 : trib04 port map ( Y=>internalBus(5), A=>
      ramDataInBus(5), E=>nx393);
   dma_tristateLabel_tri_output_6 : trib04 port map ( Y=>internalBus(6), A=>
      ramDataInBus(6), E=>nx393);
   dma_tristateLabel_tri_output_7 : trib04 port map ( Y=>internalBus(7), A=>
      ramDataInBus(7), E=>nx395);
   dma_tristateLabel_tri_output_8 : trib04 port map ( Y=>internalBus(8), A=>
      ramDataInBus(8), E=>nx395);
   dma_tristateLabel_tri_output_9 : trib04 port map ( Y=>internalBus(9), A=>
      ramDataInBus(9), E=>nx395);
   dma_tristateLabel_tri_output_10 : trib04 port map ( Y=>internalBus(10), A
      =>ramDataInBus(10), E=>nx395);
   dma_tristateLabel_tri_output_11 : trib04 port map ( Y=>internalBus(11), A
      =>ramDataInBus(11), E=>nx395);
   dma_tristateLabel_tri_output_12 : trib04 port map ( Y=>internalBus(12), A
      =>ramDataInBus(12), E=>nx395);
   dma_tristateLabel_tri_output_13 : trib04 port map ( Y=>internalBus(13), A
      =>ramDataInBus(13), E=>nx395);
   dma_tristateLabel_tri_output_14 : trib04 port map ( Y=>internalBus(14), A
      =>ramDataInBus(14), E=>nx397);
   dma_tristateLabel_tri_output_15 : trib04 port map ( Y=>internalBus(15), A
      =>ramDataInBus(15), E=>nx397);
   dma_tristateLabel_tri_output_16 : trib04 port map ( Y=>internalBus(16), A
      =>ramDataInBus(16), E=>nx397);
   dma_tristateLabel_tri_output_17 : trib04 port map ( Y=>internalBus(17), A
      =>ramDataInBus(17), E=>nx397);
   dma_tristateLabel_tri_output_18 : trib04 port map ( Y=>internalBus(18), A
      =>ramDataInBus(18), E=>nx397);
   dma_tristateLabel_tri_output_19 : trib04 port map ( Y=>internalBus(19), A
      =>ramDataInBus(19), E=>nx397);
   dma_tristateLabel_tri_output_20 : trib04 port map ( Y=>internalBus(20), A
      =>ramDataInBus(20), E=>nx397);
   dma_tristateLabel_tri_output_21 : trib04 port map ( Y=>internalBus(21), A
      =>ramDataInBus(21), E=>nx399);
   dma_tristateLabel_tri_output_22 : trib04 port map ( Y=>internalBus(22), A
      =>ramDataInBus(22), E=>nx399);
   dma_tristateLabel_tri_output_23 : trib04 port map ( Y=>internalBus(23), A
      =>ramDataInBus(23), E=>nx399);
   dma_tristateLabel_tri_output_24 : trib04 port map ( Y=>internalBus(24), A
      =>ramDataInBus(24), E=>nx399);
   dma_tristateLabel_tri_output_25 : trib04 port map ( Y=>internalBus(25), A
      =>ramDataInBus(25), E=>nx399);
   dma_tristateLabel_tri_output_26 : trib04 port map ( Y=>internalBus(26), A
      =>ramDataInBus(26), E=>nx399);
   dma_tristateLabel_tri_output_27 : trib04 port map ( Y=>internalBus(27), A
      =>ramDataInBus(27), E=>nx399);
   dma_tristateLabel_tri_output_28 : trib04 port map ( Y=>internalBus(28), A
      =>ramDataInBus(28), E=>nx401);
   dma_tristateLabel_tri_output_29 : trib04 port map ( Y=>internalBus(29), A
      =>ramDataInBus(29), E=>nx401);
   dma_tristateLabel_tri_output_30 : trib04 port map ( Y=>internalBus(30), A
      =>ramDataInBus(30), E=>nx401);
   dma_tristateLabel_tri_output_31 : trib04 port map ( Y=>internalBus(31), A
      =>ramDataInBus(31), E=>nx401);
   dma_tristateLabel_tri_output_32 : trib04 port map ( Y=>internalBus(32), A
      =>ramDataInBus(32), E=>nx401);
   dma_tristateLabel_tri_output_33 : trib04 port map ( Y=>internalBus(33), A
      =>ramDataInBus(33), E=>nx401);
   dma_tristateLabel_tri_output_34 : trib04 port map ( Y=>internalBus(34), A
      =>ramDataInBus(34), E=>nx401);
   dma_tristateLabel_tri_output_35 : trib04 port map ( Y=>internalBus(35), A
      =>ramDataInBus(35), E=>nx403);
   dma_tristateLabel_tri_output_36 : trib04 port map ( Y=>internalBus(36), A
      =>ramDataInBus(36), E=>nx403);
   dma_tristateLabel_tri_output_37 : trib04 port map ( Y=>internalBus(37), A
      =>ramDataInBus(37), E=>nx403);
   dma_tristateLabel_tri_output_38 : trib04 port map ( Y=>internalBus(38), A
      =>ramDataInBus(38), E=>nx403);
   dma_tristateLabel_tri_output_39 : trib04 port map ( Y=>internalBus(39), A
      =>ramDataInBus(39), E=>nx403);
   ix392 : buf02 port map ( Y=>nx393, A=>readOne_EXMPLR);
   ix394 : buf02 port map ( Y=>nx395, A=>readOne_EXMPLR);
   ix396 : buf02 port map ( Y=>nx397, A=>readOne_EXMPLR);
   ix398 : buf02 port map ( Y=>nx399, A=>readOne_EXMPLR);
   ix400 : buf02 port map ( Y=>nx401, A=>readOne_EXMPLR);
   ix402 : buf02 port map ( Y=>nx403, A=>readOne_EXMPLR);
   ix404 : buf02 port map ( Y=>nx405, A=>nx291);
   ix406 : buf02 port map ( Y=>nx407, A=>nx291);
   ix246 : nor02_2x port map ( Y=>nx245, A0=>nx36, A1=>nx258);
   ix255 : nor02_2x port map ( Y=>nx254, A0=>nx36, A1=>MFC);
   ix275 : xnor2 port map ( Y=>nx274, A0=>nx268, A1=>nx413);
   ix412 : inv01 port map ( Y=>nx413, A=>nx54);
   ix339 : xnor2 port map ( Y=>nx338, A0=>nx340, A1=>nx335);
   dma_lat_internalFinishedReading_u1 : latchs_ni port map ( QB=>nx5, D=>
      addressRegOut_11, CLK=>NOT_MFC, S=>nx118);
   dma_lat_internalFinishedReading_u2 : inv02 port map ( Y=>readFinal_EXMPLR, 
      A=>nx5);
   dma_lat_internalFinishedReading_u3 : buf02 port map ( Y=>nx223, A=>nx5);

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
      toBeAdded_2, toBeAdded_1, toBeAdded_0, GND, NOT_MFC, currentCount_4, 
      nx82, currentCount_3, nx50, currentCount_2, currentCount_1, 
      currentCount_0, nx106, nx136, nx160, nx180, nx192, nx210, nx59, nx69, 
      nx79, nx89, nx99, nx113, nx147, nx155, nx157, nx159, nx163, nx168, 
      nx171, nx175, nx183, nx185, nx188, nx196, nx199, nx201, nx205, nx207, 
      nx211, nx213, nx214, nx217, nx218, nx220, nx221, nx223, nx226, nx238, 
      nx240, nx1, nx5, nx242, nx244, nx246, nx248, nx250: std_logic ;

begin
   ramWrite <= GND ;
   ramDataOutBus(79) <= GND ;
   ramDataOutBus(78) <= GND ;
   ramDataOutBus(77) <= GND ;
   ramDataOutBus(76) <= GND ;
   ramDataOutBus(75) <= GND ;
   ramDataOutBus(74) <= GND ;
   ramDataOutBus(73) <= GND ;
   ramDataOutBus(72) <= GND ;
   ramDataOutBus(71) <= GND ;
   ramDataOutBus(70) <= GND ;
   ramDataOutBus(69) <= GND ;
   ramDataOutBus(68) <= GND ;
   ramDataOutBus(67) <= GND ;
   ramDataOutBus(66) <= GND ;
   ramDataOutBus(65) <= GND ;
   ramDataOutBus(64) <= GND ;
   ramDataOutBus(63) <= GND ;
   ramDataOutBus(62) <= GND ;
   ramDataOutBus(61) <= GND ;
   ramDataOutBus(60) <= GND ;
   ramDataOutBus(59) <= GND ;
   ramDataOutBus(58) <= GND ;
   ramDataOutBus(57) <= GND ;
   ramDataOutBus(56) <= GND ;
   ramDataOutBus(55) <= GND ;
   ramDataOutBus(54) <= GND ;
   ramDataOutBus(53) <= GND ;
   ramDataOutBus(52) <= GND ;
   ramDataOutBus(51) <= GND ;
   ramDataOutBus(50) <= GND ;
   ramDataOutBus(49) <= GND ;
   ramDataOutBus(48) <= GND ;
   ramDataOutBus(47) <= GND ;
   ramDataOutBus(46) <= GND ;
   ramDataOutBus(45) <= GND ;
   ramDataOutBus(44) <= GND ;
   ramDataOutBus(43) <= GND ;
   ramDataOutBus(42) <= GND ;
   ramDataOutBus(41) <= GND ;
   ramDataOutBus(40) <= GND ;
   ramDataOutBus(39) <= GND ;
   ramDataOutBus(38) <= GND ;
   ramDataOutBus(37) <= GND ;
   ramDataOutBus(36) <= GND ;
   ramDataOutBus(35) <= GND ;
   ramDataOutBus(34) <= GND ;
   ramDataOutBus(33) <= GND ;
   ramDataOutBus(32) <= GND ;
   ramDataOutBus(31) <= GND ;
   ramDataOutBus(30) <= GND ;
   ramDataOutBus(29) <= GND ;
   ramDataOutBus(28) <= GND ;
   ramDataOutBus(27) <= GND ;
   ramDataOutBus(26) <= GND ;
   ramDataOutBus(25) <= GND ;
   ramDataOutBus(24) <= GND ;
   ramDataOutBus(23) <= GND ;
   ramDataOutBus(22) <= GND ;
   ramDataOutBus(21) <= GND ;
   ramDataOutBus(20) <= GND ;
   ramDataOutBus(19) <= GND ;
   ramDataOutBus(18) <= GND ;
   ramDataOutBus(17) <= GND ;
   ramDataOutBus(16) <= GND ;
   ramDataOutBus(15) <= GND ;
   ramDataOutBus(14) <= GND ;
   ramDataOutBus(13) <= GND ;
   ramDataOutBus(12) <= GND ;
   ramDataOutBus(11) <= GND ;
   ramDataOutBus(10) <= GND ;
   ramDataOutBus(9) <= GND ;
   ramDataOutBus(8) <= GND ;
   ramDataOutBus(7) <= GND ;
   ramDataOutBus(6) <= GND ;
   ramDataOutBus(5) <= GND ;
   ramDataOutBus(4) <= GND ;
   ramDataOutBus(3) <= GND ;
   ramDataOutBus(2) <= GND ;
   ramDataOutBus(1) <= GND ;
   ramDataOutBus(0) <= GND ;
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
      nx244, MFC=>MFC, count(12)=>ramWriteAddress(12), count(11)=>
      ramWriteAddress(11), count(10)=>ramWriteAddress(10), count(9)=>
      ramWriteAddress(9), count(8)=>ramWriteAddress(8), count(7)=>
      ramWriteAddress(7), count(6)=>ramWriteAddress(6), count(5)=>
      ramWriteAddress(5), count(4)=>ramWriteAddress(4), count(3)=>
      ramWriteAddress(3), count(2)=>ramWriteAddress(2), count(1)=>
      ramWriteAddress(1), count(0)=>ramWriteAddress(0));
   ix11 : fake_gnd port map ( Y=>GND);
   ix203 : nor02_2x port map ( Y=>writeCompleteOne, A0=>nx113, A1=>NOT_MFC);
   ix114 : inv01 port map ( Y=>nx113, A=>writeToRam);
   ix116 : inv16 port map ( Y=>NOT_MFC, A=>MFC);
   writeStepRegister_reg_Q_0 : dff port map ( Q=>toBeAdded_0, QB=>OPEN, D=>
      writeStep(0), CLK=>nx244);
   writeStepRegister_reg_Q_1 : dff port map ( Q=>toBeAdded_1, QB=>OPEN, D=>
      writeStep(1), CLK=>nx244);
   writeStepRegister_reg_Q_2 : dff port map ( Q=>toBeAdded_2, QB=>OPEN, D=>
      writeStep(2), CLK=>nx244);
   writeStepRegister_reg_Q_3 : dff port map ( Q=>toBeAdded_3, QB=>OPEN, D=>
      writeStep(3), CLK=>nx244);
   writeStepRegister_reg_Q_4 : dff port map ( Q=>toBeAdded_4, QB=>OPEN, D=>
      writeStep(4), CLK=>nx244);
   writeStepRegister_reg_Q_5 : dff port map ( Q=>toBeAdded_5, QB=>OPEN, D=>
      writeStep(5), CLK=>nx244);
   writeStepRegister_reg_Q_6 : dff port map ( Q=>toBeAdded_6, QB=>OPEN, D=>
      writeStep(6), CLK=>nx246);
   writeStepRegister_reg_Q_7 : dff port map ( Q=>toBeAdded_7, QB=>OPEN, D=>
      writeStep(7), CLK=>nx246);
   writeStepRegister_reg_Q_8 : dff port map ( Q=>toBeAdded_8, QB=>OPEN, D=>
      writeStep(8), CLK=>nx246);
   writeStepRegister_reg_Q_9 : dff port map ( Q=>toBeAdded_9, QB=>OPEN, D=>
      writeStep(9), CLK=>nx246);
   writeStepRegister_reg_Q_10 : dff port map ( Q=>toBeAdded_10, QB=>OPEN, D
      =>writeStep(10), CLK=>nx246);
   writeStepRegister_reg_Q_11 : dff port map ( Q=>toBeAdded_11, QB=>OPEN, D
      =>writeStep(11), CLK=>nx246);
   writeStepRegister_reg_Q_12 : dff port map ( Q=>toBeAdded_12, QB=>OPEN, D
      =>writeStep(12), CLK=>nx246);
   ix211 : nor02_2x port map ( Y=>nx210, A0=>nx147, A1=>nx226);
   ix148 : nand03 port map ( Y=>nx147, A0=>nx192, A1=>nx220, A2=>nx217);
   ix193 : nor02_2x port map ( Y=>nx192, A0=>clk, A1=>currentCount_4);
   writecounter_counterReg_reg_Q_4 : dff port map ( Q=>currentCount_4, QB=>
      OPEN, D=>nx99, CLK=>clk);
   ix100 : nand02 port map ( Y=>nx99, A0=>nx155, A1=>nx159);
   ix156 : nand02 port map ( Y=>nx155, A0=>currentCount_4, A1=>nx157);
   ix158 : nor02_2x port map ( Y=>nx157, A0=>MFC, A1=>nx248);
   ix160 : nand02 port map ( Y=>nx159, A0=>nx180, A1=>nx82);
   ix181 : oai21 port map ( Y=>nx180, A0=>nx248, A1=>nx163, B0=>nx223);
   ix164 : xnor2 port map ( Y=>nx163, A0=>currentCount_4, A1=>nx50);
   ix171 : nor03_2x port map ( Y=>nx50, A0=>currentCount_3, A1=>
      currentCount_2, A2=>nx221);
   writecounter_counterReg_reg_Q_3 : dff port map ( Q=>currentCount_3, QB=>
      nx220, D=>nx89, CLK=>clk);
   ix90 : nand02 port map ( Y=>nx89, A0=>nx168, A1=>nx171);
   ix170 : nand02 port map ( Y=>nx168, A0=>currentCount_3, A1=>nx157);
   ix172 : nand02 port map ( Y=>nx171, A0=>nx160, A1=>nx82);
   ix161 : oai21 port map ( Y=>nx160, A0=>nx248, A1=>nx175, B0=>nx218);
   writecounter_counterReg_reg_Q_2 : dff port map ( Q=>currentCount_2, QB=>
      nx217, D=>nx79, CLK=>clk);
   ix80 : nand02 port map ( Y=>nx79, A0=>nx183, A1=>nx185);
   ix184 : nand02 port map ( Y=>nx183, A0=>currentCount_2, A1=>nx157);
   ix186 : nand02 port map ( Y=>nx185, A0=>nx136, A1=>nx82);
   ix137 : oai21 port map ( Y=>nx136, A0=>nx248, A1=>nx188, B0=>nx214);
   writecounter_counterReg_reg_Q_1 : dff port map ( Q=>currentCount_1, QB=>
      nx213, D=>nx69, CLK=>clk);
   ix70 : oai21 port map ( Y=>nx69, A0=>nx196, A1=>nx157, B0=>nx211);
   ix197 : aoi21 port map ( Y=>nx196, A0=>counter(1), A1=>nx248, B0=>nx106);
   ix107 : nor02_2x port map ( Y=>nx106, A0=>nx248, A1=>nx199);
   ix60 : oai21 port map ( Y=>nx59, A0=>nx205, A1=>nx157, B0=>nx207);
   ix206 : mux21 port map ( Y=>nx205, A0=>nx201, A1=>counter(0), S0=>nx248);
   ix208 : nand02 port map ( Y=>nx207, A0=>currentCount_0, A1=>nx157);
   writecounter_counterReg_reg_Q_0 : dff port map ( Q=>currentCount_0, QB=>
      nx201, D=>nx59, CLK=>clk);
   ix212 : nand02 port map ( Y=>nx211, A0=>currentCount_1, A1=>nx157);
   ix215 : nand02 port map ( Y=>nx214, A0=>counter(2), A1=>nx250);
   ix83 : inv01 port map ( Y=>nx82, A=>nx157);
   ix219 : nand02 port map ( Y=>nx218, A0=>counter(3), A1=>nx250);
   ix222 : nand02 port map ( Y=>nx221, A0=>nx213, A1=>nx201);
   ix224 : nand02 port map ( Y=>nx223, A0=>counter(4), A1=>nx250);
   ix227 : nand04 port map ( Y=>nx226, A0=>writeToRam, A1=>MFC, A2=>nx213, 
      A3=>currentCount_0);
   ix176 : xnor2 port map ( Y=>nx175, A0=>nx220, A1=>nx238);
   ix147 : nand03 port map ( Y=>nx238, A0=>nx217, A1=>nx213, A2=>nx201);
   ix190 : xnor2 port map ( Y=>nx188, A0=>nx217, A1=>nx240);
   ix123 : nand02 port map ( Y=>nx240, A0=>nx213, A1=>nx201);
   ix200 : xnor2 port map ( Y=>nx199, A0=>nx213, A1=>currentCount_0);
   lat_internalWriteComplete_u1 : latchs_ni port map ( QB=>nx5, D=>GND, CLK
      =>NOT_MFC, S=>nx210);
   lat_internalWriteComplete_u2 : inv02 port map ( Y=>writeComplete, A=>nx5
   );
   lat_internalWriteComplete_u3 : buf02 port map ( Y=>nx1, A=>nx5);
   ix241 : inv01 port map ( Y=>nx242, A=>initCounter);
   ix243 : inv02 port map ( Y=>nx244, A=>nx242);
   ix245 : inv02 port map ( Y=>nx246, A=>nx242);
   ix247 : inv02 port map ( Y=>nx248, A=>nx242);
   ix249 : inv02 port map ( Y=>nx250, A=>nx242);
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
   signal writeDone_EXMPLR, currentState_2, currentState_1, addressRegOut_12, 
      addressRegOut_11, addressRegOut_10, addressRegOut_9, addressRegOut_8, 
      addressRegOut_7, addressRegOut_6, addressRegOut_5, addressRegOut_4, 
      addressRegOut_3, addressRegOut_2, addressRegOut_1, addressRegOut_0, 
      baseAddressCounterClk, addressRegIn_12, addressRegIn_11, 
      addressRegIn_10, addressRegIn_9, addressRegIn_8, addressRegIn_7, 
      addressRegIn_6, addressRegIn_5, addressRegIn_4, addressRegIn_3, 
      addressRegIn_2, addressRegIn_1, addressRegIn_0, dmaCountIn_4, 
      dmaCountIn_3, dmaCountIn_2, dmaCountIn_1, dmaCountIn_0, 
      ramWrite_EXMPLR, nextState_1, currentState_4, currentState_0, nx31, 
      NOT_clk, nx22, nx26, currentState_3, nx39, nx49, nx59, nx69, nx79, 
      nx91, nx93, nx96, nx98, nx102, nx106, nx110, nx119, nx122, nx124, 
      nx126, nx128, nx132, nx134, nx137, nx140, nx143, nx146, nx149, nx152, 
      nx155, nx158, nx161, nx164, nx167, nx170, nx173, nx176, nx179, nx182, 
      nx185, nx188, nx196, nx198, nx200: std_logic ;
   
   signal DANGLING : std_logic_vector (80 downto 0 );

begin
   ramWrite <= ramWrite_EXMPLR ;
   ramDataOutBus(79) <= nextState_1 ;
   ramDataOutBus(78) <= nextState_1 ;
   ramDataOutBus(77) <= nextState_1 ;
   ramDataOutBus(76) <= nextState_1 ;
   ramDataOutBus(75) <= nextState_1 ;
   ramDataOutBus(74) <= nextState_1 ;
   ramDataOutBus(73) <= nextState_1 ;
   ramDataOutBus(72) <= nextState_1 ;
   ramDataOutBus(71) <= nextState_1 ;
   ramDataOutBus(70) <= nextState_1 ;
   ramDataOutBus(69) <= nextState_1 ;
   ramDataOutBus(68) <= nextState_1 ;
   ramDataOutBus(67) <= nextState_1 ;
   ramDataOutBus(66) <= nextState_1 ;
   ramDataOutBus(65) <= nextState_1 ;
   ramDataOutBus(64) <= nextState_1 ;
   ramDataOutBus(63) <= nextState_1 ;
   ramDataOutBus(62) <= nextState_1 ;
   ramDataOutBus(61) <= nextState_1 ;
   ramDataOutBus(60) <= nextState_1 ;
   ramDataOutBus(59) <= nextState_1 ;
   ramDataOutBus(58) <= nextState_1 ;
   ramDataOutBus(57) <= nextState_1 ;
   ramDataOutBus(56) <= nextState_1 ;
   ramDataOutBus(55) <= nextState_1 ;
   ramDataOutBus(54) <= nextState_1 ;
   ramDataOutBus(53) <= nextState_1 ;
   ramDataOutBus(52) <= nextState_1 ;
   ramDataOutBus(51) <= nextState_1 ;
   ramDataOutBus(50) <= nextState_1 ;
   ramDataOutBus(49) <= nextState_1 ;
   ramDataOutBus(48) <= nextState_1 ;
   ramDataOutBus(47) <= nextState_1 ;
   ramDataOutBus(46) <= nextState_1 ;
   ramDataOutBus(45) <= nextState_1 ;
   ramDataOutBus(44) <= nextState_1 ;
   ramDataOutBus(43) <= nextState_1 ;
   ramDataOutBus(42) <= nextState_1 ;
   ramDataOutBus(41) <= nextState_1 ;
   ramDataOutBus(40) <= nextState_1 ;
   ramDataOutBus(39) <= nextState_1 ;
   ramDataOutBus(38) <= nextState_1 ;
   ramDataOutBus(37) <= nextState_1 ;
   ramDataOutBus(36) <= nextState_1 ;
   ramDataOutBus(35) <= nextState_1 ;
   ramDataOutBus(34) <= nextState_1 ;
   ramDataOutBus(33) <= nextState_1 ;
   ramDataOutBus(32) <= nextState_1 ;
   ramDataOutBus(31) <= nextState_1 ;
   ramDataOutBus(30) <= nextState_1 ;
   ramDataOutBus(29) <= nextState_1 ;
   ramDataOutBus(28) <= nextState_1 ;
   ramDataOutBus(27) <= nextState_1 ;
   ramDataOutBus(26) <= nextState_1 ;
   ramDataOutBus(25) <= nextState_1 ;
   ramDataOutBus(24) <= nextState_1 ;
   ramDataOutBus(23) <= nextState_1 ;
   ramDataOutBus(22) <= nextState_1 ;
   ramDataOutBus(21) <= nextState_1 ;
   ramDataOutBus(20) <= nextState_1 ;
   ramDataOutBus(19) <= nextState_1 ;
   ramDataOutBus(18) <= nextState_1 ;
   ramDataOutBus(17) <= nextState_1 ;
   ramDataOutBus(16) <= nextState_1 ;
   ramDataOutBus(15) <= nextState_1 ;
   ramDataOutBus(14) <= nextState_1 ;
   ramDataOutBus(13) <= nextState_1 ;
   ramDataOutBus(12) <= nextState_1 ;
   ramDataOutBus(11) <= nextState_1 ;
   ramDataOutBus(10) <= nextState_1 ;
   ramDataOutBus(9) <= nextState_1 ;
   ramDataOutBus(8) <= nextState_1 ;
   ramDataOutBus(7) <= nextState_1 ;
   ramDataOutBus(6) <= nextState_1 ;
   ramDataOutBus(5) <= nextState_1 ;
   ramDataOutBus(4) <= nextState_1 ;
   ramDataOutBus(3) <= nextState_1 ;
   ramDataOutBus(2) <= nextState_1 ;
   ramDataOutBus(1) <= nextState_1 ;
   ramDataOutBus(0) <= nextState_1 ;
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
      internalBus(79)=>nextState_1, internalBus(78)=>nextState_1, 
      internalBus(77)=>nextState_1, internalBus(76)=>nextState_1, 
      internalBus(75)=>nextState_1, internalBus(74)=>nextState_1, 
      internalBus(73)=>nextState_1, internalBus(72)=>nextState_1, 
      internalBus(71)=>nextState_1, internalBus(70)=>nextState_1, 
      internalBus(69)=>nextState_1, internalBus(68)=>nextState_1, 
      internalBus(67)=>nextState_1, internalBus(66)=>nextState_1, 
      internalBus(65)=>nextState_1, internalBus(64)=>nextState_1, 
      internalBus(63)=>nextState_1, internalBus(62)=>nextState_1, 
      internalBus(61)=>nextState_1, internalBus(60)=>nextState_1, 
      internalBus(59)=>nextState_1, internalBus(58)=>nextState_1, 
      internalBus(57)=>nextState_1, internalBus(56)=>nextState_1, 
      internalBus(55)=>nextState_1, internalBus(54)=>nextState_1, 
      internalBus(53)=>nextState_1, internalBus(52)=>nextState_1, 
      internalBus(51)=>nextState_1, internalBus(50)=>nextState_1, 
      internalBus(49)=>nextState_1, internalBus(48)=>nextState_1, 
      internalBus(47)=>nextState_1, internalBus(46)=>nextState_1, 
      internalBus(45)=>nextState_1, internalBus(44)=>nextState_1, 
      internalBus(43)=>nextState_1, internalBus(42)=>nextState_1, 
      internalBus(41)=>nextState_1, internalBus(40)=>nextState_1, 
      internalBus(39)=>nextState_1, internalBus(38)=>nextState_1, 
      internalBus(37)=>nextState_1, internalBus(36)=>nextState_1, 
      internalBus(35)=>nextState_1, internalBus(34)=>nextState_1, 
      internalBus(33)=>nextState_1, internalBus(32)=>nextState_1, 
      internalBus(31)=>nextState_1, internalBus(30)=>nextState_1, 
      internalBus(29)=>nextState_1, internalBus(28)=>nextState_1, 
      internalBus(27)=>nextState_1, internalBus(26)=>nextState_1, 
      internalBus(25)=>nextState_1, internalBus(24)=>nextState_1, 
      internalBus(23)=>nextState_1, internalBus(22)=>nextState_1, 
      internalBus(21)=>nextState_1, internalBus(20)=>nextState_1, 
      internalBus(19)=>nextState_1, internalBus(18)=>nextState_1, 
      internalBus(17)=>nextState_1, internalBus(16)=>nextState_1, 
      internalBus(15)=>nextState_1, internalBus(14)=>nextState_1, 
      internalBus(13)=>nextState_1, internalBus(12)=>nextState_1, 
      internalBus(11)=>nextState_1, internalBus(10)=>nextState_1, 
      internalBus(9)=>nextState_1, internalBus(8)=>nextState_1, 
      internalBus(7)=>nextState_1, internalBus(6)=>nextState_1, 
      internalBus(5)=>nextState_1, internalBus(4)=>nextState_1, 
      internalBus(3)=>nextState_1, internalBus(2)=>nextState_1, 
      internalBus(1)=>nextState_1, internalBus(0)=>nextState_1, ramWrite=>
      DANGLING(0), ramDataOutBus(79)=>DANGLING(1), ramDataOutBus(78)=>
      DANGLING(2), ramDataOutBus(77)=>DANGLING(3), ramDataOutBus(76)=>
      DANGLING(4), ramDataOutBus(75)=>DANGLING(5), ramDataOutBus(74)=>
      DANGLING(6), ramDataOutBus(73)=>DANGLING(7), ramDataOutBus(72)=>
      DANGLING(8), ramDataOutBus(71)=>DANGLING(9), ramDataOutBus(70)=>
      DANGLING(10), ramDataOutBus(69)=>DANGLING(11), ramDataOutBus(68)=>
      DANGLING(12), ramDataOutBus(67)=>DANGLING(13), ramDataOutBus(66)=>
      DANGLING(14), ramDataOutBus(65)=>DANGLING(15), ramDataOutBus(64)=>
      DANGLING(16), ramDataOutBus(63)=>DANGLING(17), ramDataOutBus(62)=>
      DANGLING(18), ramDataOutBus(61)=>DANGLING(19), ramDataOutBus(60)=>
      DANGLING(20), ramDataOutBus(59)=>DANGLING(21), ramDataOutBus(58)=>
      DANGLING(22), ramDataOutBus(57)=>DANGLING(23), ramDataOutBus(56)=>
      DANGLING(24), ramDataOutBus(55)=>DANGLING(25), ramDataOutBus(54)=>
      DANGLING(26), ramDataOutBus(53)=>DANGLING(27), ramDataOutBus(52)=>
      DANGLING(28), ramDataOutBus(51)=>DANGLING(29), ramDataOutBus(50)=>
      DANGLING(30), ramDataOutBus(49)=>DANGLING(31), ramDataOutBus(48)=>
      DANGLING(32), ramDataOutBus(47)=>DANGLING(33), ramDataOutBus(46)=>
      DANGLING(34), ramDataOutBus(45)=>DANGLING(35), ramDataOutBus(44)=>
      DANGLING(36), ramDataOutBus(43)=>DANGLING(37), ramDataOutBus(42)=>
      DANGLING(38), ramDataOutBus(41)=>DANGLING(39), ramDataOutBus(40)=>
      DANGLING(40), ramDataOutBus(39)=>DANGLING(41), ramDataOutBus(38)=>
      DANGLING(42), ramDataOutBus(37)=>DANGLING(43), ramDataOutBus(36)=>
      DANGLING(44), ramDataOutBus(35)=>DANGLING(45), ramDataOutBus(34)=>
      DANGLING(46), ramDataOutBus(33)=>DANGLING(47), ramDataOutBus(32)=>
      DANGLING(48), ramDataOutBus(31)=>DANGLING(49), ramDataOutBus(30)=>
      DANGLING(50), ramDataOutBus(29)=>DANGLING(51), ramDataOutBus(28)=>
      DANGLING(52), ramDataOutBus(27)=>DANGLING(53), ramDataOutBus(26)=>
      DANGLING(54), ramDataOutBus(25)=>DANGLING(55), ramDataOutBus(24)=>
      DANGLING(56), ramDataOutBus(23)=>DANGLING(57), ramDataOutBus(22)=>
      DANGLING(58), ramDataOutBus(21)=>DANGLING(59), ramDataOutBus(20)=>
      DANGLING(60), ramDataOutBus(19)=>DANGLING(61), ramDataOutBus(18)=>
      DANGLING(62), ramDataOutBus(17)=>DANGLING(63), ramDataOutBus(16)=>
      DANGLING(64), ramDataOutBus(15)=>DANGLING(65), ramDataOutBus(14)=>
      DANGLING(66), ramDataOutBus(13)=>DANGLING(67), ramDataOutBus(12)=>
      DANGLING(68), ramDataOutBus(11)=>DANGLING(69), ramDataOutBus(10)=>
      DANGLING(70), ramDataOutBus(9)=>DANGLING(71), ramDataOutBus(8)=>
      DANGLING(72), ramDataOutBus(7)=>DANGLING(73), ramDataOutBus(6)=>
      DANGLING(74), ramDataOutBus(5)=>DANGLING(75), ramDataOutBus(4)=>
      DANGLING(76), ramDataOutBus(3)=>DANGLING(77), ramDataOutBus(2)=>
      DANGLING(78), ramDataOutBus(1)=>DANGLING(79), ramDataOutBus(0)=>
      DANGLING(80), ramWriteAddress(12)=>ramAddress(12), ramWriteAddress(11)
      =>ramAddress(11), ramWriteAddress(10)=>ramAddress(10), 
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
      clk=>baseAddressCounterClk, isLoad=>currentState_1, count(12)=>
      addressRegOut_12, count(11)=>addressRegOut_11, count(10)=>
      addressRegOut_10, count(9)=>addressRegOut_9, count(8)=>addressRegOut_8, 
      count(7)=>addressRegOut_7, count(6)=>addressRegOut_6, count(5)=>
      addressRegOut_5, count(4)=>addressRegOut_4, count(3)=>addressRegOut_3, 
      count(2)=>addressRegOut_2, count(1)=>addressRegOut_1, count(0)=>
      addressRegOut_0);
   ix6 : fake_gnd port map ( Y=>nextState_1);
   ix49 : nor02_2x port map ( Y=>ramWrite_EXMPLR, A0=>nx91, A1=>nx93);
   ix92 : inv01 port map ( Y=>nx91, A=>write);
   ix80 : mux21 port map ( Y=>nx79, A0=>nx96, A1=>nx93, S0=>nx128);
   ix97 : nand02 port map ( Y=>nx96, A0=>nx98, A1=>currentState_3);
   ix99 : inv01 port map ( Y=>nx98, A=>switchRam);
   ix70 : mux21 port map ( Y=>nx69, A0=>nx102, A1=>nx134, S0=>nx128);
   ix103 : nand02 port map ( Y=>nx102, A0=>nx98, A1=>currentState_2);
   ix60 : mux21 port map ( Y=>nx59, A0=>nx106, A1=>nx132, S0=>nx128);
   ix107 : nand02 port map ( Y=>nx106, A0=>nx98, A1=>currentState_0);
   ix50 : mux21 port map ( Y=>nx49, A0=>nx110, A1=>nx126, S0=>nx128);
   ix111 : oai21 port map ( Y=>nx110, A0=>currentState_1, A1=>currentState_4, 
      B0=>nx98);
   ix40 : oai21 port map ( Y=>nx39, A0=>nx196, A1=>nx31, B0=>nx98);
   reg_currentState_1 : dff port map ( Q=>currentState_1, QB=>OPEN, D=>nx39, 
      CLK=>NOT_clk);
   ix117 : inv01 port map ( Y=>NOT_clk, A=>clk);
   ix29 : nand04 port map ( Y=>nx31, A0=>nx119, A1=>nx98, A2=>nx122, A3=>
      nx124);
   ix120 : nand02 port map ( Y=>nx119, A0=>writeDone_EXMPLR, A1=>
      currentState_4);
   reg_currentState_4 : dff port map ( Q=>currentState_4, QB=>nx93, D=>nx79, 
      CLK=>NOT_clk);
   ix123 : nand02 port map ( Y=>nx122, A0=>write, A1=>currentState_0);
   ix125 : nand02 port map ( Y=>nx124, A0=>nx93, A1=>nx126);
   reg_currentState_0 : dff port map ( Q=>currentState_0, QB=>nx126, D=>nx49, 
      CLK=>NOT_clk);
   ix129 : nor02_2x port map ( Y=>nx128, A0=>nx26, A1=>nx22);
   ix27 : nand02 port map ( Y=>nx26, A0=>nx119, A1=>nx98);
   ix23 : nand02 port map ( Y=>nx22, A0=>nx122, A1=>nx124);
   reg_currentState_2 : dff port map ( Q=>currentState_2, QB=>nx132, D=>nx59, 
      CLK=>NOT_clk);
   reg_currentState_3 : dff port map ( Q=>currentState_3, QB=>nx134, D=>nx69, 
      CLK=>NOT_clk);
   ix51 : nor02_2x port map ( Y=>dmaCountIn_0, A0=>nx137, A1=>nx132);
   ix138 : inv01 port map ( Y=>nx137, A=>outputSize(0));
   ix53 : nor02_2x port map ( Y=>dmaCountIn_1, A0=>nx140, A1=>nx132);
   ix141 : inv01 port map ( Y=>nx140, A=>outputSize(1));
   ix55 : nor02_2x port map ( Y=>dmaCountIn_2, A0=>nx143, A1=>nx132);
   ix144 : inv01 port map ( Y=>nx143, A=>outputSize(2));
   ix57 : nor02_2x port map ( Y=>dmaCountIn_3, A0=>nx146, A1=>nx132);
   ix147 : inv01 port map ( Y=>nx146, A=>outputSize(3));
   ix59 : nor02_2x port map ( Y=>dmaCountIn_4, A0=>nx149, A1=>nx132);
   ix150 : inv01 port map ( Y=>nx149, A=>outputSize(4));
   ix61 : nor02_2x port map ( Y=>addressRegIn_0, A0=>nx152, A1=>nx196);
   ix153 : inv01 port map ( Y=>nx152, A=>ramBasedAddress(0));
   ix63 : nor02_2x port map ( Y=>addressRegIn_1, A0=>nx155, A1=>nx196);
   ix156 : inv01 port map ( Y=>nx155, A=>ramBasedAddress(1));
   ix65 : nor02_2x port map ( Y=>addressRegIn_2, A0=>nx158, A1=>nx196);
   ix159 : inv01 port map ( Y=>nx158, A=>ramBasedAddress(2));
   ix67 : nor02_2x port map ( Y=>addressRegIn_3, A0=>nx161, A1=>nx196);
   ix162 : inv01 port map ( Y=>nx161, A=>ramBasedAddress(3));
   ix69 : nor02_2x port map ( Y=>addressRegIn_4, A0=>nx164, A1=>nx196);
   ix165 : inv01 port map ( Y=>nx164, A=>ramBasedAddress(4));
   ix71 : nor02_2x port map ( Y=>addressRegIn_5, A0=>nx167, A1=>nx196);
   ix168 : inv01 port map ( Y=>nx167, A=>ramBasedAddress(5));
   ix73 : nor02_2x port map ( Y=>addressRegIn_6, A0=>nx170, A1=>nx198);
   ix171 : inv01 port map ( Y=>nx170, A=>ramBasedAddress(6));
   ix75 : nor02_2x port map ( Y=>addressRegIn_7, A0=>nx173, A1=>nx198);
   ix174 : inv01 port map ( Y=>nx173, A=>ramBasedAddress(7));
   ix77 : nor02_2x port map ( Y=>addressRegIn_8, A0=>nx176, A1=>nx198);
   ix177 : inv01 port map ( Y=>nx176, A=>ramBasedAddress(8));
   ix79 : nor02_2x port map ( Y=>addressRegIn_9, A0=>nx179, A1=>nx198);
   ix180 : inv01 port map ( Y=>nx179, A=>ramBasedAddress(9));
   ix81 : nor02_2x port map ( Y=>addressRegIn_10, A0=>nx182, A1=>nx198);
   ix183 : inv01 port map ( Y=>nx182, A=>ramBasedAddress(10));
   ix83 : nor02_2x port map ( Y=>addressRegIn_11, A0=>nx185, A1=>nx198);
   ix186 : inv01 port map ( Y=>nx185, A=>ramBasedAddress(11));
   ix85 : nor02_2x port map ( Y=>addressRegIn_12, A0=>nx188, A1=>nx198);
   ix189 : inv01 port map ( Y=>nx188, A=>ramBasedAddress(12));
   ix93 : mux21 port map ( Y=>baseAddressCounterClk, A0=>nx200, A1=>nx134, 
      S0=>clk);
   ix195 : inv02 port map ( Y=>nx196, A=>currentState_1);
   ix197 : inv02 port map ( Y=>nx198, A=>currentState_1);
   ix199 : inv02 port map ( Y=>nx200, A=>currentState_1);
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
      loadOneWord : IN std_logic ;
      loadTwoWord : IN std_logic ;
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
   component ReadLogic_13_80_false
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
   component ReadLogic_12_40_true
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
      writeLogicRamAddress_0, switchRam, filterStep_2, filterStep_1, 
      filterStep_0, loadWord, resetLogics, weightsSizeForWindow_0, 
      ramBaseAddressSelector, NOT_ramBaseAddressSelector, 
      NOT_weightsSizeType_dup_876, nx882, nx885, nx888, nx892, nx895, nx900, 
      nx903, nx905, nx908, nx910, nx913, nx915, nx918, nx920, nx923, nx925, 
      nx928, nx930, nx933, nx935, nx938, nx940, nx943, nx945, nx948, nx950, 
      nx953, nx955, nx958, nx960, nx963, nx965, nx968, nx970, nx973, nx975, 
      nx978, nx980, nx983, nx985, nx988, nx990, nx993, nx995, nx998, nx1000, 
      nx1003, nx1005, nx1008, nx1010, nx1013, nx1015, nx1018, nx1020, nx1023, 
      nx1025, nx1028, nx1030, nx1035, nx1037, nx1040, nx1042, nx1045, nx1047, 
      nx1050, nx1052, nx1055, nx1057, nx1060, nx1062, nx1065, nx1067, nx1070, 
      nx1072, nx1075, nx1077, nx1080, nx1082, nx1085, nx1087, nx1090, nx1092, 
      nx1099, nx1101, nx1103, nx1105, nx1107, nx1109, nx1111, nx1113, nx1115, 
      nx1117, nx1119: std_logic ;
   
   signal DANGLING : std_logic_vector (79 downto 0 );

begin
   windowRamDataOutBus(79) <= windowInternalBus(79) ;
   windowRamDataOutBus(78) <= windowInternalBus(78) ;
   windowRamDataOutBus(77) <= windowInternalBus(77) ;
   windowRamDataOutBus(76) <= windowInternalBus(76) ;
   windowRamDataOutBus(75) <= windowInternalBus(75) ;
   windowRamDataOutBus(74) <= windowInternalBus(74) ;
   windowRamDataOutBus(73) <= windowInternalBus(73) ;
   windowRamDataOutBus(72) <= windowInternalBus(72) ;
   windowRamDataOutBus(71) <= windowInternalBus(71) ;
   windowRamDataOutBus(70) <= windowInternalBus(70) ;
   windowRamDataOutBus(69) <= windowInternalBus(69) ;
   windowRamDataOutBus(68) <= windowInternalBus(68) ;
   windowRamDataOutBus(67) <= windowInternalBus(67) ;
   windowRamDataOutBus(66) <= windowInternalBus(66) ;
   windowRamDataOutBus(65) <= windowInternalBus(65) ;
   windowRamDataOutBus(64) <= windowInternalBus(64) ;
   windowRamDataOutBus(63) <= windowInternalBus(63) ;
   windowRamDataOutBus(62) <= windowInternalBus(62) ;
   windowRamDataOutBus(61) <= windowInternalBus(61) ;
   windowRamDataOutBus(60) <= windowInternalBus(60) ;
   windowRamDataOutBus(59) <= windowInternalBus(59) ;
   windowRamDataOutBus(58) <= windowInternalBus(58) ;
   windowRamDataOutBus(57) <= windowInternalBus(57) ;
   windowRamDataOutBus(56) <= windowInternalBus(56) ;
   windowRamDataOutBus(55) <= windowInternalBus(55) ;
   windowRamDataOutBus(54) <= windowInternalBus(54) ;
   windowRamDataOutBus(53) <= windowInternalBus(53) ;
   windowRamDataOutBus(52) <= windowInternalBus(52) ;
   windowRamDataOutBus(51) <= windowInternalBus(51) ;
   windowRamDataOutBus(50) <= windowInternalBus(50) ;
   windowRamDataOutBus(49) <= windowInternalBus(49) ;
   windowRamDataOutBus(48) <= windowInternalBus(48) ;
   windowRamDataOutBus(47) <= windowInternalBus(47) ;
   windowRamDataOutBus(46) <= windowInternalBus(46) ;
   windowRamDataOutBus(45) <= windowInternalBus(45) ;
   windowRamDataOutBus(44) <= windowInternalBus(44) ;
   windowRamDataOutBus(43) <= windowInternalBus(43) ;
   windowRamDataOutBus(42) <= windowInternalBus(42) ;
   windowRamDataOutBus(41) <= windowInternalBus(41) ;
   windowRamDataOutBus(40) <= windowInternalBus(40) ;
   windowRamDataOutBus(39) <= windowInternalBus(39) ;
   windowRamDataOutBus(38) <= windowInternalBus(38) ;
   windowRamDataOutBus(37) <= windowInternalBus(37) ;
   windowRamDataOutBus(36) <= windowInternalBus(36) ;
   windowRamDataOutBus(35) <= windowInternalBus(35) ;
   windowRamDataOutBus(34) <= windowInternalBus(34) ;
   windowRamDataOutBus(33) <= windowInternalBus(33) ;
   windowRamDataOutBus(32) <= windowInternalBus(32) ;
   windowRamDataOutBus(31) <= windowInternalBus(31) ;
   windowRamDataOutBus(30) <= windowInternalBus(30) ;
   windowRamDataOutBus(29) <= windowInternalBus(29) ;
   windowRamDataOutBus(28) <= windowInternalBus(28) ;
   windowRamDataOutBus(27) <= windowInternalBus(27) ;
   windowRamDataOutBus(26) <= windowInternalBus(26) ;
   windowRamDataOutBus(25) <= windowInternalBus(25) ;
   windowRamDataOutBus(24) <= windowInternalBus(24) ;
   windowRamDataOutBus(23) <= windowInternalBus(23) ;
   windowRamDataOutBus(22) <= windowInternalBus(22) ;
   windowRamDataOutBus(21) <= windowInternalBus(21) ;
   windowRamDataOutBus(20) <= windowInternalBus(20) ;
   windowRamDataOutBus(19) <= windowInternalBus(19) ;
   windowRamDataOutBus(18) <= windowInternalBus(18) ;
   windowRamDataOutBus(17) <= windowInternalBus(17) ;
   windowRamDataOutBus(16) <= windowInternalBus(16) ;
   windowRamDataOutBus(15) <= windowInternalBus(15) ;
   windowRamDataOutBus(14) <= windowInternalBus(14) ;
   windowRamDataOutBus(13) <= windowInternalBus(13) ;
   windowRamDataOutBus(12) <= windowInternalBus(12) ;
   windowRamDataOutBus(11) <= windowInternalBus(11) ;
   windowRamDataOutBus(10) <= windowInternalBus(10) ;
   windowRamDataOutBus(9) <= windowInternalBus(9) ;
   windowRamDataOutBus(8) <= windowInternalBus(8) ;
   windowRamDataOutBus(7) <= windowInternalBus(7) ;
   windowRamDataOutBus(6) <= windowInternalBus(6) ;
   windowRamDataOutBus(5) <= windowInternalBus(5) ;
   windowRamDataOutBus(4) <= windowInternalBus(4) ;
   windowRamDataOutBus(3) <= windowInternalBus(3) ;
   windowRamDataOutBus(2) <= windowInternalBus(2) ;
   windowRamDataOutBus(1) <= windowInternalBus(1) ;
   windowRamDataOutBus(0) <= windowInternalBus(0) ;
   windowReadLogicEnt : ReadLogic_13_80_false port map ( clk=>clk, 
      resetState=>resetLogics, switchRam=>switchRam, ramBasedAddress(12)=>
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
      filterSize(2)=>weightsSizeType, filterSize(1)=>
      NOT_weightsSizeType_dup_876, filterSize(0)=>weightsSizeForWindow_0, 
      isFilter=>resetLogics, loadNextWordList=>loadNextWindow, loadWord=>
      loadNextRow, readOne=>windowReadOne, readFinal=>windowReadFinal, 
      aluNumber(2)=>windowAluNumber(2), aluNumber(1)=>windowAluNumber(1), 
      aluNumber(0)=>windowAluNumber(0));
   filterReadLogicEnt : ReadLogic_12_40_true port map ( clk=>clk, resetState
      =>resetLogics, switchRam=>reset, ramBasedAddress(11)=>
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
      inputSize(3)=>resetLogics, inputSize(2)=>filterStep_2, inputSize(1)=>
      filterStep_1, inputSize(0)=>filterStep_0, filterSize(11)=>resetLogics, 
      filterSize(10)=>resetLogics, filterSize(9)=>resetLogics, filterSize(8)
      =>resetLogics, filterSize(7)=>resetLogics, filterSize(6)=>resetLogics, 
      filterSize(5)=>resetLogics, filterSize(4)=>resetLogics, filterSize(3)
      =>resetLogics, filterSize(2)=>weightsSizeType, filterSize(1)=>
      NOT_weightsSizeType_dup_876, filterSize(0)=>weightsSizeForWindow_0, 
      isFilter=>weightsSizeForWindow_0, loadNextWordList=>loadNextFilter, 
      loadWord=>loadWord, readOne=>weightsReadOne, readFinal=>
      weightsReadFinal, aluNumber(2)=>filterAluNumber(2), aluNumber(1)=>
      filterAluNumber(1), aluNumber(0)=>filterAluNumber(0));
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
      currentWriteRamBaseAddress_0, internalBus(79)=>resetLogics, 
      internalBus(78)=>resetLogics, internalBus(77)=>resetLogics, 
      internalBus(76)=>resetLogics, internalBus(75)=>resetLogics, 
      internalBus(74)=>resetLogics, internalBus(73)=>resetLogics, 
      internalBus(72)=>resetLogics, internalBus(71)=>resetLogics, 
      internalBus(70)=>resetLogics, internalBus(69)=>resetLogics, 
      internalBus(68)=>resetLogics, internalBus(67)=>resetLogics, 
      internalBus(66)=>resetLogics, internalBus(65)=>resetLogics, 
      internalBus(64)=>resetLogics, internalBus(63)=>resetLogics, 
      internalBus(62)=>resetLogics, internalBus(61)=>resetLogics, 
      internalBus(60)=>resetLogics, internalBus(59)=>resetLogics, 
      internalBus(58)=>resetLogics, internalBus(57)=>resetLogics, 
      internalBus(56)=>resetLogics, internalBus(55)=>resetLogics, 
      internalBus(54)=>resetLogics, internalBus(53)=>resetLogics, 
      internalBus(52)=>resetLogics, internalBus(51)=>resetLogics, 
      internalBus(50)=>resetLogics, internalBus(49)=>resetLogics, 
      internalBus(48)=>resetLogics, internalBus(47)=>resetLogics, 
      internalBus(46)=>resetLogics, internalBus(45)=>resetLogics, 
      internalBus(44)=>resetLogics, internalBus(43)=>resetLogics, 
      internalBus(42)=>resetLogics, internalBus(41)=>resetLogics, 
      internalBus(40)=>resetLogics, internalBus(39)=>resetLogics, 
      internalBus(38)=>resetLogics, internalBus(37)=>resetLogics, 
      internalBus(36)=>resetLogics, internalBus(35)=>resetLogics, 
      internalBus(34)=>resetLogics, internalBus(33)=>resetLogics, 
      internalBus(32)=>resetLogics, internalBus(31)=>resetLogics, 
      internalBus(30)=>resetLogics, internalBus(29)=>resetLogics, 
      internalBus(28)=>resetLogics, internalBus(27)=>resetLogics, 
      internalBus(26)=>resetLogics, internalBus(25)=>resetLogics, 
      internalBus(24)=>resetLogics, internalBus(23)=>resetLogics, 
      internalBus(22)=>resetLogics, internalBus(21)=>resetLogics, 
      internalBus(20)=>resetLogics, internalBus(19)=>resetLogics, 
      internalBus(18)=>resetLogics, internalBus(17)=>resetLogics, 
      internalBus(16)=>resetLogics, internalBus(15)=>resetLogics, 
      internalBus(14)=>resetLogics, internalBus(13)=>resetLogics, 
      internalBus(12)=>resetLogics, internalBus(11)=>resetLogics, 
      internalBus(10)=>resetLogics, internalBus(9)=>resetLogics, 
      internalBus(8)=>resetLogics, internalBus(7)=>resetLogics, 
      internalBus(6)=>resetLogics, internalBus(5)=>resetLogics, 
      internalBus(4)=>resetLogics, internalBus(3)=>resetLogics, 
      internalBus(2)=>resetLogics, internalBus(1)=>resetLogics, 
      internalBus(0)=>resetLogics, ramWrite=>windowRamWrite, 
      ramDataOutBus(79)=>DANGLING(0), ramDataOutBus(78)=>DANGLING(1), 
      ramDataOutBus(77)=>DANGLING(2), ramDataOutBus(76)=>DANGLING(3), 
      ramDataOutBus(75)=>DANGLING(4), ramDataOutBus(74)=>DANGLING(5), 
      ramDataOutBus(73)=>DANGLING(6), ramDataOutBus(72)=>DANGLING(7), 
      ramDataOutBus(71)=>DANGLING(8), ramDataOutBus(70)=>DANGLING(9), 
      ramDataOutBus(69)=>DANGLING(10), ramDataOutBus(68)=>DANGLING(11), 
      ramDataOutBus(67)=>DANGLING(12), ramDataOutBus(66)=>DANGLING(13), 
      ramDataOutBus(65)=>DANGLING(14), ramDataOutBus(64)=>DANGLING(15), 
      ramDataOutBus(63)=>DANGLING(16), ramDataOutBus(62)=>DANGLING(17), 
      ramDataOutBus(61)=>DANGLING(18), ramDataOutBus(60)=>DANGLING(19), 
      ramDataOutBus(59)=>DANGLING(20), ramDataOutBus(58)=>DANGLING(21), 
      ramDataOutBus(57)=>DANGLING(22), ramDataOutBus(56)=>DANGLING(23), 
      ramDataOutBus(55)=>DANGLING(24), ramDataOutBus(54)=>DANGLING(25), 
      ramDataOutBus(53)=>DANGLING(26), ramDataOutBus(52)=>DANGLING(27), 
      ramDataOutBus(51)=>DANGLING(28), ramDataOutBus(50)=>DANGLING(29), 
      ramDataOutBus(49)=>DANGLING(30), ramDataOutBus(48)=>DANGLING(31), 
      ramDataOutBus(47)=>DANGLING(32), ramDataOutBus(46)=>DANGLING(33), 
      ramDataOutBus(45)=>DANGLING(34), ramDataOutBus(44)=>DANGLING(35), 
      ramDataOutBus(43)=>DANGLING(36), ramDataOutBus(42)=>DANGLING(37), 
      ramDataOutBus(41)=>DANGLING(38), ramDataOutBus(40)=>DANGLING(39), 
      ramDataOutBus(39)=>DANGLING(40), ramDataOutBus(38)=>DANGLING(41), 
      ramDataOutBus(37)=>DANGLING(42), ramDataOutBus(36)=>DANGLING(43), 
      ramDataOutBus(35)=>DANGLING(44), ramDataOutBus(34)=>DANGLING(45), 
      ramDataOutBus(33)=>DANGLING(46), ramDataOutBus(32)=>DANGLING(47), 
      ramDataOutBus(31)=>DANGLING(48), ramDataOutBus(30)=>DANGLING(49), 
      ramDataOutBus(29)=>DANGLING(50), ramDataOutBus(28)=>DANGLING(51), 
      ramDataOutBus(27)=>DANGLING(52), ramDataOutBus(26)=>DANGLING(53), 
      ramDataOutBus(25)=>DANGLING(54), ramDataOutBus(24)=>DANGLING(55), 
      ramDataOutBus(23)=>DANGLING(56), ramDataOutBus(22)=>DANGLING(57), 
      ramDataOutBus(21)=>DANGLING(58), ramDataOutBus(20)=>DANGLING(59), 
      ramDataOutBus(19)=>DANGLING(60), ramDataOutBus(18)=>DANGLING(61), 
      ramDataOutBus(17)=>DANGLING(62), ramDataOutBus(16)=>DANGLING(63), 
      ramDataOutBus(15)=>DANGLING(64), ramDataOutBus(14)=>DANGLING(65), 
      ramDataOutBus(13)=>DANGLING(66), ramDataOutBus(12)=>DANGLING(67), 
      ramDataOutBus(11)=>DANGLING(68), ramDataOutBus(10)=>DANGLING(69), 
      ramDataOutBus(9)=>DANGLING(70), ramDataOutBus(8)=>DANGLING(71), 
      ramDataOutBus(7)=>DANGLING(72), ramDataOutBus(6)=>DANGLING(73), 
      ramDataOutBus(5)=>DANGLING(74), ramDataOutBus(4)=>DANGLING(75), 
      ramDataOutBus(3)=>DANGLING(76), ramDataOutBus(2)=>DANGLING(77), 
      ramDataOutBus(1)=>DANGLING(78), ramDataOutBus(0)=>DANGLING(79), 
      ramAddress(12)=>writeLogicRamAddress_12, ramAddress(11)=>
      writeLogicRamAddress_11, ramAddress(10)=>writeLogicRamAddress_10, 
      ramAddress(9)=>writeLogicRamAddress_9, ramAddress(8)=>
      writeLogicRamAddress_8, ramAddress(7)=>writeLogicRamAddress_7, 
      ramAddress(6)=>writeLogicRamAddress_6, ramAddress(5)=>
      writeLogicRamAddress_5, ramAddress(4)=>writeLogicRamAddress_4, 
      ramAddress(3)=>writeLogicRamAddress_3, ramAddress(2)=>
      writeLogicRamAddress_2, ramAddress(1)=>writeLogicRamAddress_1, 
      ramAddress(0)=>writeLogicRamAddress_0, MFC=>MFCWindowRam, 
      outputSize(12)=>outputSize(12), outputSize(11)=>outputSize(11), 
      outputSize(10)=>outputSize(10), outputSize(9)=>outputSize(9), 
      outputSize(8)=>outputSize(8), outputSize(7)=>outputSize(7), 
      outputSize(6)=>outputSize(6), outputSize(5)=>outputSize(5), 
      outputSize(4)=>outputSize(4), outputSize(3)=>outputSize(3), 
      outputSize(2)=>outputSize(2), outputSize(1)=>outputSize(1), 
      outputSize(0)=>outputSize(0), write=>write, writeDone=>writeDoneAll, 
      writeDoneOne=>writeDoneOne);
   ix878 : inv01 port map ( Y=>NOT_weightsSizeType_dup_876, A=>
      weightsSizeType);
   ix817 : fake_vcc port map ( Y=>weightsSizeForWindow_0);
   ix815 : fake_gnd port map ( Y=>resetLogics);
   ix331 : inv01 port map ( Y=>loadWord, A=>nx882);
   ix883 : nor02_2x port map ( Y=>nx882, A0=>loadOneWord, A1=>loadTwoWord);
   ix321 : nand02 port map ( Y=>filterStep_0, A0=>nx885, A1=>loadTwoWord);
   ix886 : inv01 port map ( Y=>nx885, A=>loadOneWord);
   ix329 : nor02_2x port map ( Y=>filterStep_1, A0=>loadOneWord, A1=>nx888);
   ix889 : nor02_2x port map ( Y=>nx888, A0=>NOT_weightsSizeType_dup_876, A1
      =>loadTwoWord);
   ix335 : nor02_2x port map ( Y=>filterStep_2, A0=>
      NOT_weightsSizeType_dup_876, A1=>loadWord);
   ix337 : inv01 port map ( Y=>switchRam, A=>nx892);
   ix893 : nor02_2x port map ( Y=>nx892, A0=>reset, A1=>layerFinished);
   ix117 : nand02 port map ( Y=>currentWriteRamBaseAddress_0, A0=>nx895, A1
      =>nx900);
   ix896 : nand02 port map ( Y=>nx895, A0=>windowRamBaseAddress1(0), A1=>
      nx1099);
   reg_ramBaseAddressSelector : dffr port map ( Q=>ramBaseAddressSelector, 
      QB=>NOT_ramBaseAddressSelector, D=>NOT_ramBaseAddressSelector, CLK=>
      layerFinished, R=>reset);
   ix901 : nand02 port map ( Y=>nx900, A0=>windowRamBaseAddress2(0), A1=>
      nx1107);
   ix125 : nand02 port map ( Y=>currentWriteRamBaseAddress_1, A0=>nx903, A1
      =>nx905);
   ix904 : nand02 port map ( Y=>nx903, A0=>windowRamBaseAddress1(1), A1=>
      nx1099);
   ix906 : nand02 port map ( Y=>nx905, A0=>windowRamBaseAddress2(1), A1=>
      nx1107);
   ix133 : nand02 port map ( Y=>currentWriteRamBaseAddress_2, A0=>nx908, A1
      =>nx910);
   ix909 : nand02 port map ( Y=>nx908, A0=>windowRamBaseAddress1(2), A1=>
      nx1099);
   ix911 : nand02 port map ( Y=>nx910, A0=>windowRamBaseAddress2(2), A1=>
      nx1107);
   ix141 : nand02 port map ( Y=>currentWriteRamBaseAddress_3, A0=>nx913, A1
      =>nx915);
   ix914 : nand02 port map ( Y=>nx913, A0=>windowRamBaseAddress1(3), A1=>
      nx1099);
   ix916 : nand02 port map ( Y=>nx915, A0=>windowRamBaseAddress2(3), A1=>
      nx1107);
   ix149 : nand02 port map ( Y=>currentWriteRamBaseAddress_4, A0=>nx918, A1
      =>nx920);
   ix919 : nand02 port map ( Y=>nx918, A0=>windowRamBaseAddress1(4), A1=>
      nx1099);
   ix921 : nand02 port map ( Y=>nx920, A0=>windowRamBaseAddress2(4), A1=>
      nx1107);
   ix157 : nand02 port map ( Y=>currentWriteRamBaseAddress_5, A0=>nx923, A1
      =>nx925);
   ix924 : nand02 port map ( Y=>nx923, A0=>windowRamBaseAddress1(5), A1=>
      nx1099);
   ix926 : nand02 port map ( Y=>nx925, A0=>windowRamBaseAddress2(5), A1=>
      nx1107);
   ix165 : nand02 port map ( Y=>currentWriteRamBaseAddress_6, A0=>nx928, A1
      =>nx930);
   ix929 : nand02 port map ( Y=>nx928, A0=>windowRamBaseAddress1(6), A1=>
      nx1099);
   ix931 : nand02 port map ( Y=>nx930, A0=>windowRamBaseAddress2(6), A1=>
      nx1107);
   ix173 : nand02 port map ( Y=>currentWriteRamBaseAddress_7, A0=>nx933, A1
      =>nx935);
   ix934 : nand02 port map ( Y=>nx933, A0=>windowRamBaseAddress1(7), A1=>
      nx1101);
   ix936 : nand02 port map ( Y=>nx935, A0=>windowRamBaseAddress2(7), A1=>
      nx1109);
   ix181 : nand02 port map ( Y=>currentWriteRamBaseAddress_8, A0=>nx938, A1
      =>nx940);
   ix939 : nand02 port map ( Y=>nx938, A0=>windowRamBaseAddress1(8), A1=>
      nx1101);
   ix941 : nand02 port map ( Y=>nx940, A0=>windowRamBaseAddress2(8), A1=>
      nx1109);
   ix189 : nand02 port map ( Y=>currentWriteRamBaseAddress_9, A0=>nx943, A1
      =>nx945);
   ix944 : nand02 port map ( Y=>nx943, A0=>windowRamBaseAddress1(9), A1=>
      nx1101);
   ix946 : nand02 port map ( Y=>nx945, A0=>windowRamBaseAddress2(9), A1=>
      nx1109);
   ix197 : nand02 port map ( Y=>currentWriteRamBaseAddress_10, A0=>nx948, A1
      =>nx950);
   ix949 : nand02 port map ( Y=>nx948, A0=>windowRamBaseAddress1(10), A1=>
      nx1101);
   ix951 : nand02 port map ( Y=>nx950, A0=>windowRamBaseAddress2(10), A1=>
      nx1109);
   ix205 : nand02 port map ( Y=>currentWriteRamBaseAddress_11, A0=>nx953, A1
      =>nx955);
   ix954 : nand02 port map ( Y=>nx953, A0=>windowRamBaseAddress1(11), A1=>
      nx1101);
   ix956 : nand02 port map ( Y=>nx955, A0=>windowRamBaseAddress2(11), A1=>
      nx1109);
   ix213 : nand02 port map ( Y=>currentWriteRamBaseAddress_12, A0=>nx958, A1
      =>nx960);
   ix959 : nand02 port map ( Y=>nx958, A0=>windowRamBaseAddress1(12), A1=>
      nx1101);
   ix961 : nand02 port map ( Y=>nx960, A0=>windowRamBaseAddress2(12), A1=>
      nx1109);
   ix221 : nand02 port map ( Y=>currentReadRamBaseAddress_0, A0=>nx963, A1=>
      nx965);
   ix964 : nand02 port map ( Y=>nx963, A0=>windowRamBaseAddress2(0), A1=>
      nx1101);
   ix966 : nand02 port map ( Y=>nx965, A0=>windowRamBaseAddress1(0), A1=>
      nx1109);
   ix229 : nand02 port map ( Y=>currentReadRamBaseAddress_1, A0=>nx968, A1=>
      nx970);
   ix969 : nand02 port map ( Y=>nx968, A0=>windowRamBaseAddress2(1), A1=>
      nx1103);
   ix971 : nand02 port map ( Y=>nx970, A0=>windowRamBaseAddress1(1), A1=>
      nx1111);
   ix237 : nand02 port map ( Y=>currentReadRamBaseAddress_2, A0=>nx973, A1=>
      nx975);
   ix974 : nand02 port map ( Y=>nx973, A0=>windowRamBaseAddress2(2), A1=>
      nx1103);
   ix976 : nand02 port map ( Y=>nx975, A0=>windowRamBaseAddress1(2), A1=>
      nx1111);
   ix245 : nand02 port map ( Y=>currentReadRamBaseAddress_3, A0=>nx978, A1=>
      nx980);
   ix979 : nand02 port map ( Y=>nx978, A0=>windowRamBaseAddress2(3), A1=>
      nx1103);
   ix981 : nand02 port map ( Y=>nx980, A0=>windowRamBaseAddress1(3), A1=>
      nx1111);
   ix253 : nand02 port map ( Y=>currentReadRamBaseAddress_4, A0=>nx983, A1=>
      nx985);
   ix984 : nand02 port map ( Y=>nx983, A0=>windowRamBaseAddress2(4), A1=>
      nx1103);
   ix986 : nand02 port map ( Y=>nx985, A0=>windowRamBaseAddress1(4), A1=>
      nx1111);
   ix261 : nand02 port map ( Y=>currentReadRamBaseAddress_5, A0=>nx988, A1=>
      nx990);
   ix989 : nand02 port map ( Y=>nx988, A0=>windowRamBaseAddress2(5), A1=>
      nx1103);
   ix991 : nand02 port map ( Y=>nx990, A0=>windowRamBaseAddress1(5), A1=>
      nx1111);
   ix269 : nand02 port map ( Y=>currentReadRamBaseAddress_6, A0=>nx993, A1=>
      nx995);
   ix994 : nand02 port map ( Y=>nx993, A0=>windowRamBaseAddress2(6), A1=>
      nx1103);
   ix996 : nand02 port map ( Y=>nx995, A0=>windowRamBaseAddress1(6), A1=>
      nx1111);
   ix277 : nand02 port map ( Y=>currentReadRamBaseAddress_7, A0=>nx998, A1=>
      nx1000);
   ix999 : nand02 port map ( Y=>nx998, A0=>windowRamBaseAddress2(7), A1=>
      nx1103);
   ix1001 : nand02 port map ( Y=>nx1000, A0=>windowRamBaseAddress1(7), A1=>
      nx1111);
   ix285 : nand02 port map ( Y=>currentReadRamBaseAddress_8, A0=>nx1003, A1
      =>nx1005);
   ix1004 : nand02 port map ( Y=>nx1003, A0=>windowRamBaseAddress2(8), A1=>
      nx1105);
   ix1006 : nand02 port map ( Y=>nx1005, A0=>windowRamBaseAddress1(8), A1=>
      nx1113);
   ix293 : nand02 port map ( Y=>currentReadRamBaseAddress_9, A0=>nx1008, A1
      =>nx1010);
   ix1009 : nand02 port map ( Y=>nx1008, A0=>windowRamBaseAddress2(9), A1=>
      nx1105);
   ix1011 : nand02 port map ( Y=>nx1010, A0=>windowRamBaseAddress1(9), A1=>
      nx1113);
   ix301 : nand02 port map ( Y=>currentReadRamBaseAddress_10, A0=>nx1013, A1
      =>nx1015);
   ix1014 : nand02 port map ( Y=>nx1013, A0=>windowRamBaseAddress2(10), A1=>
      nx1105);
   ix1016 : nand02 port map ( Y=>nx1015, A0=>windowRamBaseAddress1(10), A1=>
      nx1113);
   ix309 : nand02 port map ( Y=>currentReadRamBaseAddress_11, A0=>nx1018, A1
      =>nx1020);
   ix1019 : nand02 port map ( Y=>nx1018, A0=>windowRamBaseAddress2(11), A1=>
      nx1105);
   ix1021 : nand02 port map ( Y=>nx1020, A0=>windowRamBaseAddress1(11), A1=>
      nx1113);
   ix317 : nand02 port map ( Y=>currentReadRamBaseAddress_12, A0=>nx1023, A1
      =>nx1025);
   ix1024 : nand02 port map ( Y=>nx1023, A0=>windowRamBaseAddress2(12), A1=>
      nx1105);
   ix1026 : nand02 port map ( Y=>nx1025, A0=>windowRamBaseAddress1(12), A1=>
      nx1113);
   ix7 : nand02 port map ( Y=>windowRamAddress(0), A0=>nx1028, A1=>nx1030);
   ix1029 : nand02 port map ( Y=>nx1028, A0=>writeLogicRamAddress_0, A1=>
      write);
   ix1031 : nand02 port map ( Y=>nx1030, A0=>readLogicRamAddress_0, A1=>
      nx1117);
   ix15 : nand02 port map ( Y=>windowRamAddress(1), A0=>nx1035, A1=>nx1037);
   ix1036 : nand02 port map ( Y=>nx1035, A0=>writeLogicRamAddress_1, A1=>
      write);
   ix1038 : nand02 port map ( Y=>nx1037, A0=>readLogicRamAddress_1, A1=>
      nx1117);
   ix23 : nand02 port map ( Y=>windowRamAddress(2), A0=>nx1040, A1=>nx1042);
   ix1041 : nand02 port map ( Y=>nx1040, A0=>writeLogicRamAddress_2, A1=>
      write);
   ix1043 : nand02 port map ( Y=>nx1042, A0=>readLogicRamAddress_2, A1=>
      nx1117);
   ix31 : nand02 port map ( Y=>windowRamAddress(3), A0=>nx1045, A1=>nx1047);
   ix1046 : nand02 port map ( Y=>nx1045, A0=>writeLogicRamAddress_3, A1=>
      write);
   ix1048 : nand02 port map ( Y=>nx1047, A0=>readLogicRamAddress_3, A1=>
      nx1117);
   ix39 : nand02 port map ( Y=>windowRamAddress(4), A0=>nx1050, A1=>nx1052);
   ix1051 : nand02 port map ( Y=>nx1050, A0=>writeLogicRamAddress_4, A1=>
      write);
   ix1053 : nand02 port map ( Y=>nx1052, A0=>readLogicRamAddress_4, A1=>
      nx1117);
   ix47 : nand02 port map ( Y=>windowRamAddress(5), A0=>nx1055, A1=>nx1057);
   ix1056 : nand02 port map ( Y=>nx1055, A0=>writeLogicRamAddress_5, A1=>
      write);
   ix1058 : nand02 port map ( Y=>nx1057, A0=>readLogicRamAddress_5, A1=>
      nx1117);
   ix55 : nand02 port map ( Y=>windowRamAddress(6), A0=>nx1060, A1=>nx1062);
   ix1061 : nand02 port map ( Y=>nx1060, A0=>writeLogicRamAddress_6, A1=>
      write);
   ix1063 : nand02 port map ( Y=>nx1062, A0=>readLogicRamAddress_6, A1=>
      nx1117);
   ix63 : nand02 port map ( Y=>windowRamAddress(7), A0=>nx1065, A1=>nx1067);
   ix1066 : nand02 port map ( Y=>nx1065, A0=>writeLogicRamAddress_7, A1=>
      write);
   ix1068 : nand02 port map ( Y=>nx1067, A0=>readLogicRamAddress_7, A1=>
      nx1119);
   ix71 : nand02 port map ( Y=>windowRamAddress(8), A0=>nx1070, A1=>nx1072);
   ix1071 : nand02 port map ( Y=>nx1070, A0=>writeLogicRamAddress_8, A1=>
      write);
   ix1073 : nand02 port map ( Y=>nx1072, A0=>readLogicRamAddress_8, A1=>
      nx1119);
   ix79 : nand02 port map ( Y=>windowRamAddress(9), A0=>nx1075, A1=>nx1077);
   ix1076 : nand02 port map ( Y=>nx1075, A0=>writeLogicRamAddress_9, A1=>
      write);
   ix1078 : nand02 port map ( Y=>nx1077, A0=>readLogicRamAddress_9, A1=>
      nx1119);
   ix87 : nand02 port map ( Y=>windowRamAddress(10), A0=>nx1080, A1=>nx1082
   );
   ix1081 : nand02 port map ( Y=>nx1080, A0=>writeLogicRamAddress_10, A1=>
      write);
   ix1083 : nand02 port map ( Y=>nx1082, A0=>readLogicRamAddress_10, A1=>
      nx1119);
   ix95 : nand02 port map ( Y=>windowRamAddress(11), A0=>nx1085, A1=>nx1087
   );
   ix1086 : nand02 port map ( Y=>nx1085, A0=>writeLogicRamAddress_11, A1=>
      write);
   ix1088 : nand02 port map ( Y=>nx1087, A0=>readLogicRamAddress_11, A1=>
      nx1119);
   ix103 : nand02 port map ( Y=>windowRamAddress(12), A0=>nx1090, A1=>nx1092
   );
   ix1091 : nand02 port map ( Y=>nx1090, A0=>write, A1=>
      writeLogicRamAddress_12);
   ix1093 : nand02 port map ( Y=>nx1092, A0=>nx1119, A1=>
      readLogicRamAddress_12);
   ix1098 : inv02 port map ( Y=>nx1099, A=>nx1113);
   ix1100 : inv02 port map ( Y=>nx1101, A=>nx1113);
   ix1102 : inv02 port map ( Y=>nx1103, A=>nx1115);
   ix1104 : inv02 port map ( Y=>nx1105, A=>nx1115);
   ix1106 : inv02 port map ( Y=>nx1107, A=>ramBaseAddressSelector);
   ix1108 : inv02 port map ( Y=>nx1109, A=>ramBaseAddressSelector);
   ix1110 : inv02 port map ( Y=>nx1111, A=>ramBaseAddressSelector);
   ix1112 : inv02 port map ( Y=>nx1113, A=>ramBaseAddressSelector);
   ix1114 : inv02 port map ( Y=>nx1115, A=>ramBaseAddressSelector);
   ix1116 : inv02 port map ( Y=>nx1117, A=>write);
   ix1118 : inv02 port map ( Y=>nx1119, A=>write);
end DMAControllerArch ;


