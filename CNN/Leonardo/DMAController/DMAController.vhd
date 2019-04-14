
-- 
-- Definition of  DMAController
-- 
--      Sun Apr 14 21:26:54 2019
--      
--      LeonardoSpectrum Level 3, 2018a.2
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity NBitAdder_16 is
   port (
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      carryIn : IN std_logic ;
      sum : OUT std_logic_vector (15 DOWNTO 0) ;
      carryOut : OUT std_logic) ;
end NBitAdder_16 ;

architecture NBitAdderArch_unfold_2878 of NBitAdder_16 is
   signal nx2, nx8, nx10, nx18, nx24, nx26, nx34, nx40, nx42, nx50, nx56, 
      nx58, nx66, nx72, nx74, nx82, nx88, nx90, nx98, nx104, nx106, nx114, 
      nx87, nx91, nx95, nx101, nx103, nx105, nx109, nx113, nx117, nx123, 
      nx125, nx127, nx131, nx135, nx139, nx145, nx147, nx149, nx153, nx156, 
      nx159, nx163, nx165, nx167, nx170, nx173, nx176, nx180, nx182, nx184, 
      nx187, nx190, nx193, nx197, nx199, nx201, nx204, nx207, nx210, nx214, 
      nx216, nx218, nx221, nx224, nx227: std_logic ;

begin
   ix44 : fake_gnd port map ( Y=>carryOut);
   ix151 : xnor2 port map ( Y=>sum(0), A0=>b(0), A1=>nx87);
   ix88 : inv01 port map ( Y=>nx87, A=>a(0));
   ix145 : xnor2 port map ( Y=>sum(1), A0=>nx91, A1=>nx2);
   ix92 : nand02 port map ( Y=>nx91, A0=>b(0), A1=>a(0));
   ix3 : xnor2 port map ( Y=>nx2, A0=>a(1), A1=>nx95);
   ix96 : inv01 port map ( Y=>nx95, A=>b(1));
   ix143 : xnor2 port map ( Y=>sum(2), A0=>nx8, A1=>nx105);
   ix9 : oai22 port map ( Y=>nx8, A0=>nx91, A1=>nx101, B0=>nx95, B1=>nx103);
   ix102 : xnor2 port map ( Y=>nx101, A0=>a(1), A1=>b(1));
   ix104 : inv01 port map ( Y=>nx103, A=>a(1));
   ix106 : xnor2 port map ( Y=>nx105, A0=>a(2), A1=>b(2));
   ix141 : xnor2 port map ( Y=>sum(3), A0=>nx109, A1=>nx18);
   ix110 : aoi22 port map ( Y=>nx109, A0=>b(2), A1=>a(2), B0=>nx8, B1=>nx10
   );
   ix11 : xnor2 port map ( Y=>nx10, A0=>a(2), A1=>nx113);
   ix114 : inv01 port map ( Y=>nx113, A=>b(2));
   ix19 : xnor2 port map ( Y=>nx18, A0=>a(3), A1=>nx117);
   ix118 : inv01 port map ( Y=>nx117, A=>b(3));
   ix139 : xnor2 port map ( Y=>sum(4), A0=>nx24, A1=>nx127);
   ix25 : oai21 port map ( Y=>nx24, A0=>nx109, A1=>nx123, B0=>nx125);
   ix124 : xnor2 port map ( Y=>nx123, A0=>a(3), A1=>b(3));
   ix126 : nand02 port map ( Y=>nx125, A0=>b(3), A1=>a(3));
   ix128 : xnor2 port map ( Y=>nx127, A0=>a(4), A1=>b(4));
   ix137 : xnor2 port map ( Y=>sum(5), A0=>nx131, A1=>nx34);
   ix132 : aoi22 port map ( Y=>nx131, A0=>b(4), A1=>a(4), B0=>nx24, B1=>nx26
   );
   ix27 : xnor2 port map ( Y=>nx26, A0=>a(4), A1=>nx135);
   ix136 : inv01 port map ( Y=>nx135, A=>b(4));
   ix35 : xnor2 port map ( Y=>nx34, A0=>a(5), A1=>nx139);
   ix140 : inv01 port map ( Y=>nx139, A=>b(5));
   ix135 : xnor2 port map ( Y=>sum(6), A0=>nx40, A1=>nx149);
   ix41 : oai21 port map ( Y=>nx40, A0=>nx131, A1=>nx145, B0=>nx147);
   ix146 : xnor2 port map ( Y=>nx145, A0=>a(5), A1=>b(5));
   ix148 : nand02 port map ( Y=>nx147, A0=>b(5), A1=>a(5));
   ix150 : xnor2 port map ( Y=>nx149, A0=>a(6), A1=>b(6));
   ix133 : xnor2 port map ( Y=>sum(7), A0=>nx153, A1=>nx50);
   ix154 : aoi22 port map ( Y=>nx153, A0=>b(6), A1=>a(6), B0=>nx40, B1=>nx42
   );
   ix43 : xnor2 port map ( Y=>nx42, A0=>a(6), A1=>nx156);
   ix157 : inv01 port map ( Y=>nx156, A=>b(6));
   ix51 : xnor2 port map ( Y=>nx50, A0=>a(7), A1=>nx159);
   ix160 : inv01 port map ( Y=>nx159, A=>b(7));
   ix131 : xnor2 port map ( Y=>sum(8), A0=>nx56, A1=>nx167);
   ix57 : oai21 port map ( Y=>nx56, A0=>nx153, A1=>nx163, B0=>nx165);
   ix164 : xnor2 port map ( Y=>nx163, A0=>a(7), A1=>b(7));
   ix166 : nand02 port map ( Y=>nx165, A0=>b(7), A1=>a(7));
   ix168 : xnor2 port map ( Y=>nx167, A0=>a(8), A1=>b(8));
   ix129 : xnor2 port map ( Y=>sum(9), A0=>nx170, A1=>nx66);
   ix171 : aoi22 port map ( Y=>nx170, A0=>b(8), A1=>a(8), B0=>nx56, B1=>nx58
   );
   ix59 : xnor2 port map ( Y=>nx58, A0=>a(8), A1=>nx173);
   ix174 : inv01 port map ( Y=>nx173, A=>b(8));
   ix67 : xnor2 port map ( Y=>nx66, A0=>a(9), A1=>nx176);
   ix177 : inv01 port map ( Y=>nx176, A=>b(9));
   ix127 : xnor2 port map ( Y=>sum(10), A0=>nx72, A1=>nx184);
   ix73 : oai21 port map ( Y=>nx72, A0=>nx170, A1=>nx180, B0=>nx182);
   ix181 : xnor2 port map ( Y=>nx180, A0=>a(9), A1=>b(9));
   ix183 : nand02 port map ( Y=>nx182, A0=>b(9), A1=>a(9));
   ix185 : xnor2 port map ( Y=>nx184, A0=>a(10), A1=>b(10));
   ix125 : xnor2 port map ( Y=>sum(11), A0=>nx187, A1=>nx82);
   ix188 : aoi22 port map ( Y=>nx187, A0=>b(10), A1=>a(10), B0=>nx72, B1=>
      nx74);
   ix75 : xnor2 port map ( Y=>nx74, A0=>a(10), A1=>nx190);
   ix191 : inv01 port map ( Y=>nx190, A=>b(10));
   ix83 : xnor2 port map ( Y=>nx82, A0=>a(11), A1=>nx193);
   ix194 : inv01 port map ( Y=>nx193, A=>b(11));
   ix123 : xnor2 port map ( Y=>sum(12), A0=>nx88, A1=>nx201);
   ix89 : oai21 port map ( Y=>nx88, A0=>nx187, A1=>nx197, B0=>nx199);
   ix198 : xnor2 port map ( Y=>nx197, A0=>a(11), A1=>b(11));
   ix200 : nand02 port map ( Y=>nx199, A0=>b(11), A1=>a(11));
   ix202 : xnor2 port map ( Y=>nx201, A0=>a(12), A1=>b(12));
   ix121 : xnor2 port map ( Y=>sum(13), A0=>nx204, A1=>nx98);
   ix205 : aoi22 port map ( Y=>nx204, A0=>b(12), A1=>a(12), B0=>nx88, B1=>
      nx90);
   ix91 : xnor2 port map ( Y=>nx90, A0=>a(12), A1=>nx207);
   ix208 : inv01 port map ( Y=>nx207, A=>b(12));
   ix99 : xnor2 port map ( Y=>nx98, A0=>a(13), A1=>nx210);
   ix211 : inv01 port map ( Y=>nx210, A=>b(13));
   ix119 : xnor2 port map ( Y=>sum(14), A0=>nx104, A1=>nx218);
   ix105 : oai21 port map ( Y=>nx104, A0=>nx204, A1=>nx214, B0=>nx216);
   ix215 : xnor2 port map ( Y=>nx214, A0=>a(13), A1=>b(13));
   ix217 : nand02 port map ( Y=>nx216, A0=>b(13), A1=>a(13));
   ix219 : xnor2 port map ( Y=>nx218, A0=>a(14), A1=>b(14));
   ix117 : xnor2 port map ( Y=>sum(15), A0=>nx221, A1=>nx114);
   ix222 : aoi22 port map ( Y=>nx221, A0=>b(14), A1=>a(14), B0=>nx104, B1=>
      nx106);
   ix107 : xnor2 port map ( Y=>nx106, A0=>a(14), A1=>nx224);
   ix225 : inv01 port map ( Y=>nx224, A=>b(14));
   ix115 : xnor2 port map ( Y=>nx114, A0=>a(15), A1=>nx227);
   ix228 : inv01 port map ( Y=>nx227, A=>b(15));
end NBitAdderArch_unfold_2878 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity MultiStepCounter_16 is
   port (
      load : IN std_logic_vector (15 DOWNTO 0) ;
      toBeAdded : IN std_logic_vector (15 DOWNTO 0) ;
      reset : IN std_logic ;
      clk : IN std_logic ;
      isLoad : IN std_logic ;
      MFC : IN std_logic ;
      count : OUT std_logic_vector (15 DOWNTO 0)) ;
end MultiStepCounter_16 ;

architecture MultiStepCounterArch_unfold_3160 of MultiStepCounter_16 is
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
      countAdded_15, countAdded_14, countAdded_13, countAdded_12, 
      countAdded_11, countAdded_10, countAdded_9, countAdded_8, countAdded_7, 
      countAdded_6, countAdded_5, countAdded_4, countAdded_3, countAdded_2, 
      countAdded_1, countAdded_0, GND, nx12, nx18, nx34, nx50, nx66, nx82, 
      nx98, nx114, nx130, nx146, nx162, nx178, nx194, nx210, nx226, nx242, 
      nx258, nx69, nx72, nx75, nx77, nx83, nx85, nx87, nx93, nx95, nx97, 
      nx102, nx104, nx107, nx113, nx115, nx117, nx123, nx125, nx127, nx133, 
      nx135, nx137, nx143, nx145, nx147, nx152, nx155, nx157, nx163, nx165, 
      nx167, nx173, nx175, nx177, nx182, nx184, nx187, nx193, nx195, nx197, 
      nx203, nx205, nx207, nx213, nx215, nx217, nx223, nx225, nx227, nx235, 
      nx237, nx239, nx241, nx248, nx250, nx252, nx254: std_logic ;
   
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
   nextCount : NBitAdder_16 port map ( a(15)=>count_15_EXMPLR, a(14)=>
      count_14_EXMPLR, a(13)=>count_13_EXMPLR, a(12)=>count_12_EXMPLR, a(11)
      =>count_11_EXMPLR, a(10)=>count_10_EXMPLR, a(9)=>count_9_EXMPLR, a(8)
      =>count_8_EXMPLR, a(7)=>count_7_EXMPLR, a(6)=>count_6_EXMPLR, a(5)=>
      count_5_EXMPLR, a(4)=>count_4_EXMPLR, a(3)=>count_3_EXMPLR, a(2)=>
      count_2_EXMPLR, a(1)=>count_1_EXMPLR, a(0)=>count_0_EXMPLR, b(15)=>
      toBeAdded(15), b(14)=>toBeAdded(14), b(13)=>toBeAdded(13), b(12)=>
      toBeAdded(12), b(11)=>toBeAdded(11), b(10)=>toBeAdded(10), b(9)=>
      toBeAdded(9), b(8)=>toBeAdded(8), b(7)=>toBeAdded(7), b(6)=>
      toBeAdded(6), b(5)=>toBeAdded(5), b(4)=>toBeAdded(4), b(3)=>
      toBeAdded(3), b(2)=>toBeAdded(2), b(1)=>toBeAdded(1), b(0)=>
      toBeAdded(0), carryIn=>GND, sum(15)=>countAdded_15, sum(14)=>
      countAdded_14, sum(13)=>countAdded_13, sum(12)=>countAdded_12, sum(11)
      =>countAdded_11, sum(10)=>countAdded_10, sum(9)=>countAdded_9, sum(8)
      =>countAdded_8, sum(7)=>countAdded_7, sum(6)=>countAdded_6, sum(5)=>
      countAdded_5, sum(4)=>countAdded_4, sum(3)=>countAdded_3, sum(2)=>
      countAdded_2, sum(1)=>countAdded_1, sum(0)=>countAdded_0, carryOut=>
      DANGLING(0));
   ix4 : fake_gnd port map ( Y=>GND);
   counterReg_reg_Q_0 : dff port map ( Q=>count_0_EXMPLR, QB=>OPEN, D=>nx18, 
      CLK=>clk);
   ix19 : nand03 port map ( Y=>nx18, A0=>nx69, A1=>nx72, A2=>nx77);
   ix70 : nand02 port map ( Y=>nx69, A0=>count_0_EXMPLR, A1=>nx235);
   ix13 : nor02_2x port map ( Y=>nx12, A0=>MFC, A1=>nx250);
   ix73 : nand03 port map ( Y=>nx72, A0=>load(0), A1=>nx239, A2=>nx250);
   ix76 : inv01 port map ( Y=>nx75, A=>MFC);
   ix78 : nand02 port map ( Y=>nx77, A0=>countAdded_0, A1=>MFC);
   counterReg_reg_Q_1 : dff port map ( Q=>count_1_EXMPLR, QB=>OPEN, D=>nx34, 
      CLK=>clk);
   ix35 : nand03 port map ( Y=>nx34, A0=>nx83, A1=>nx85, A2=>nx87);
   ix84 : nand02 port map ( Y=>nx83, A0=>count_1_EXMPLR, A1=>nx235);
   ix86 : nand03 port map ( Y=>nx85, A0=>load(1), A1=>nx239, A2=>nx250);
   ix88 : nand02 port map ( Y=>nx87, A0=>countAdded_1, A1=>MFC);
   counterReg_reg_Q_2 : dff port map ( Q=>count_2_EXMPLR, QB=>OPEN, D=>nx50, 
      CLK=>clk);
   ix51 : nand03 port map ( Y=>nx50, A0=>nx93, A1=>nx95, A2=>nx97);
   ix94 : nand02 port map ( Y=>nx93, A0=>count_2_EXMPLR, A1=>nx235);
   ix96 : nand03 port map ( Y=>nx95, A0=>load(2), A1=>nx239, A2=>nx250);
   ix98 : nand02 port map ( Y=>nx97, A0=>countAdded_2, A1=>MFC);
   counterReg_reg_Q_3 : dff port map ( Q=>count_3_EXMPLR, QB=>OPEN, D=>nx66, 
      CLK=>clk);
   ix67 : nand03 port map ( Y=>nx66, A0=>nx102, A1=>nx104, A2=>nx107);
   ix103 : nand02 port map ( Y=>nx102, A0=>count_3_EXMPLR, A1=>nx235);
   ix105 : nand03 port map ( Y=>nx104, A0=>load(3), A1=>nx239, A2=>nx250);
   ix108 : nand02 port map ( Y=>nx107, A0=>countAdded_3, A1=>MFC);
   counterReg_reg_Q_4 : dff port map ( Q=>count_4_EXMPLR, QB=>OPEN, D=>nx82, 
      CLK=>clk);
   ix83 : nand03 port map ( Y=>nx82, A0=>nx113, A1=>nx115, A2=>nx117);
   ix114 : nand02 port map ( Y=>nx113, A0=>count_4_EXMPLR, A1=>nx235);
   ix116 : nand03 port map ( Y=>nx115, A0=>load(4), A1=>nx239, A2=>nx250);
   ix118 : nand02 port map ( Y=>nx117, A0=>countAdded_4, A1=>MFC);
   counterReg_reg_Q_5 : dff port map ( Q=>count_5_EXMPLR, QB=>OPEN, D=>nx98, 
      CLK=>clk);
   ix99 : nand03 port map ( Y=>nx98, A0=>nx123, A1=>nx125, A2=>nx127);
   ix124 : nand02 port map ( Y=>nx123, A0=>count_5_EXMPLR, A1=>nx235);
   ix126 : nand03 port map ( Y=>nx125, A0=>load(5), A1=>nx239, A2=>nx250);
   ix128 : nand02 port map ( Y=>nx127, A0=>countAdded_5, A1=>MFC);
   counterReg_reg_Q_6 : dff port map ( Q=>count_6_EXMPLR, QB=>OPEN, D=>nx114, 
      CLK=>clk);
   ix115 : nand03 port map ( Y=>nx114, A0=>nx133, A1=>nx135, A2=>nx137);
   ix134 : nand02 port map ( Y=>nx133, A0=>count_6_EXMPLR, A1=>nx235);
   ix136 : nand03 port map ( Y=>nx135, A0=>load(6), A1=>nx241, A2=>nx252);
   ix138 : nand02 port map ( Y=>nx137, A0=>countAdded_6, A1=>MFC);
   counterReg_reg_Q_7 : dff port map ( Q=>count_7_EXMPLR, QB=>OPEN, D=>nx130, 
      CLK=>clk);
   ix131 : nand03 port map ( Y=>nx130, A0=>nx143, A1=>nx145, A2=>nx147);
   ix144 : nand02 port map ( Y=>nx143, A0=>count_7_EXMPLR, A1=>nx237);
   ix146 : nand03 port map ( Y=>nx145, A0=>load(7), A1=>nx241, A2=>nx252);
   ix148 : nand02 port map ( Y=>nx147, A0=>countAdded_7, A1=>MFC);
   counterReg_reg_Q_8 : dff port map ( Q=>count_8_EXMPLR, QB=>OPEN, D=>nx146, 
      CLK=>clk);
   ix147 : nand03 port map ( Y=>nx146, A0=>nx152, A1=>nx155, A2=>nx157);
   ix153 : nand02 port map ( Y=>nx152, A0=>count_8_EXMPLR, A1=>nx237);
   ix156 : nand03 port map ( Y=>nx155, A0=>load(8), A1=>nx241, A2=>nx252);
   ix158 : nand02 port map ( Y=>nx157, A0=>countAdded_8, A1=>MFC);
   counterReg_reg_Q_9 : dff port map ( Q=>count_9_EXMPLR, QB=>OPEN, D=>nx162, 
      CLK=>clk);
   ix163 : nand03 port map ( Y=>nx162, A0=>nx163, A1=>nx165, A2=>nx167);
   ix164 : nand02 port map ( Y=>nx163, A0=>count_9_EXMPLR, A1=>nx237);
   ix166 : nand03 port map ( Y=>nx165, A0=>load(9), A1=>nx241, A2=>nx252);
   ix168 : nand02 port map ( Y=>nx167, A0=>countAdded_9, A1=>MFC);
   counterReg_reg_Q_10 : dff port map ( Q=>count_10_EXMPLR, QB=>OPEN, D=>
      nx178, CLK=>clk);
   ix179 : nand03 port map ( Y=>nx178, A0=>nx173, A1=>nx175, A2=>nx177);
   ix174 : nand02 port map ( Y=>nx173, A0=>count_10_EXMPLR, A1=>nx237);
   ix176 : nand03 port map ( Y=>nx175, A0=>load(10), A1=>nx241, A2=>nx252);
   ix178 : nand02 port map ( Y=>nx177, A0=>countAdded_10, A1=>MFC);
   counterReg_reg_Q_11 : dff port map ( Q=>count_11_EXMPLR, QB=>OPEN, D=>
      nx194, CLK=>clk);
   ix195 : nand03 port map ( Y=>nx194, A0=>nx182, A1=>nx184, A2=>nx187);
   ix183 : nand02 port map ( Y=>nx182, A0=>count_11_EXMPLR, A1=>nx237);
   ix185 : nand03 port map ( Y=>nx184, A0=>load(11), A1=>nx241, A2=>nx252);
   ix188 : nand02 port map ( Y=>nx187, A0=>countAdded_11, A1=>MFC);
   counterReg_reg_Q_12 : dff port map ( Q=>count_12_EXMPLR, QB=>OPEN, D=>
      nx210, CLK=>clk);
   ix211 : nand03 port map ( Y=>nx210, A0=>nx193, A1=>nx195, A2=>nx197);
   ix194 : nand02 port map ( Y=>nx193, A0=>count_12_EXMPLR, A1=>nx237);
   ix196 : nand03 port map ( Y=>nx195, A0=>load(12), A1=>nx75, A2=>nx252);
   ix198 : nand02 port map ( Y=>nx197, A0=>countAdded_12, A1=>MFC);
   counterReg_reg_Q_13 : dff port map ( Q=>count_13_EXMPLR, QB=>OPEN, D=>
      nx226, CLK=>clk);
   ix227 : nand03 port map ( Y=>nx226, A0=>nx203, A1=>nx205, A2=>nx207);
   ix204 : nand02 port map ( Y=>nx203, A0=>count_13_EXMPLR, A1=>nx237);
   ix206 : nand03 port map ( Y=>nx205, A0=>load(13), A1=>nx75, A2=>nx254);
   ix208 : nand02 port map ( Y=>nx207, A0=>countAdded_13, A1=>MFC);
   counterReg_reg_Q_14 : dff port map ( Q=>count_14_EXMPLR, QB=>OPEN, D=>
      nx242, CLK=>clk);
   ix243 : nand03 port map ( Y=>nx242, A0=>nx213, A1=>nx215, A2=>nx217);
   ix214 : nand02 port map ( Y=>nx213, A0=>count_14_EXMPLR, A1=>nx12);
   ix216 : nand03 port map ( Y=>nx215, A0=>load(14), A1=>nx75, A2=>nx254);
   ix218 : nand02 port map ( Y=>nx217, A0=>countAdded_14, A1=>MFC);
   counterReg_reg_Q_15 : dff port map ( Q=>count_15_EXMPLR, QB=>OPEN, D=>
      nx258, CLK=>clk);
   ix259 : nand03 port map ( Y=>nx258, A0=>nx223, A1=>nx225, A2=>nx227);
   ix224 : nand02 port map ( Y=>nx223, A0=>count_15_EXMPLR, A1=>nx12);
   ix226 : nand03 port map ( Y=>nx225, A0=>load(15), A1=>nx75, A2=>nx254);
   ix228 : nand02 port map ( Y=>nx227, A0=>MFC, A1=>countAdded_15);
   ix234 : nor02_2x port map ( Y=>nx235, A0=>MFC, A1=>nx254);
   ix236 : nor02_2x port map ( Y=>nx237, A0=>MFC, A1=>nx254);
   ix238 : inv01 port map ( Y=>nx239, A=>MFC);
   ix240 : inv01 port map ( Y=>nx241, A=>MFC);
   ix247 : inv01 port map ( Y=>nx248, A=>isLoad);
   ix249 : inv02 port map ( Y=>nx250, A=>nx248);
   ix251 : inv02 port map ( Y=>nx252, A=>nx248);
   ix253 : inv02 port map ( Y=>nx254, A=>nx248);
end MultiStepCounterArch_unfold_3160 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DMA_16_16_16_16 is
   port (
      initialCount : IN std_logic_vector (2 DOWNTO 0) ;
      readBaseAddress : IN std_logic_vector (15 DOWNTO 0) ;
      readStep : IN std_logic_vector (15 DOWNTO 0) ;
      initAddress : IN std_logic ;
      initCounter : IN std_logic ;
      load : IN std_logic ;
      internalBus : OUT std_logic_vector (15 DOWNTO 0) ;
      finishedOneRead : OUT std_logic ;
      finishedReading : OUT std_logic ;
      clk : IN std_logic ;
      ramDataInBus : IN std_logic_vector (15 DOWNTO 0) ;
      ramRead : OUT std_logic ;
      ramReadAddress : OUT std_logic_vector (15 DOWNTO 0) ;
      MFC : IN std_logic) ;
end DMA_16_16_16_16 ;

architecture DMAArch of DMA_16_16_16_16 is
   component MultiStepCounter_16
      port (
         load : IN std_logic_vector (15 DOWNTO 0) ;
         toBeAdded : IN std_logic_vector (15 DOWNTO 0) ;
         reset : IN std_logic ;
         clk : IN std_logic ;
         isLoad : IN std_logic ;
         MFC : IN std_logic ;
         count : OUT std_logic_vector (15 DOWNTO 0)) ;
   end component ;
   signal tobeAdded_15, tobeAdded_14, tobeAdded_13, tobeAdded_12, 
      tobeAdded_11, tobeAdded_10, tobeAdded_9, tobeAdded_8, tobeAdded_7, 
      tobeAdded_6, tobeAdded_5, tobeAdded_4, tobeAdded_3, tobeAdded_2, 
      tobeAdded_1, tobeAdded_0, finishedOneRead_EXMPLR, GND, currentCount_0, 
      currentCount_2, currentCount_1, nx120, nx142, nx158, nx170, nx184, 
      nx171, nx181, nx191, nx202, nx204, nx207, nx210, nx213, nx216, nx219, 
      nx221, nx223, nx226, nx228, nx231, nx234, nx238, nx240, nx242, nx244, 
      nx247, nx249, nx254, nx309, nx311, nx313, nx319, nx321, nx323, nx325, 
      nx327, nx329: std_logic ;

begin
   finishedOneRead <= finishedOneRead_EXMPLR ;
   addressRegister : MultiStepCounter_16 port map ( load(15)=>
      readBaseAddress(15), load(14)=>readBaseAddress(14), load(13)=>
      readBaseAddress(13), load(12)=>readBaseAddress(12), load(11)=>
      readBaseAddress(11), load(10)=>readBaseAddress(10), load(9)=>
      readBaseAddress(9), load(8)=>readBaseAddress(8), load(7)=>
      readBaseAddress(7), load(6)=>readBaseAddress(6), load(5)=>
      readBaseAddress(5), load(4)=>readBaseAddress(4), load(3)=>
      readBaseAddress(3), load(2)=>readBaseAddress(2), load(1)=>
      readBaseAddress(1), load(0)=>readBaseAddress(0), toBeAdded(15)=>
      tobeAdded_15, toBeAdded(14)=>tobeAdded_14, toBeAdded(13)=>tobeAdded_13, 
      toBeAdded(12)=>tobeAdded_12, toBeAdded(11)=>tobeAdded_11, 
      toBeAdded(10)=>tobeAdded_10, toBeAdded(9)=>tobeAdded_9, toBeAdded(8)=>
      tobeAdded_8, toBeAdded(7)=>tobeAdded_7, toBeAdded(6)=>tobeAdded_6, 
      toBeAdded(5)=>tobeAdded_5, toBeAdded(4)=>tobeAdded_4, toBeAdded(3)=>
      tobeAdded_3, toBeAdded(2)=>tobeAdded_2, toBeAdded(1)=>tobeAdded_1, 
      toBeAdded(0)=>tobeAdded_0, reset=>GND, clk=>clk, isLoad=>initAddress, 
      MFC=>MFC, count(15)=>ramReadAddress(15), count(14)=>ramReadAddress(14), 
      count(13)=>ramReadAddress(13), count(12)=>ramReadAddress(12), 
      count(11)=>ramReadAddress(11), count(10)=>ramReadAddress(10), count(9)
      =>ramReadAddress(9), count(8)=>ramReadAddress(8), count(7)=>
      ramReadAddress(7), count(6)=>ramReadAddress(6), count(5)=>
      ramReadAddress(5), count(4)=>ramReadAddress(4), count(3)=>
      ramReadAddress(3), count(2)=>ramReadAddress(2), count(1)=>
      ramReadAddress(1), count(0)=>ramReadAddress(0));
   ix119 : fake_gnd port map ( Y=>GND);
   ix177 : nor02_2x port map ( Y=>ramRead, A0=>nx202, A1=>nx240);
   ix203 : nor03_2x port map ( Y=>nx202, A0=>nx204, A1=>clk, A2=>nx158);
   ix205 : inv01 port map ( Y=>nx204, A=>MFC);
   ix159 : nand03 port map ( Y=>nx158, A0=>nx207, A1=>nx228, A2=>
      currentCount_0);
   ix182 : oai21 port map ( Y=>nx181, A0=>nx210, A1=>nx221, B0=>nx226);
   ix211 : aoi21 port map ( Y=>nx210, A0=>initialCount(1), A1=>nx323, B0=>
      nx120);
   ix122 : nor02_2x port map ( Y=>nx120, A0=>nx323, A1=>nx213);
   counter_counterReg_reg_Q_1 : dff port map ( Q=>currentCount_1, QB=>nx207, 
      D=>nx181, CLK=>clk);
   ix172 : oai21 port map ( Y=>nx171, A0=>nx219, A1=>nx221, B0=>nx223);
   ix220 : mux21 port map ( Y=>nx219, A0=>nx216, A1=>initialCount(0), S0=>
      nx323);
   ix222 : nor02_2x port map ( Y=>nx221, A0=>MFC, A1=>nx323);
   ix224 : nand02 port map ( Y=>nx223, A0=>currentCount_0, A1=>nx221);
   counter_counterReg_reg_Q_0 : dff port map ( Q=>currentCount_0, QB=>nx216, 
      D=>nx171, CLK=>clk);
   ix227 : nand02 port map ( Y=>nx226, A0=>currentCount_1, A1=>nx221);
   ix192 : oai21 port map ( Y=>nx191, A0=>nx231, A1=>nx221, B0=>nx238);
   ix232 : aoi21 port map ( Y=>nx231, A0=>initialCount(2), A1=>nx323, B0=>
      nx142);
   ix143 : nor02_2x port map ( Y=>nx142, A0=>nx323, A1=>nx234);
   counter_counterReg_reg_Q_2 : dff port map ( Q=>currentCount_2, QB=>nx228, 
      D=>nx191, CLK=>clk);
   ix239 : nand02 port map ( Y=>nx238, A0=>currentCount_2, A1=>nx221);
   ix241 : oai21 port map ( Y=>nx240, A0=>nx242, A1=>nx244, B0=>load);
   ix243 : nand02 port map ( Y=>nx242, A0=>nx207, A1=>nx216);
   ix245 : nand02 port map ( Y=>nx244, A0=>clk, A1=>nx228);
   ix189 : nor02_2x port map ( Y=>finishedReading, A0=>nx247, A1=>nx249);
   ix248 : nand02 port map ( Y=>nx247, A0=>load, A1=>MFC);
   ix250 : nor02_2x port map ( Y=>nx249, A0=>nx184, A1=>nx170);
   ix185 : nor02_2x port map ( Y=>nx184, A0=>clk, A1=>nx158);
   ix171 : nor03_2x port map ( Y=>nx170, A0=>currentCount_1, A1=>
      currentCount_0, A2=>nx244);
   ix179 : nor02_2x port map ( Y=>finishedOneRead_EXMPLR, A0=>nx254, A1=>
      nx204);
   ix255 : inv01 port map ( Y=>nx254, A=>load);
   readStepRegister_reg_Q_0 : dff port map ( Q=>tobeAdded_0, QB=>OPEN, D=>
      readStep(0), CLK=>nx323);
   readStepRegister_reg_Q_1 : dff port map ( Q=>tobeAdded_1, QB=>OPEN, D=>
      readStep(1), CLK=>nx325);
   readStepRegister_reg_Q_2 : dff port map ( Q=>tobeAdded_2, QB=>OPEN, D=>
      readStep(2), CLK=>nx325);
   readStepRegister_reg_Q_3 : dff port map ( Q=>tobeAdded_3, QB=>OPEN, D=>
      readStep(3), CLK=>nx325);
   readStepRegister_reg_Q_4 : dff port map ( Q=>tobeAdded_4, QB=>OPEN, D=>
      readStep(4), CLK=>nx325);
   readStepRegister_reg_Q_5 : dff port map ( Q=>tobeAdded_5, QB=>OPEN, D=>
      readStep(5), CLK=>nx325);
   readStepRegister_reg_Q_6 : dff port map ( Q=>tobeAdded_6, QB=>OPEN, D=>
      readStep(6), CLK=>nx325);
   readStepRegister_reg_Q_7 : dff port map ( Q=>tobeAdded_7, QB=>OPEN, D=>
      readStep(7), CLK=>nx325);
   readStepRegister_reg_Q_8 : dff port map ( Q=>tobeAdded_8, QB=>OPEN, D=>
      readStep(8), CLK=>nx327);
   readStepRegister_reg_Q_9 : dff port map ( Q=>tobeAdded_9, QB=>OPEN, D=>
      readStep(9), CLK=>nx327);
   readStepRegister_reg_Q_10 : dff port map ( Q=>tobeAdded_10, QB=>OPEN, D=>
      readStep(10), CLK=>nx327);
   readStepRegister_reg_Q_11 : dff port map ( Q=>tobeAdded_11, QB=>OPEN, D=>
      readStep(11), CLK=>nx327);
   readStepRegister_reg_Q_12 : dff port map ( Q=>tobeAdded_12, QB=>OPEN, D=>
      readStep(12), CLK=>nx327);
   readStepRegister_reg_Q_13 : dff port map ( Q=>tobeAdded_13, QB=>OPEN, D=>
      readStep(13), CLK=>nx327);
   readStepRegister_reg_Q_14 : dff port map ( Q=>tobeAdded_14, QB=>OPEN, D=>
      readStep(14), CLK=>nx327);
   readStepRegister_reg_Q_15 : dff port map ( Q=>tobeAdded_15, QB=>OPEN, D=>
      readStep(15), CLK=>nx329);
   tristateLabel_tri_output_0 : trib04 port map ( Y=>internalBus(0), A=>
      ramDataInBus(0), E=>nx309);
   tristateLabel_tri_output_1 : trib04 port map ( Y=>internalBus(1), A=>
      ramDataInBus(1), E=>nx309);
   tristateLabel_tri_output_2 : trib04 port map ( Y=>internalBus(2), A=>
      ramDataInBus(2), E=>nx309);
   tristateLabel_tri_output_3 : trib04 port map ( Y=>internalBus(3), A=>
      ramDataInBus(3), E=>nx309);
   tristateLabel_tri_output_4 : trib04 port map ( Y=>internalBus(4), A=>
      ramDataInBus(4), E=>nx309);
   tristateLabel_tri_output_5 : trib04 port map ( Y=>internalBus(5), A=>
      ramDataInBus(5), E=>nx309);
   tristateLabel_tri_output_6 : trib04 port map ( Y=>internalBus(6), A=>
      ramDataInBus(6), E=>nx309);
   tristateLabel_tri_output_7 : trib04 port map ( Y=>internalBus(7), A=>
      ramDataInBus(7), E=>nx311);
   tristateLabel_tri_output_8 : trib04 port map ( Y=>internalBus(8), A=>
      ramDataInBus(8), E=>nx311);
   tristateLabel_tri_output_9 : trib04 port map ( Y=>internalBus(9), A=>
      ramDataInBus(9), E=>nx311);
   tristateLabel_tri_output_10 : trib04 port map ( Y=>internalBus(10), A=>
      ramDataInBus(10), E=>nx311);
   tristateLabel_tri_output_11 : trib04 port map ( Y=>internalBus(11), A=>
      ramDataInBus(11), E=>nx311);
   tristateLabel_tri_output_12 : trib04 port map ( Y=>internalBus(12), A=>
      ramDataInBus(12), E=>nx311);
   tristateLabel_tri_output_13 : trib04 port map ( Y=>internalBus(13), A=>
      ramDataInBus(13), E=>nx311);
   tristateLabel_tri_output_14 : trib04 port map ( Y=>internalBus(14), A=>
      ramDataInBus(14), E=>nx313);
   tristateLabel_tri_output_15 : trib04 port map ( Y=>internalBus(15), A=>
      ramDataInBus(15), E=>nx313);
   ix308 : buf02 port map ( Y=>nx309, A=>finishedOneRead_EXMPLR);
   ix310 : buf02 port map ( Y=>nx311, A=>finishedOneRead_EXMPLR);
   ix312 : buf02 port map ( Y=>nx313, A=>finishedOneRead_EXMPLR);
   ix214 : xnor2 port map ( Y=>nx213, A0=>nx207, A1=>currentCount_0);
   ix235 : xnor2 port map ( Y=>nx234, A0=>nx228, A1=>nx319);
   ix137 : nand02 port map ( Y=>nx319, A0=>nx207, A1=>nx216);
   ix320 : inv01 port map ( Y=>nx321, A=>initCounter);
   ix322 : inv02 port map ( Y=>nx323, A=>nx321);
   ix324 : inv02 port map ( Y=>nx325, A=>nx321);
   ix326 : inv02 port map ( Y=>nx327, A=>nx321);
   ix328 : inv02 port map ( Y=>nx329, A=>nx321);
end DMAArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Counter2_16 is
   port (
      load : IN std_logic_vector (15 DOWNTO 0) ;
      reset : IN std_logic ;
      clk : IN std_logic ;
      isLoad : IN std_logic ;
      count : OUT std_logic_vector (15 DOWNTO 0)) ;
end Counter2_16 ;

architecture Counter2Arch_unfold_2981 of Counter2_16 is
   signal count_15_EXMPLR, count_13_EXMPLR, count_12_EXMPLR, count_11_EXMPLR, 
      count_10_EXMPLR, count_9_EXMPLR, count_8_EXMPLR, count_7_EXMPLR, 
      count_6_EXMPLR, count_5_EXMPLR, count_4_EXMPLR, count_3_EXMPLR, 
      count_2_EXMPLR, count_1_EXMPLR, count_0_EXMPLR, nx10, nx24, nx38, nx42, 
      nx52, nx56, nx66, nx80, nx94, nx98, nx108, nx122, nx136, nx140, nx150, 
      nx154, nx164, nx178, nx192, nx206, nx210, nx220, nx47, nx49, nx51, 
      nx53, nx57, nx59, nx61, nx65, nx69, nx71, nx75, nx79, nx81, nx83, nx87, 
      nx91, nx93, nx97, nx103, nx105, nx109, nx113, nx115, nx117, nx121, 
      nx125, nx127, nx131, nx137, nx139, nx143, nx147, nx149, nx151, nx155, 
      nx159, nx161, nx165, nx169, nx171, nx173, nx177, nx183, nx185, nx189, 
      nx195, nx197, nx201, nx207, nx209, nx213, nx217, nx219, nx231, nx233, 
      nx235, nx237, nx239, nx241, nx243, nx245, nx247, nx249, nx251, nx253, 
      nx255, nx257, nx259, nx261, nx263, nx265, nx267, nx269, nx271, nx273, 
      nx275, nx277, nx279, nx281, nx283: std_logic ;

begin
   count(15) <= count_15_EXMPLR ;
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
   ix11 : nand02 port map ( Y=>nx10, A0=>nx47, A1=>nx49);
   ix48 : nand02 port map ( Y=>nx47, A0=>load(0), A1=>nx267);
   ix50 : nand02 port map ( Y=>nx49, A0=>nx51, A1=>nx53);
   ix52 : inv01 port map ( Y=>nx51, A=>isLoad);
   counterReg_reg_Q_0 : dff port map ( Q=>count_0_EXMPLR, QB=>nx53, D=>nx10, 
      CLK=>nx279);
   counterReg_reg_Q_1 : dff port map ( Q=>count_1_EXMPLR, QB=>nx61, D=>nx24, 
      CLK=>nx279);
   ix25 : oai21 port map ( Y=>nx24, A0=>nx267, A1=>nx57, B0=>nx59);
   ix60 : nand02 port map ( Y=>nx59, A0=>load(1), A1=>nx267);
   counterReg_reg_Q_2 : dff port map ( Q=>count_2_EXMPLR, QB=>nx71, D=>nx38, 
      CLK=>nx279);
   ix39 : oai21 port map ( Y=>nx38, A0=>nx267, A1=>nx65, B0=>nx69);
   ix70 : nand02 port map ( Y=>nx69, A0=>load(2), A1=>nx267);
   counterReg_reg_Q_3 : dff port map ( Q=>count_3_EXMPLR, QB=>nx83, D=>nx52, 
      CLK=>nx279);
   ix53 : oai21 port map ( Y=>nx52, A0=>nx267, A1=>nx75, B0=>nx81);
   ix43 : nor02_2x port map ( Y=>nx42, A0=>nx71, A1=>nx79);
   ix80 : nand02 port map ( Y=>nx79, A0=>count_1_EXMPLR, A1=>count_0_EXMPLR
   );
   ix82 : nand02 port map ( Y=>nx81, A0=>load(3), A1=>nx267);
   counterReg_reg_Q_4 : dff port map ( Q=>count_4_EXMPLR, QB=>nx93, D=>nx66, 
      CLK=>nx279);
   ix67 : oai21 port map ( Y=>nx66, A0=>nx269, A1=>nx87, B0=>nx91);
   ix57 : nor03_2x port map ( Y=>nx56, A0=>nx83, A1=>nx71, A2=>nx79);
   ix92 : nand02 port map ( Y=>nx91, A0=>load(4), A1=>nx269);
   counterReg_reg_Q_5 : dff port map ( Q=>count_5_EXMPLR, QB=>nx105, D=>nx80, 
      CLK=>nx279);
   ix81 : oai21 port map ( Y=>nx80, A0=>nx269, A1=>nx97, B0=>nx103);
   ix104 : nand02 port map ( Y=>nx103, A0=>load(5), A1=>nx269);
   counterReg_reg_Q_6 : dff port map ( Q=>count_6_EXMPLR, QB=>nx117, D=>nx94, 
      CLK=>nx279);
   ix95 : oai21 port map ( Y=>nx94, A0=>nx269, A1=>nx109, B0=>nx115);
   ix114 : nand04 port map ( Y=>nx113, A0=>count_3_EXMPLR, A1=>
      count_2_EXMPLR, A2=>count_1_EXMPLR, A3=>count_0_EXMPLR);
   ix116 : nand02 port map ( Y=>nx115, A0=>load(6), A1=>nx269);
   counterReg_reg_Q_7 : dff port map ( Q=>count_7_EXMPLR, QB=>nx127, D=>
      nx108, CLK=>nx281);
   ix109 : oai21 port map ( Y=>nx108, A0=>nx269, A1=>nx121, B0=>nx125);
   ix99 : nor04_2x port map ( Y=>nx98, A0=>nx117, A1=>nx105, A2=>nx93, A3=>
      nx113);
   ix126 : nand02 port map ( Y=>nx125, A0=>load(7), A1=>nx271);
   counterReg_reg_Q_8 : dff port map ( Q=>count_8_EXMPLR, QB=>nx139, D=>
      nx122, CLK=>nx281);
   ix123 : oai21 port map ( Y=>nx122, A0=>nx271, A1=>nx131, B0=>nx137);
   ix138 : nand02 port map ( Y=>nx137, A0=>load(8), A1=>nx271);
   counterReg_reg_Q_9 : dff port map ( Q=>count_9_EXMPLR, QB=>nx151, D=>
      nx136, CLK=>nx281);
   ix137 : oai21 port map ( Y=>nx136, A0=>nx271, A1=>nx143, B0=>nx149);
   ix148 : inv01 port map ( Y=>nx147, A=>nx98);
   ix150 : nand02 port map ( Y=>nx149, A0=>load(9), A1=>nx271);
   counterReg_reg_Q_10 : dff port map ( Q=>count_10_EXMPLR, QB=>nx161, D=>
      nx150, CLK=>nx281);
   ix151 : oai21 port map ( Y=>nx150, A0=>nx271, A1=>nx155, B0=>nx159);
   ix160 : nand02 port map ( Y=>nx159, A0=>load(10), A1=>nx271);
   counterReg_reg_Q_11 : dff port map ( Q=>count_11_EXMPLR, QB=>nx173, D=>
      nx164, CLK=>nx281);
   ix165 : oai21 port map ( Y=>nx164, A0=>nx273, A1=>nx165, B0=>nx171);
   ix155 : nor04 port map ( Y=>nx154, A0=>nx161, A1=>nx151, A2=>nx139, A3=>
      nx169);
   ix170 : nand02 port map ( Y=>nx169, A0=>count_7_EXMPLR, A1=>nx98);
   ix172 : nand02 port map ( Y=>nx171, A0=>load(11), A1=>nx273);
   counterReg_reg_Q_12 : dff port map ( Q=>count_12_EXMPLR, QB=>nx185, D=>
      nx178, CLK=>nx281);
   ix179 : oai21 port map ( Y=>nx178, A0=>nx273, A1=>nx177, B0=>nx183);
   ix184 : nand02 port map ( Y=>nx183, A0=>load(12), A1=>nx273);
   counterReg_reg_Q_13 : dff port map ( Q=>count_13_EXMPLR, QB=>nx197, D=>
      nx192, CLK=>nx281);
   ix193 : oai21 port map ( Y=>nx192, A0=>nx273, A1=>nx189, B0=>nx195);
   ix196 : nand02 port map ( Y=>nx195, A0=>load(13), A1=>nx273);
   counterReg_reg_Q_14 : dff port map ( Q=>count(14), QB=>nx209, D=>nx206, 
      CLK=>nx283);
   ix207 : oai21 port map ( Y=>nx206, A0=>nx273, A1=>nx201, B0=>nx207);
   ix208 : nand02 port map ( Y=>nx207, A0=>load(14), A1=>nx275);
   counterReg_reg_Q_15 : dff port map ( Q=>count_15_EXMPLR, QB=>OPEN, D=>
      nx220, CLK=>nx283);
   ix221 : oai21 port map ( Y=>nx220, A0=>nx275, A1=>nx213, B0=>nx219);
   ix214 : xnor2 port map ( Y=>nx213, A0=>count_15_EXMPLR, A1=>nx210);
   ix211 : nor04 port map ( Y=>nx210, A0=>nx209, A1=>nx197, A2=>nx185, A3=>
      nx217);
   ix218 : nand02 port map ( Y=>nx217, A0=>count_11_EXMPLR, A1=>nx154);
   ix220 : nand02 port map ( Y=>nx219, A0=>nx275, A1=>load(15));
   ix58 : xnor2 port map ( Y=>nx57, A0=>nx61, A1=>nx53);
   ix66 : xnor2 port map ( Y=>nx65, A0=>nx71, A1=>nx231);
   ix29 : nand02 port map ( Y=>nx231, A0=>count_1_EXMPLR, A1=>count_0_EXMPLR
   );
   ix76 : xnor2 port map ( Y=>nx75, A0=>nx83, A1=>nx233);
   ix232 : inv01 port map ( Y=>nx233, A=>nx42);
   ix88 : xnor2 port map ( Y=>nx87, A0=>nx93, A1=>nx235);
   ix234 : inv01 port map ( Y=>nx235, A=>nx56);
   ix98 : xnor2 port map ( Y=>nx97, A0=>nx105, A1=>nx237);
   ix71 : nand03 port map ( Y=>nx237, A0=>count_4_EXMPLR, A1=>count_3_EXMPLR, 
      A2=>nx239);
   ix102 : nor03_2x port map ( Y=>nx239, A0=>nx71, A1=>nx61, A2=>nx53);
   ix110 : xnor2 port map ( Y=>nx109, A0=>nx117, A1=>nx241);
   ix85 : nand03 port map ( Y=>nx241, A0=>count_5_EXMPLR, A1=>count_4_EXMPLR, 
      A2=>nx243);
   ix242 : inv01 port map ( Y=>nx243, A=>nx113);
   ix122 : xnor2 port map ( Y=>nx121, A0=>nx127, A1=>nx147);
   ix132 : xnor2 port map ( Y=>nx131, A0=>nx139, A1=>nx245);
   ix113 : nand04 port map ( Y=>nx245, A0=>count_7_EXMPLR, A1=>
      count_6_EXMPLR, A2=>count_5_EXMPLR, A3=>nx247);
   ix136 : nor02_2x port map ( Y=>nx247, A0=>nx93, A1=>nx235);
   ix144 : xnor2 port map ( Y=>nx143, A0=>nx151, A1=>nx249);
   ix127 : nand03 port map ( Y=>nx249, A0=>count_8_EXMPLR, A1=>
      count_7_EXMPLR, A2=>nx98);
   ix156 : xnor2 port map ( Y=>nx155, A0=>nx161, A1=>nx251);
   ix250 : inv01 port map ( Y=>nx251, A=>nx140);
   ix141 : and04 port map ( Y=>nx140, A0=>count_9_EXMPLR, A1=>count_8_EXMPLR, 
      A2=>count_7_EXMPLR, A3=>nx98);
   ix166 : xnor2 port map ( Y=>nx165, A0=>nx173, A1=>nx253);
   ix252 : inv01 port map ( Y=>nx253, A=>nx154);
   ix178 : xnor2 port map ( Y=>nx177, A0=>nx185, A1=>nx255);
   ix169 : nand04 port map ( Y=>nx255, A0=>count_11_EXMPLR, A1=>
      count_10_EXMPLR, A2=>count_9_EXMPLR, A3=>nx257);
   ix182 : nor03_2x port map ( Y=>nx257, A0=>nx139, A1=>nx127, A2=>nx147);
   ix190 : xnor2 port map ( Y=>nx189, A0=>nx197, A1=>nx259);
   ix183 : nand04 port map ( Y=>nx259, A0=>count_12_EXMPLR, A1=>
      count_11_EXMPLR, A2=>count_10_EXMPLR, A3=>nx261);
   ix194 : nor04 port map ( Y=>nx261, A0=>nx151, A1=>nx139, A2=>nx127, A3=>
      nx147);
   ix202 : xnor2 port map ( Y=>nx201, A0=>nx209, A1=>nx263);
   ix197 : nand04 port map ( Y=>nx263, A0=>count_13_EXMPLR, A1=>
      count_12_EXMPLR, A2=>count_11_EXMPLR, A3=>nx265);
   ix206 : nor02_2x port map ( Y=>nx265, A0=>nx161, A1=>nx251);
   ix266 : inv02 port map ( Y=>nx267, A=>nx51);
   ix268 : inv02 port map ( Y=>nx269, A=>nx51);
   ix270 : inv02 port map ( Y=>nx271, A=>nx51);
   ix272 : inv02 port map ( Y=>nx273, A=>nx51);
   ix274 : inv02 port map ( Y=>nx275, A=>nx51);
   ix276 : inv01 port map ( Y=>nx277, A=>clk);
   ix278 : inv02 port map ( Y=>nx279, A=>nx277);
   ix280 : inv02 port map ( Y=>nx281, A=>nx277);
   ix282 : inv02 port map ( Y=>nx283, A=>nx277);
end Counter2Arch_unfold_2981 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ReadLogic_16_16 is
   port (
      clk : IN std_logic ;
      resetState : IN std_logic ;
      switchRam : IN std_logic ;
      ramBasedAddress : IN std_logic_vector (15 DOWNTO 0) ;
      internalBus : OUT std_logic_vector (15 DOWNTO 0) ;
      ramDataInBus : IN std_logic_vector (15 DOWNTO 0) ;
      ramRead : OUT std_logic ;
      ramAddress : OUT std_logic_vector (15 DOWNTO 0) ;
      MFC : IN std_logic ;
      inputSize : IN std_logic_vector (15 DOWNTO 0) ;
      filterSize : IN std_logic_vector (15 DOWNTO 0) ;
      isFilter : IN std_logic ;
      loadNextWordList : IN std_logic ;
      loadWord : IN std_logic ;
      readOne : OUT std_logic ;
      readFinal : OUT std_logic ;
      aluNumber : OUT std_logic_vector (2 DOWNTO 0)) ;
end ReadLogic_16_16 ;

architecture ReadLogicArch_unfold_3077 of ReadLogic_16_16 is
   component DMA_16_16_16_16
      port (
         initialCount : IN std_logic_vector (2 DOWNTO 0) ;
         readBaseAddress : IN std_logic_vector (15 DOWNTO 0) ;
         readStep : IN std_logic_vector (15 DOWNTO 0) ;
         initAddress : IN std_logic ;
         initCounter : IN std_logic ;
         load : IN std_logic ;
         internalBus : OUT std_logic_vector (15 DOWNTO 0) ;
         finishedOneRead : OUT std_logic ;
         finishedReading : OUT std_logic ;
         clk : IN std_logic ;
         ramDataInBus : IN std_logic_vector (15 DOWNTO 0) ;
         ramRead : OUT std_logic ;
         ramReadAddress : OUT std_logic_vector (15 DOWNTO 0) ;
         MFC : IN std_logic) ;
   end component ;
   component Counter2_16
      port (
         load : IN std_logic_vector (15 DOWNTO 0) ;
         reset : IN std_logic ;
         clk : IN std_logic ;
         isLoad : IN std_logic ;
         count : OUT std_logic_vector (15 DOWNTO 0)) ;
   end component ;
   signal readOne_EXMPLR, readFinal_EXMPLR, aluNumber_2_EXMPLR, 
      aluNumber_0_EXMPLR, currentState_4, currentState_2, currentState_1, 
      dmaCountIn_2, dmaCountIn_1, dmaCountIn_0, addressRegOut_15, 
      addressRegOut_14, addressRegOut_13, addressRegOut_12, addressRegOut_11, 
      addressRegOut_10, addressRegOut_9, addressRegOut_8, addressRegOut_7, 
      addressRegOut_6, addressRegOut_5, addressRegOut_4, addressRegOut_3, 
      addressRegOut_2, addressRegOut_1, addressRegOut_0, addressRegIn_15, 
      addressRegIn_14, addressRegIn_13, addressRegIn_12, addressRegIn_11, 
      addressRegIn_10, addressRegIn_9, addressRegIn_8, addressRegIn_7, 
      addressRegIn_6, addressRegIn_5, addressRegIn_4, addressRegIn_3, 
      addressRegIn_2, addressRegIn_1, addressRegIn_0, resetUnitNumberReg, 
      baseAddressCounterClk, zerosSignal_2, currentState_0, nx77, NOT_clk, 
      nx20, nx22, nx28, nx44, nx52, nx56, currentState_3, nx64, nx74, nx94, 
      nx100, nx104, nx114, nx122, nx126, nx136, nx144, nx152, nx160, nx168, 
      nx176, nx184, nx192, nx200, nx208, nx216, nx224, nx232, nx240, nx248, 
      nx256, nx266, nx274, nx282, nx85, nx95, nx105, nx115, nx125, nx141, 
      nx145, nx149, nx153, nx156, nx163, nx167, nx169, nx172, nx179, nx181, 
      nx183, nx185, nx187, nx189, nx193, nx195, nx197, nx203, nx207, nx212, 
      nx217, nx221, nx225, nx229, nx233, nx237, nx241, nx245, nx249, nx253, 
      nx257, nx261, nx265, nx270, nx275, nx280, nx285, nx290, nx293, nx295, 
      nx297, nx300, nx302, nx305, nx314, nx316, nx318, nx320, nx322, nx324, 
      nx332, nx334, nx336, nx338: std_logic ;

begin
   readOne <= readOne_EXMPLR ;
   readFinal <= readFinal_EXMPLR ;
   aluNumber(2) <= aluNumber_2_EXMPLR ;
   aluNumber(0) <= aluNumber_0_EXMPLR ;
   dma : DMA_16_16_16_16 port map ( initialCount(2)=>dmaCountIn_2, 
      initialCount(1)=>dmaCountIn_1, initialCount(0)=>dmaCountIn_0, 
      readBaseAddress(15)=>addressRegOut_15, readBaseAddress(14)=>
      addressRegOut_14, readBaseAddress(13)=>addressRegOut_13, 
      readBaseAddress(12)=>addressRegOut_12, readBaseAddress(11)=>
      addressRegOut_11, readBaseAddress(10)=>addressRegOut_10, 
      readBaseAddress(9)=>addressRegOut_9, readBaseAddress(8)=>
      addressRegOut_8, readBaseAddress(7)=>addressRegOut_7, 
      readBaseAddress(6)=>addressRegOut_6, readBaseAddress(5)=>
      addressRegOut_5, readBaseAddress(4)=>addressRegOut_4, 
      readBaseAddress(3)=>addressRegOut_3, readBaseAddress(2)=>
      addressRegOut_2, readBaseAddress(1)=>addressRegOut_1, 
      readBaseAddress(0)=>addressRegOut_0, readStep(15)=>inputSize(15), 
      readStep(14)=>inputSize(14), readStep(13)=>inputSize(13), readStep(12)
      =>inputSize(12), readStep(11)=>inputSize(11), readStep(10)=>
      inputSize(10), readStep(9)=>inputSize(9), readStep(8)=>inputSize(8), 
      readStep(7)=>inputSize(7), readStep(6)=>inputSize(6), readStep(5)=>
      inputSize(5), readStep(4)=>inputSize(4), readStep(3)=>inputSize(3), 
      readStep(2)=>inputSize(2), readStep(1)=>inputSize(1), readStep(0)=>
      inputSize(0), initAddress=>resetUnitNumberReg, initCounter=>
      currentState_2, load=>currentState_4, internalBus(15)=>internalBus(15), 
      internalBus(14)=>internalBus(14), internalBus(13)=>internalBus(13), 
      internalBus(12)=>internalBus(12), internalBus(11)=>internalBus(11), 
      internalBus(10)=>internalBus(10), internalBus(9)=>internalBus(9), 
      internalBus(8)=>internalBus(8), internalBus(7)=>internalBus(7), 
      internalBus(6)=>internalBus(6), internalBus(5)=>internalBus(5), 
      internalBus(4)=>internalBus(4), internalBus(3)=>internalBus(3), 
      internalBus(2)=>internalBus(2), internalBus(1)=>internalBus(1), 
      internalBus(0)=>internalBus(0), finishedOneRead=>readOne_EXMPLR, 
      finishedReading=>readFinal_EXMPLR, clk=>clk, ramDataInBus(15)=>
      ramDataInBus(15), ramDataInBus(14)=>ramDataInBus(14), ramDataInBus(13)
      =>ramDataInBus(13), ramDataInBus(12)=>ramDataInBus(12), 
      ramDataInBus(11)=>ramDataInBus(11), ramDataInBus(10)=>ramDataInBus(10), 
      ramDataInBus(9)=>ramDataInBus(9), ramDataInBus(8)=>ramDataInBus(8), 
      ramDataInBus(7)=>ramDataInBus(7), ramDataInBus(6)=>ramDataInBus(6), 
      ramDataInBus(5)=>ramDataInBus(5), ramDataInBus(4)=>ramDataInBus(4), 
      ramDataInBus(3)=>ramDataInBus(3), ramDataInBus(2)=>ramDataInBus(2), 
      ramDataInBus(1)=>ramDataInBus(1), ramDataInBus(0)=>ramDataInBus(0), 
      ramRead=>ramRead, ramReadAddress(15)=>ramAddress(15), 
      ramReadAddress(14)=>ramAddress(14), ramReadAddress(13)=>ramAddress(13), 
      ramReadAddress(12)=>ramAddress(12), ramReadAddress(11)=>ramAddress(11), 
      ramReadAddress(10)=>ramAddress(10), ramReadAddress(9)=>ramAddress(9), 
      ramReadAddress(8)=>ramAddress(8), ramReadAddress(7)=>ramAddress(7), 
      ramReadAddress(6)=>ramAddress(6), ramReadAddress(5)=>ramAddress(5), 
      ramReadAddress(4)=>ramAddress(4), ramReadAddress(3)=>ramAddress(3), 
      ramReadAddress(2)=>ramAddress(2), ramReadAddress(1)=>ramAddress(1), 
      ramReadAddress(0)=>ramAddress(0), MFC=>MFC);
   baseAddressCounter : Counter2_16 port map ( load(15)=>addressRegIn_15, 
      load(14)=>addressRegIn_14, load(13)=>addressRegIn_13, load(12)=>
      addressRegIn_12, load(11)=>addressRegIn_11, load(10)=>addressRegIn_10, 
      load(9)=>addressRegIn_9, load(8)=>addressRegIn_8, load(7)=>
      addressRegIn_7, load(6)=>addressRegIn_6, load(5)=>addressRegIn_5, 
      load(4)=>addressRegIn_4, load(3)=>addressRegIn_3, load(2)=>
      addressRegIn_2, load(1)=>addressRegIn_1, load(0)=>addressRegIn_0, 
      reset=>zerosSignal_2, clk=>baseAddressCounterClk, isLoad=>
      currentState_1, count(15)=>addressRegOut_15, count(14)=>
      addressRegOut_14, count(13)=>addressRegOut_13, count(12)=>
      addressRegOut_12, count(11)=>addressRegOut_11, count(10)=>
      addressRegOut_10, count(9)=>addressRegOut_9, count(8)=>addressRegOut_8, 
      count(7)=>addressRegOut_7, count(6)=>addressRegOut_6, count(5)=>
      addressRegOut_5, count(4)=>addressRegOut_4, count(3)=>addressRegOut_3, 
      count(2)=>addressRegOut_2, count(1)=>addressRegOut_1, count(0)=>
      addressRegOut_0);
   ix23 : fake_gnd port map ( Y=>zerosSignal_2);
   ix297 : mux21 port map ( Y=>baseAddressCounterClk, A0=>nx320, A1=>nx193, 
      S0=>clk);
   reg_currentState_1 : dff port map ( Q=>currentState_1, QB=>OPEN, D=>nx85, 
      CLK=>NOT_clk);
   ix86 : oai21 port map ( Y=>nx85, A0=>nx320, A1=>nx77, B0=>nx336);
   ix59 : nand03 port map ( Y=>nx77, A0=>nx141, A1=>nx172, A2=>nx181);
   ix142 : inv01 port map ( Y=>nx141, A=>nx56);
   ix57 : nand02 port map ( Y=>nx56, A0=>nx145, A1=>nx336);
   ix146 : nand02 port map ( Y=>nx145, A0=>readFinal_EXMPLR, A1=>
      currentState_4);
   ix126 : oai21 port map ( Y=>nx125, A0=>nx149, A1=>nx169, B0=>nx197);
   ix150 : oai21 port map ( Y=>nx149, A0=>nx74, A1=>currentState_3, B0=>
      nx336);
   ix75 : nor02_2x port map ( Y=>nx74, A0=>nx64, A1=>nx189);
   ix65 : nor03_2x port map ( Y=>nx64, A0=>nx153, A1=>switchRam, A2=>nx187);
   reg_currentState_2 : dff port map ( Q=>currentState_2, QB=>nx153, D=>nx95, 
      CLK=>NOT_clk);
   ix96 : mux21 port map ( Y=>nx95, A0=>nx153, A1=>nx156, S0=>nx77);
   ix157 : nand02 port map ( Y=>nx156, A0=>nx336, A1=>currentState_0);
   ix106 : oai21 port map ( Y=>nx105, A0=>nx163, A1=>nx169, B0=>nx183);
   ix164 : oai21 port map ( Y=>nx163, A0=>nx28, A1=>currentState_4, B0=>
      nx336);
   ix29 : oai21 port map ( Y=>nx28, A0=>nx153, A1=>nx20, B0=>nx320);
   ix24 : inv01 port map ( Y=>nx20, A=>nx167);
   ix168 : nor02_2x port map ( Y=>nx167, A0=>loadNextWordList, A1=>loadWord
   );
   ix170 : nor02_2x port map ( Y=>nx169, A0=>nx56, A1=>nx52);
   ix53 : nand02 port map ( Y=>nx52, A0=>nx172, A1=>nx181);
   ix173 : nand02 port map ( Y=>nx172, A0=>nx314, A1=>nx179);
   reg_currentState_0 : dff port map ( Q=>currentState_0, QB=>OPEN, D=>nx105, 
      CLK=>NOT_clk);
   ix178 : inv02 port map ( Y=>NOT_clk, A=>clk);
   reg_currentState_4 : dff port map ( Q=>currentState_4, QB=>nx179, D=>
      nx125, CLK=>NOT_clk);
   ix182 : oai21 port map ( Y=>nx181, A0=>loadNextWordList, A1=>loadWord, B0
      =>currentState_0);
   ix184 : nand04 port map ( Y=>nx183, A0=>currentState_0, A1=>nx145, A2=>
      nx336, A3=>nx185);
   ix186 : nor02_2x port map ( Y=>nx185, A0=>loadNextWordList, A1=>loadWord
   );
   ix188 : inv01 port map ( Y=>nx187, A=>loadNextWordList);
   ix190 : oai21 port map ( Y=>nx189, A0=>loadNextWordList, A1=>loadWord, B0
      =>currentState_2);
   ix116 : mux21 port map ( Y=>nx115, A0=>nx193, A1=>nx195, S0=>nx77);
   reg_currentState_3 : dff port map ( Q=>currentState_3, QB=>nx193, D=>
      nx115, CLK=>NOT_clk);
   ix196 : nand03 port map ( Y=>nx195, A0=>currentState_2, A1=>nx336, A2=>
      loadNextWordList);
   ix45 : nor02_2x port map ( Y=>nx44, A0=>nx314, A1=>nx185);
   ix97 : nand02 port map ( Y=>resetUnitNumberReg, A0=>nx203, A1=>nx320);
   ix204 : nand02 port map ( Y=>nx203, A0=>loadNextWordList, A1=>
      currentState_2);
   lat_addressRegIn_0 : latch port map ( Q=>addressRegIn_0, D=>nx136, CLK=>
      nx314);
   ix137 : nor02_2x port map ( Y=>nx136, A0=>nx207, A1=>nx320);
   ix208 : inv01 port map ( Y=>nx207, A=>ramBasedAddress(0));
   lat_addressRegIn_1 : latch port map ( Q=>addressRegIn_1, D=>nx144, CLK=>
      nx314);
   ix145 : nor02_2x port map ( Y=>nx144, A0=>nx212, A1=>nx320);
   ix213 : inv01 port map ( Y=>nx212, A=>ramBasedAddress(1));
   lat_addressRegIn_2 : latch port map ( Q=>addressRegIn_2, D=>nx152, CLK=>
      nx314);
   ix153 : nor02_2x port map ( Y=>nx152, A0=>nx217, A1=>nx320);
   ix218 : inv01 port map ( Y=>nx217, A=>ramBasedAddress(2));
   lat_addressRegIn_3 : latch port map ( Q=>addressRegIn_3, D=>nx160, CLK=>
      nx314);
   ix161 : nor02_2x port map ( Y=>nx160, A0=>nx221, A1=>nx322);
   ix222 : inv01 port map ( Y=>nx221, A=>ramBasedAddress(3));
   lat_addressRegIn_4 : latch port map ( Q=>addressRegIn_4, D=>nx168, CLK=>
      nx314);
   ix169 : nor02_2x port map ( Y=>nx168, A0=>nx225, A1=>nx322);
   ix226 : inv01 port map ( Y=>nx225, A=>ramBasedAddress(4));
   lat_addressRegIn_5 : latch port map ( Q=>addressRegIn_5, D=>nx176, CLK=>
      nx316);
   ix177 : nor02_2x port map ( Y=>nx176, A0=>nx229, A1=>nx322);
   ix230 : inv01 port map ( Y=>nx229, A=>ramBasedAddress(5));
   lat_addressRegIn_6 : latch port map ( Q=>addressRegIn_6, D=>nx184, CLK=>
      nx316);
   ix185 : nor02_2x port map ( Y=>nx184, A0=>nx233, A1=>nx322);
   ix234 : inv01 port map ( Y=>nx233, A=>ramBasedAddress(6));
   lat_addressRegIn_7 : latch port map ( Q=>addressRegIn_7, D=>nx192, CLK=>
      nx316);
   ix193 : nor02_2x port map ( Y=>nx192, A0=>nx237, A1=>nx322);
   ix238 : inv01 port map ( Y=>nx237, A=>ramBasedAddress(7));
   lat_addressRegIn_8 : latch port map ( Q=>addressRegIn_8, D=>nx200, CLK=>
      nx316);
   ix201 : nor02_2x port map ( Y=>nx200, A0=>nx241, A1=>nx322);
   ix242 : inv01 port map ( Y=>nx241, A=>ramBasedAddress(8));
   lat_addressRegIn_9 : latch port map ( Q=>addressRegIn_9, D=>nx208, CLK=>
      nx316);
   ix209 : nor02_2x port map ( Y=>nx208, A0=>nx245, A1=>nx322);
   ix246 : inv01 port map ( Y=>nx245, A=>ramBasedAddress(9));
   lat_addressRegIn_10 : latch port map ( Q=>addressRegIn_10, D=>nx216, CLK
      =>nx316);
   ix217 : nor02_2x port map ( Y=>nx216, A0=>nx249, A1=>nx324);
   ix250 : inv01 port map ( Y=>nx249, A=>ramBasedAddress(10));
   lat_addressRegIn_11 : latch port map ( Q=>addressRegIn_11, D=>nx224, CLK
      =>nx316);
   ix225 : nor02_2x port map ( Y=>nx224, A0=>nx253, A1=>nx324);
   ix254 : inv01 port map ( Y=>nx253, A=>ramBasedAddress(11));
   lat_addressRegIn_12 : latch port map ( Q=>addressRegIn_12, D=>nx232, CLK
      =>nx318);
   ix233 : nor02_2x port map ( Y=>nx232, A0=>nx257, A1=>nx324);
   ix258 : inv01 port map ( Y=>nx257, A=>ramBasedAddress(12));
   lat_addressRegIn_13 : latch port map ( Q=>addressRegIn_13, D=>nx240, CLK
      =>nx318);
   ix241 : nor02_2x port map ( Y=>nx240, A0=>nx261, A1=>nx324);
   ix262 : inv01 port map ( Y=>nx261, A=>ramBasedAddress(13));
   lat_addressRegIn_14 : latch port map ( Q=>addressRegIn_14, D=>nx248, CLK
      =>nx318);
   ix249 : nor02_2x port map ( Y=>nx248, A0=>nx265, A1=>nx324);
   ix266 : inv01 port map ( Y=>nx265, A=>ramBasedAddress(14));
   lat_addressRegIn_15 : latch port map ( Q=>addressRegIn_15, D=>nx256, CLK
      =>nx318);
   ix257 : nor02_2x port map ( Y=>nx256, A0=>nx270, A1=>nx324);
   ix271 : inv01 port map ( Y=>nx270, A=>ramBasedAddress(15));
   lat_dmaCountIn_0 : latch port map ( Q=>dmaCountIn_0, D=>nx266, CLK=>nx22
   );
   ix267 : nand02 port map ( Y=>nx266, A0=>loadNextWordList, A1=>nx275);
   ix276 : inv01 port map ( Y=>nx275, A=>filterSize(0));
   ix25 : nor02_2x port map ( Y=>nx22, A0=>nx153, A1=>nx167);
   lat_dmaCountIn_1 : latch port map ( Q=>dmaCountIn_1, D=>nx274, CLK=>nx22
   );
   ix275 : nor02_2x port map ( Y=>nx274, A0=>nx280, A1=>nx187);
   ix281 : inv01 port map ( Y=>nx280, A=>filterSize(1));
   lat_dmaCountIn_2 : latch port map ( Q=>dmaCountIn_2, D=>nx282, CLK=>nx22
   );
   ix283 : nor02_2x port map ( Y=>nx282, A0=>nx285, A1=>nx187);
   ix286 : inv01 port map ( Y=>nx285, A=>filterSize(2));
   aluNumberCounter_counterReg_reg_Q_0 : dff port map ( Q=>
      aluNumber_0_EXMPLR, QB=>nx297, D=>nx104, CLK=>nx100);
   ix105 : nand03 port map ( Y=>nx104, A0=>nx203, A1=>nx324, A2=>
      aluNumber_0_EXMPLR);
   ix101 : oai22 port map ( Y=>nx100, A0=>NOT_clk, A1=>nx290, B0=>nx293, B1
      =>nx295);
   ix95 : nor02_2x port map ( Y=>nx94, A0=>nx187, A1=>nx153);
   ix294 : nand02 port map ( Y=>nx293, A0=>loadNextWordList, A1=>
      readOne_EXMPLR);
   ix296 : nand02 port map ( Y=>nx295, A0=>NOT_clk, A1=>currentState_4);
   aluNumberCounter_counterReg_reg_Q_1 : dff port map ( Q=>aluNumber(1), QB
      =>nx302, D=>nx114, CLK=>nx100);
   ix115 : nand02 port map ( Y=>nx114, A0=>nx290, A1=>nx300);
   aluNumberCounter_counterReg_reg_Q_2 : dff port map ( Q=>
      aluNumber_2_EXMPLR, QB=>OPEN, D=>nx126, CLK=>nx100);
   ix127 : nand02 port map ( Y=>nx126, A0=>nx290, A1=>nx305);
   ix306 : xnor2 port map ( Y=>nx305, A0=>aluNumber_2_EXMPLR, A1=>nx122);
   ix123 : nor02_2x port map ( Y=>nx122, A0=>nx297, A1=>nx302);
   ix313 : inv02 port map ( Y=>nx314, A=>currentState_0);
   ix315 : inv02 port map ( Y=>nx316, A=>currentState_0);
   ix317 : inv02 port map ( Y=>nx318, A=>currentState_0);
   ix319 : inv02 port map ( Y=>nx320, A=>currentState_1);
   ix321 : inv02 port map ( Y=>nx322, A=>currentState_1);
   ix323 : inv02 port map ( Y=>nx324, A=>currentState_1);
   ix122 : nand04 port map ( Y=>nx197, A0=>currentState_4, A1=>nx332, A2=>
      nx338, A3=>nx334);
   ix331 : inv01 port map ( Y=>nx332, A=>readFinal_EXMPLR);
   ix333 : inv01 port map ( Y=>nx334, A=>nx44);
   ix291 : nor02_2x port map ( Y=>nx290, A0=>nx94, A1=>currentState_1);
   ix301 : xnor2 port map ( Y=>nx300, A0=>nx302, A1=>nx297);
   ix335 : inv01 port map ( Y=>nx336, A=>switchRam);
   ix337 : inv01 port map ( Y=>nx338, A=>switchRam);
end ReadLogicArch_unfold_3077 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ReadLogic_16_16_unfolded1 is
   port (
      clk : IN std_logic ;
      resetState : IN std_logic ;
      switchRam : IN std_logic ;
      ramBasedAddress : IN std_logic_vector (15 DOWNTO 0) ;
      internalBus : OUT std_logic_vector (15 DOWNTO 0) ;
      ramDataInBus : IN std_logic_vector (15 DOWNTO 0) ;
      ramRead : OUT std_logic ;
      ramAddress : OUT std_logic_vector (15 DOWNTO 0) ;
      MFC : IN std_logic ;
      inputSize : IN std_logic_vector (15 DOWNTO 0) ;
      filterSize : IN std_logic_vector (15 DOWNTO 0) ;
      isFilter : IN std_logic ;
      loadNextWordList : IN std_logic ;
      loadWord : IN std_logic ;
      readOne : OUT std_logic ;
      readFinal : OUT std_logic ;
      aluNumber : OUT std_logic_vector (2 DOWNTO 0)) ;
end ReadLogic_16_16_unfolded1 ;

architecture ReadLogicArch_unfold_3059_xmplrcopy of 
   ReadLogic_16_16_unfolded1 is
   component DMA_16_16_16_16
      port (
         initialCount : IN std_logic_vector (2 DOWNTO 0) ;
         readBaseAddress : IN std_logic_vector (15 DOWNTO 0) ;
         readStep : IN std_logic_vector (15 DOWNTO 0) ;
         initAddress : IN std_logic ;
         initCounter : IN std_logic ;
         load : IN std_logic ;
         internalBus : OUT std_logic_vector (15 DOWNTO 0) ;
         finishedOneRead : OUT std_logic ;
         finishedReading : OUT std_logic ;
         clk : IN std_logic ;
         ramDataInBus : IN std_logic_vector (15 DOWNTO 0) ;
         ramRead : OUT std_logic ;
         ramReadAddress : OUT std_logic_vector (15 DOWNTO 0) ;
         MFC : IN std_logic) ;
   end component ;
   component Counter2_16
      port (
         load : IN std_logic_vector (15 DOWNTO 0) ;
         reset : IN std_logic ;
         clk : IN std_logic ;
         isLoad : IN std_logic ;
         count : OUT std_logic_vector (15 DOWNTO 0)) ;
   end component ;
   signal readOne_EXMPLR, readFinal_EXMPLR, aluNumber_2_EXMPLR, 
      aluNumber_0_EXMPLR, currentState_4, currentState_2, currentState_1, 
      dmaCountIn_2, dmaCountIn_1, dmaCountIn_0, addressRegOut_15, 
      addressRegOut_14, addressRegOut_13, addressRegOut_12, addressRegOut_11, 
      addressRegOut_10, addressRegOut_9, addressRegOut_8, addressRegOut_7, 
      addressRegOut_6, addressRegOut_5, addressRegOut_4, addressRegOut_3, 
      addressRegOut_2, addressRegOut_1, addressRegOut_0, addressRegIn_15, 
      addressRegIn_14, addressRegIn_13, addressRegIn_12, addressRegIn_11, 
      addressRegIn_10, addressRegIn_9, addressRegIn_8, addressRegIn_7, 
      addressRegIn_6, addressRegIn_5, addressRegIn_4, addressRegIn_3, 
      addressRegIn_2, addressRegIn_1, addressRegIn_0, resetUnitNumberReg, 
      dmaReadBaseAddress_15, dmaReadBaseAddress_14, dmaReadBaseAddress_13, 
      dmaReadBaseAddress_12, dmaReadBaseAddress_11, dmaReadBaseAddress_10, 
      dmaReadBaseAddress_9, dmaReadBaseAddress_8, dmaReadBaseAddress_7, 
      dmaReadBaseAddress_6, dmaReadBaseAddress_5, dmaReadBaseAddress_4, 
      dmaReadBaseAddress_3, dmaReadBaseAddress_2, dmaReadBaseAddress_1, 
      dmaReadBaseAddress_0, baseAddressCounterClk, zerosSignal_2, 
      currentState_0, nx85, NOT_clk, nx20, nx24, nx32, nx54, nx58, nx64, 
      nx82, nx86, nx96, nx104, nx108, nx246, nx254, nx262, nx270, nx278, 
      nx286, nx294, nx302, nx310, nx318, nx326, nx334, nx342, nx350, nx358, 
      nx366, nx376, nx384, nx392, nx93, nx103, nx113, nx123, nx141, nx145, 
      nx151, nx155, nx159, nx163, nx165, nx171, nx175, nx177, nx179, nx181, 
      nx183, nx187, nx191, nx193, nx195, nx199, nx201, nx207, nx209, nx213, 
      nx215, nx219, nx221, nx225, nx227, nx231, nx233, nx237, nx239, nx243, 
      nx245, nx249, nx251, nx255, nx257, nx260, nx263, nx266, nx268, nx271, 
      nx273, nx276, nx279, nx282, nx284, nx287, nx289, nx331, nx337, nx341, 
      nx347, nx351, nx353, nx355, nx359, nx361, nx364, nx373, nx375, nx377, 
      nx379, nx381, nx383, nx385, nx391, nx398, nx400, nx402: std_logic ;

begin
   readOne <= readOne_EXMPLR ;
   readFinal <= readFinal_EXMPLR ;
   aluNumber(2) <= aluNumber_2_EXMPLR ;
   aluNumber(0) <= aluNumber_0_EXMPLR ;
   dma : DMA_16_16_16_16 port map ( initialCount(2)=>dmaCountIn_2, 
      initialCount(1)=>dmaCountIn_1, initialCount(0)=>dmaCountIn_0, 
      readBaseAddress(15)=>dmaReadBaseAddress_15, readBaseAddress(14)=>
      dmaReadBaseAddress_14, readBaseAddress(13)=>dmaReadBaseAddress_13, 
      readBaseAddress(12)=>dmaReadBaseAddress_12, readBaseAddress(11)=>
      dmaReadBaseAddress_11, readBaseAddress(10)=>dmaReadBaseAddress_10, 
      readBaseAddress(9)=>dmaReadBaseAddress_9, readBaseAddress(8)=>
      dmaReadBaseAddress_8, readBaseAddress(7)=>dmaReadBaseAddress_7, 
      readBaseAddress(6)=>dmaReadBaseAddress_6, readBaseAddress(5)=>
      dmaReadBaseAddress_5, readBaseAddress(4)=>dmaReadBaseAddress_4, 
      readBaseAddress(3)=>dmaReadBaseAddress_3, readBaseAddress(2)=>
      dmaReadBaseAddress_2, readBaseAddress(1)=>dmaReadBaseAddress_1, 
      readBaseAddress(0)=>dmaReadBaseAddress_0, readStep(15)=>inputSize(15), 
      readStep(14)=>inputSize(14), readStep(13)=>inputSize(13), readStep(12)
      =>inputSize(12), readStep(11)=>inputSize(11), readStep(10)=>
      inputSize(10), readStep(9)=>inputSize(9), readStep(8)=>inputSize(8), 
      readStep(7)=>inputSize(7), readStep(6)=>inputSize(6), readStep(5)=>
      inputSize(5), readStep(4)=>inputSize(4), readStep(3)=>inputSize(3), 
      readStep(2)=>inputSize(2), readStep(1)=>inputSize(1), readStep(0)=>
      inputSize(0), initAddress=>resetUnitNumberReg, initCounter=>
      currentState_2, load=>currentState_4, internalBus(15)=>internalBus(15), 
      internalBus(14)=>internalBus(14), internalBus(13)=>internalBus(13), 
      internalBus(12)=>internalBus(12), internalBus(11)=>internalBus(11), 
      internalBus(10)=>internalBus(10), internalBus(9)=>internalBus(9), 
      internalBus(8)=>internalBus(8), internalBus(7)=>internalBus(7), 
      internalBus(6)=>internalBus(6), internalBus(5)=>internalBus(5), 
      internalBus(4)=>internalBus(4), internalBus(3)=>internalBus(3), 
      internalBus(2)=>internalBus(2), internalBus(1)=>internalBus(1), 
      internalBus(0)=>internalBus(0), finishedOneRead=>readOne_EXMPLR, 
      finishedReading=>readFinal_EXMPLR, clk=>clk, ramDataInBus(15)=>
      ramDataInBus(15), ramDataInBus(14)=>ramDataInBus(14), ramDataInBus(13)
      =>ramDataInBus(13), ramDataInBus(12)=>ramDataInBus(12), 
      ramDataInBus(11)=>ramDataInBus(11), ramDataInBus(10)=>ramDataInBus(10), 
      ramDataInBus(9)=>ramDataInBus(9), ramDataInBus(8)=>ramDataInBus(8), 
      ramDataInBus(7)=>ramDataInBus(7), ramDataInBus(6)=>ramDataInBus(6), 
      ramDataInBus(5)=>ramDataInBus(5), ramDataInBus(4)=>ramDataInBus(4), 
      ramDataInBus(3)=>ramDataInBus(3), ramDataInBus(2)=>ramDataInBus(2), 
      ramDataInBus(1)=>ramDataInBus(1), ramDataInBus(0)=>ramDataInBus(0), 
      ramRead=>ramRead, ramReadAddress(15)=>ramAddress(15), 
      ramReadAddress(14)=>ramAddress(14), ramReadAddress(13)=>ramAddress(13), 
      ramReadAddress(12)=>ramAddress(12), ramReadAddress(11)=>ramAddress(11), 
      ramReadAddress(10)=>ramAddress(10), ramReadAddress(9)=>ramAddress(9), 
      ramReadAddress(8)=>ramAddress(8), ramReadAddress(7)=>ramAddress(7), 
      ramReadAddress(6)=>ramAddress(6), ramReadAddress(5)=>ramAddress(5), 
      ramReadAddress(4)=>ramAddress(4), ramReadAddress(3)=>ramAddress(3), 
      ramReadAddress(2)=>ramAddress(2), ramReadAddress(1)=>ramAddress(1), 
      ramReadAddress(0)=>ramAddress(0), MFC=>MFC);
   baseAddressCounter : Counter2_16 port map ( load(15)=>addressRegIn_15, 
      load(14)=>addressRegIn_14, load(13)=>addressRegIn_13, load(12)=>
      addressRegIn_12, load(11)=>addressRegIn_11, load(10)=>addressRegIn_10, 
      load(9)=>addressRegIn_9, load(8)=>addressRegIn_8, load(7)=>
      addressRegIn_7, load(6)=>addressRegIn_6, load(5)=>addressRegIn_5, 
      load(4)=>addressRegIn_4, load(3)=>addressRegIn_3, load(2)=>
      addressRegIn_2, load(1)=>addressRegIn_1, load(0)=>addressRegIn_0, 
      reset=>zerosSignal_2, clk=>baseAddressCounterClk, isLoad=>
      currentState_1, count(15)=>addressRegOut_15, count(14)=>
      addressRegOut_14, count(13)=>addressRegOut_13, count(12)=>
      addressRegOut_12, count(11)=>addressRegOut_11, count(10)=>
      addressRegOut_10, count(9)=>addressRegOut_9, count(8)=>addressRegOut_8, 
      count(7)=>addressRegOut_7, count(6)=>addressRegOut_6, count(5)=>
      addressRegOut_5, count(4)=>addressRegOut_4, count(3)=>addressRegOut_3, 
      count(2)=>addressRegOut_2, count(1)=>addressRegOut_1, count(0)=>
      addressRegOut_0);
   ix17 : fake_gnd port map ( Y=>zerosSignal_2);
   ix403 : nor02_2x port map ( Y=>baseAddressCounterClk, A0=>clk, A1=>nx379
   );
   reg_currentState_1 : dff port map ( Q=>currentState_1, QB=>OPEN, D=>nx93, 
      CLK=>NOT_clk);
   ix94 : oai21 port map ( Y=>nx93, A0=>nx379, A1=>nx85, B0=>nx165);
   ix61 : nand03 port map ( Y=>nx85, A0=>nx141, A1=>nx187, A2=>nx191);
   ix142 : inv01 port map ( Y=>nx141, A=>nx58);
   ix59 : nand02 port map ( Y=>nx58, A0=>nx145, A1=>nx165);
   ix146 : nand02 port map ( Y=>nx145, A0=>readFinal_EXMPLR, A1=>
      currentState_4);
   ix124 : mux21 port map ( Y=>nx123, A0=>nx151, A1=>nx181, S0=>nx183);
   ix152 : inv01 port map ( Y=>nx151, A=>nx64);
   ix65 : nor02_2x port map ( Y=>nx64, A0=>switchRam, A1=>nx155);
   ix156 : oai21 port map ( Y=>nx155, A0=>loadWord, A1=>loadNextWordList, B0
      =>currentState_2);
   ix104 : mux21 port map ( Y=>nx103, A0=>nx159, A1=>nx163, S0=>nx85);
   reg_currentState_2 : dff port map ( Q=>currentState_2, QB=>nx159, D=>
      nx103, CLK=>NOT_clk);
   ix162 : inv01 port map ( Y=>NOT_clk, A=>clk);
   ix164 : nand02 port map ( Y=>nx163, A0=>nx165, A1=>currentState_0);
   ix166 : inv01 port map ( Y=>nx165, A=>switchRam);
   ix114 : oai21 port map ( Y=>nx113, A0=>nx171, A1=>nx183, B0=>nx193);
   ix172 : nand02 port map ( Y=>nx171, A0=>nx165, A1=>nx32);
   ix33 : nand03 port map ( Y=>nx32, A0=>nx175, A1=>nx379, A2=>nx181);
   ix176 : nand03 port map ( Y=>nx175, A0=>nx177, A1=>nx179, A2=>
      currentState_2);
   ix178 : nand02 port map ( Y=>nx177, A0=>loadWord, A1=>currentState_2);
   ix180 : inv02 port map ( Y=>nx179, A=>loadNextWordList);
   reg_currentState_4 : dff port map ( Q=>currentState_4, QB=>nx181, D=>
      nx123, CLK=>NOT_clk);
   ix184 : nor02_2x port map ( Y=>nx183, A0=>nx58, A1=>nx54);
   ix55 : nand02 port map ( Y=>nx54, A0=>nx187, A1=>nx191);
   ix188 : nand02 port map ( Y=>nx187, A0=>nx373, A1=>nx181);
   reg_currentState_0 : dff port map ( Q=>currentState_0, QB=>OPEN, D=>nx113, 
      CLK=>NOT_clk);
   ix192 : oai21 port map ( Y=>nx191, A0=>loadNextWordList, A1=>loadWord, B0
      =>currentState_0);
   ix194 : nand04 port map ( Y=>nx193, A0=>currentState_0, A1=>nx145, A2=>
      nx165, A3=>nx195);
   ix196 : nor02_2x port map ( Y=>nx195, A0=>loadNextWordList, A1=>loadWord
   );
   ix200 : inv01 port map ( Y=>nx199, A=>ramBasedAddress(0));
   ix202 : inv01 port map ( Y=>nx201, A=>addressRegOut_0);
   ix208 : inv01 port map ( Y=>nx207, A=>ramBasedAddress(1));
   ix210 : inv01 port map ( Y=>nx209, A=>addressRegOut_1);
   ix214 : inv01 port map ( Y=>nx213, A=>ramBasedAddress(2));
   ix216 : inv01 port map ( Y=>nx215, A=>addressRegOut_2);
   ix220 : inv01 port map ( Y=>nx219, A=>ramBasedAddress(3));
   ix222 : inv01 port map ( Y=>nx221, A=>addressRegOut_3);
   ix226 : inv01 port map ( Y=>nx225, A=>ramBasedAddress(4));
   ix228 : inv01 port map ( Y=>nx227, A=>addressRegOut_4);
   ix232 : inv01 port map ( Y=>nx231, A=>ramBasedAddress(5));
   ix234 : inv01 port map ( Y=>nx233, A=>addressRegOut_5);
   ix238 : inv01 port map ( Y=>nx237, A=>ramBasedAddress(6));
   ix240 : inv01 port map ( Y=>nx239, A=>addressRegOut_6);
   ix244 : inv01 port map ( Y=>nx243, A=>ramBasedAddress(7));
   ix246 : inv01 port map ( Y=>nx245, A=>addressRegOut_7);
   ix250 : inv01 port map ( Y=>nx249, A=>ramBasedAddress(8));
   ix252 : inv01 port map ( Y=>nx251, A=>addressRegOut_8);
   ix256 : inv01 port map ( Y=>nx255, A=>ramBasedAddress(9));
   ix258 : inv01 port map ( Y=>nx257, A=>addressRegOut_9);
   ix261 : inv01 port map ( Y=>nx260, A=>ramBasedAddress(10));
   ix264 : inv01 port map ( Y=>nx263, A=>addressRegOut_10);
   ix267 : inv01 port map ( Y=>nx266, A=>ramBasedAddress(11));
   ix269 : inv01 port map ( Y=>nx268, A=>addressRegOut_11);
   ix272 : inv01 port map ( Y=>nx271, A=>ramBasedAddress(12));
   ix274 : inv01 port map ( Y=>nx273, A=>addressRegOut_12);
   ix277 : inv01 port map ( Y=>nx276, A=>ramBasedAddress(13));
   ix280 : inv01 port map ( Y=>nx279, A=>addressRegOut_13);
   ix283 : inv01 port map ( Y=>nx282, A=>ramBasedAddress(14));
   ix285 : inv01 port map ( Y=>nx284, A=>addressRegOut_14);
   ix288 : inv01 port map ( Y=>nx287, A=>ramBasedAddress(15));
   ix290 : inv01 port map ( Y=>nx289, A=>addressRegOut_15);
   ix79 : oai21 port map ( Y=>resetUnitNumberReg, A0=>nx179, A1=>nx159, B0=>
      nx379);
   lat_addressRegIn_0 : latch port map ( Q=>addressRegIn_0, D=>nx246, CLK=>
      nx373);
   ix247 : nor02_2x port map ( Y=>nx246, A0=>nx199, A1=>nx379);
   lat_addressRegIn_1 : latch port map ( Q=>addressRegIn_1, D=>nx254, CLK=>
      nx373);
   ix255 : nor02_2x port map ( Y=>nx254, A0=>nx207, A1=>nx379);
   lat_addressRegIn_2 : latch port map ( Q=>addressRegIn_2, D=>nx262, CLK=>
      nx373);
   ix263 : nor02_2x port map ( Y=>nx262, A0=>nx213, A1=>nx379);
   lat_addressRegIn_3 : latch port map ( Q=>addressRegIn_3, D=>nx270, CLK=>
      nx373);
   ix271 : nor02_2x port map ( Y=>nx270, A0=>nx219, A1=>nx381);
   lat_addressRegIn_4 : latch port map ( Q=>addressRegIn_4, D=>nx278, CLK=>
      nx373);
   ix279 : nor02_2x port map ( Y=>nx278, A0=>nx225, A1=>nx381);
   lat_addressRegIn_5 : latch port map ( Q=>addressRegIn_5, D=>nx286, CLK=>
      nx373);
   ix287 : nor02_2x port map ( Y=>nx286, A0=>nx231, A1=>nx381);
   lat_addressRegIn_6 : latch port map ( Q=>addressRegIn_6, D=>nx294, CLK=>
      nx375);
   ix295 : nor02_2x port map ( Y=>nx294, A0=>nx237, A1=>nx381);
   lat_addressRegIn_7 : latch port map ( Q=>addressRegIn_7, D=>nx302, CLK=>
      nx375);
   ix303 : nor02_2x port map ( Y=>nx302, A0=>nx243, A1=>nx381);
   lat_addressRegIn_8 : latch port map ( Q=>addressRegIn_8, D=>nx310, CLK=>
      nx375);
   ix311 : nor02_2x port map ( Y=>nx310, A0=>nx249, A1=>nx381);
   lat_addressRegIn_9 : latch port map ( Q=>addressRegIn_9, D=>nx318, CLK=>
      nx375);
   ix319 : nor02_2x port map ( Y=>nx318, A0=>nx255, A1=>nx381);
   lat_addressRegIn_10 : latch port map ( Q=>addressRegIn_10, D=>nx326, CLK
      =>nx375);
   ix327 : nor02_2x port map ( Y=>nx326, A0=>nx260, A1=>nx383);
   lat_addressRegIn_11 : latch port map ( Q=>addressRegIn_11, D=>nx334, CLK
      =>nx375);
   ix335 : nor02_2x port map ( Y=>nx334, A0=>nx266, A1=>nx383);
   lat_addressRegIn_12 : latch port map ( Q=>addressRegIn_12, D=>nx342, CLK
      =>nx375);
   ix343 : nor02_2x port map ( Y=>nx342, A0=>nx271, A1=>nx383);
   lat_addressRegIn_13 : latch port map ( Q=>addressRegIn_13, D=>nx350, CLK
      =>nx377);
   ix351 : nor02_2x port map ( Y=>nx350, A0=>nx276, A1=>nx383);
   lat_addressRegIn_14 : latch port map ( Q=>addressRegIn_14, D=>nx358, CLK
      =>nx377);
   ix359 : nor02_2x port map ( Y=>nx358, A0=>nx282, A1=>nx383);
   lat_addressRegIn_15 : latch port map ( Q=>addressRegIn_15, D=>nx366, CLK
      =>nx377);
   ix367 : nor02_2x port map ( Y=>nx366, A0=>nx287, A1=>nx383);
   lat_dmaCountIn_0 : latch port map ( Q=>dmaCountIn_0, D=>nx376, CLK=>nx24
   );
   ix377 : nand02 port map ( Y=>nx376, A0=>loadNextWordList, A1=>nx331);
   ix332 : inv01 port map ( Y=>nx331, A=>inputSize(0));
   ix25 : nand02 port map ( Y=>nx24, A0=>nx177, A1=>nx391);
   lat_dmaCountIn_1 : latch port map ( Q=>dmaCountIn_1, D=>nx384, CLK=>nx24
   );
   ix385 : nor02_2x port map ( Y=>nx384, A0=>nx337, A1=>nx179);
   ix338 : inv01 port map ( Y=>nx337, A=>inputSize(1));
   lat_dmaCountIn_2 : latch port map ( Q=>dmaCountIn_2, D=>nx392, CLK=>nx24
   );
   ix393 : nor02_2x port map ( Y=>nx392, A0=>nx341, A1=>nx179);
   ix342 : inv01 port map ( Y=>nx341, A=>inputSize(2));
   aluNumberCounter_counterReg_reg_Q_0 : dff port map ( Q=>
      aluNumber_0_EXMPLR, QB=>nx355, D=>nx86, CLK=>nx82);
   ix87 : nand03 port map ( Y=>nx86, A0=>nx383, A1=>nx391, A2=>
      aluNumber_0_EXMPLR);
   ix83 : oai22 port map ( Y=>nx82, A0=>NOT_clk, A1=>nx347, B0=>nx351, B1=>
      nx353);
   ix348 : nor02_2x port map ( Y=>nx347, A0=>currentState_1, A1=>nx20);
   ix21 : nor02_2x port map ( Y=>nx20, A0=>nx179, A1=>nx159);
   ix352 : nand02 port map ( Y=>nx351, A0=>loadNextWordList, A1=>
      readOne_EXMPLR);
   ix354 : nand02 port map ( Y=>nx353, A0=>NOT_clk, A1=>currentState_4);
   aluNumberCounter_counterReg_reg_Q_1 : dff port map ( Q=>aluNumber(1), QB
      =>nx361, D=>nx96, CLK=>nx82);
   ix97 : nand02 port map ( Y=>nx96, A0=>nx347, A1=>nx359);
   aluNumberCounter_counterReg_reg_Q_2 : dff port map ( Q=>
      aluNumber_2_EXMPLR, QB=>OPEN, D=>nx108, CLK=>nx82);
   ix109 : nand02 port map ( Y=>nx108, A0=>nx347, A1=>nx364);
   ix365 : xnor2 port map ( Y=>nx364, A0=>aluNumber_2_EXMPLR, A1=>nx104);
   ix105 : nor02_2x port map ( Y=>nx104, A0=>nx355, A1=>nx361);
   ix372 : inv02 port map ( Y=>nx373, A=>currentState_0);
   ix374 : inv02 port map ( Y=>nx375, A=>currentState_0);
   ix376 : inv02 port map ( Y=>nx377, A=>currentState_0);
   ix378 : inv02 port map ( Y=>nx379, A=>currentState_1);
   ix380 : inv02 port map ( Y=>nx381, A=>currentState_1);
   ix382 : inv02 port map ( Y=>nx383, A=>currentState_1);
   ix390 : inv02 port map ( Y=>nx391, A=>nx385);
   ix123 : mux21 port map ( Y=>dmaReadBaseAddress_0, A0=>nx201, A1=>nx199, 
      S0=>nx398);
   ix204 : nor02_2x port map ( Y=>nx385, A0=>nx179, A1=>nx159);
   ix131 : mux21 port map ( Y=>dmaReadBaseAddress_1, A0=>nx209, A1=>nx207, 
      S0=>nx398);
   ix139 : mux21 port map ( Y=>dmaReadBaseAddress_2, A0=>nx215, A1=>nx213, 
      S0=>nx398);
   ix147 : mux21 port map ( Y=>dmaReadBaseAddress_3, A0=>nx221, A1=>nx219, 
      S0=>nx398);
   ix155 : mux21 port map ( Y=>dmaReadBaseAddress_4, A0=>nx227, A1=>nx225, 
      S0=>nx398);
   ix163 : mux21 port map ( Y=>dmaReadBaseAddress_5, A0=>nx233, A1=>nx231, 
      S0=>nx398);
   ix171 : mux21 port map ( Y=>dmaReadBaseAddress_6, A0=>nx239, A1=>nx237, 
      S0=>nx398);
   ix179 : mux21 port map ( Y=>dmaReadBaseAddress_7, A0=>nx245, A1=>nx243, 
      S0=>nx400);
   ix187 : mux21 port map ( Y=>dmaReadBaseAddress_8, A0=>nx251, A1=>nx249, 
      S0=>nx400);
   ix195 : mux21 port map ( Y=>dmaReadBaseAddress_9, A0=>nx257, A1=>nx255, 
      S0=>nx400);
   ix203 : mux21 port map ( Y=>dmaReadBaseAddress_10, A0=>nx263, A1=>nx260, 
      S0=>nx400);
   ix211 : mux21 port map ( Y=>dmaReadBaseAddress_11, A0=>nx268, A1=>nx266, 
      S0=>nx400);
   ix219 : mux21 port map ( Y=>dmaReadBaseAddress_12, A0=>nx273, A1=>nx271, 
      S0=>nx400);
   ix227 : mux21 port map ( Y=>dmaReadBaseAddress_13, A0=>nx279, A1=>nx276, 
      S0=>nx400);
   ix235 : mux21 port map ( Y=>dmaReadBaseAddress_14, A0=>nx284, A1=>nx282, 
      S0=>nx402);
   ix243 : mux21 port map ( Y=>dmaReadBaseAddress_15, A0=>nx289, A1=>nx287, 
      S0=>nx402);
   ix360 : xnor2 port map ( Y=>nx359, A0=>nx361, A1=>nx355);
   ix397 : inv02 port map ( Y=>nx398, A=>nx391);
   ix399 : inv02 port map ( Y=>nx400, A=>nx391);
   ix401 : inv02 port map ( Y=>nx402, A=>nx391);
end ReadLogicArch_unfold_3059_xmplrcopy ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DownCounter_16 is
   port (
      load : IN std_logic_vector (15 DOWNTO 0) ;
      enable : IN std_logic ;
      clk : IN std_logic ;
      isLoad : IN std_logic ;
      currentCount : INOUT std_logic_vector (15 DOWNTO 0)) ;
end DownCounter_16 ;

architecture DownCounterArch of DownCounter_16 is
   signal nx20, nx28, nx42, nx56, nx80, nx104, nx114, nx128, nx138, nx152, 
      nx176, nx200, nx210, nx224, nx234, nx248, nx272, nx296, nx306, nx320, 
      nx330, nx344, nx360, nx107, nx117, nx127, nx137, nx147, nx157, nx167, 
      nx177, nx187, nx197, nx207, nx217, nx227, nx237, nx247, nx257, nx271, 
      nx273, nx277, nx281, nx285, nx289, nx293, nx295, nx299, nx302, nx304, 
      nx309, nx311, nx315, nx319, nx321, nx324, nx326, nx329, nx331, nx333, 
      nx335, nx341, nx343, nx347, nx349, nx351, nx353, nx357, nx359, nx363, 
      nx366, nx368, nx371, nx373, nx376, nx378, nx380, nx382, nx386, nx388, 
      nx391, nx393, nx395, nx397, nx401, nx403, nx406, nx408, nx410, nx412, 
      nx416, nx418, nx421, nx424, nx426, nx429, nx431, nx434, nx436, nx438, 
      nx440, nx444, nx446, nx449, nx451, nx453, nx455, nx459, nx461, nx464, 
      nx466, nx468, nx470, nx474, nx476, nx479, nx482, nx487, nx489, nx492, 
      nx495, nx498, nx501, nx503, nx511, nx513, nx515, nx521, nx523, nx525, 
      nx527, nx529, nx531, nx533, nx535, nx537, nx539: std_logic ;

begin
   ix108 : oai21 port map ( Y=>nx107, A0=>nx271, A1=>nx539, B0=>nx277);
   ix272 : mux21 port map ( Y=>nx271, A0=>nx273, A1=>load(0), S0=>nx529);
   counterReg_reg_Q_0 : dff port map ( Q=>currentCount(0), QB=>nx273, D=>
      nx107, CLK=>clk);
   ix278 : nand02 port map ( Y=>nx277, A0=>currentCount(0), A1=>nx539);
   ix118 : oai21 port map ( Y=>nx117, A0=>nx281, A1=>nx539, B0=>nx289);
   ix282 : aoi21 port map ( Y=>nx281, A0=>load(1), A1=>nx529, B0=>nx28);
   ix29 : nor02_2x port map ( Y=>nx28, A0=>nx529, A1=>nx285);
   counterReg_reg_Q_1 : dff port map ( Q=>currentCount(1), QB=>OPEN, D=>
      nx117, CLK=>clk);
   ix290 : nand02 port map ( Y=>nx289, A0=>currentCount(1), A1=>nx539);
   counterReg_reg_Q_2 : dff port map ( Q=>currentCount(2), QB=>nx304, D=>
      nx127, CLK=>clk);
   ix128 : nand02 port map ( Y=>nx127, A0=>nx293, A1=>nx295);
   ix294 : nand02 port map ( Y=>nx293, A0=>currentCount(2), A1=>nx539);
   ix296 : nand02 port map ( Y=>nx295, A0=>nx56, A1=>nx521);
   ix57 : oai21 port map ( Y=>nx56, A0=>nx529, A1=>nx299, B0=>nx302);
   ix300 : xnor2 port map ( Y=>nx299, A0=>nx20, A1=>currentCount(2));
   ix21 : nor02_2x port map ( Y=>nx20, A0=>currentCount(0), A1=>
      currentCount(1));
   ix303 : nand02 port map ( Y=>nx302, A0=>load(2), A1=>nx529);
   counterReg_reg_Q_3 : dff port map ( Q=>currentCount(3), QB=>nx321, D=>
      nx137, CLK=>clk);
   ix138 : nand02 port map ( Y=>nx137, A0=>nx309, A1=>nx311);
   ix310 : nand02 port map ( Y=>nx309, A0=>currentCount(3), A1=>nx539);
   ix312 : nand02 port map ( Y=>nx311, A0=>nx80, A1=>nx521);
   ix81 : oai21 port map ( Y=>nx80, A0=>nx529, A1=>nx315, B0=>nx319);
   ix316 : xnor2 port map ( Y=>nx315, A0=>nx42, A1=>currentCount(3));
   ix43 : nor03_2x port map ( Y=>nx42, A0=>currentCount(0), A1=>
      currentCount(1), A2=>currentCount(2));
   ix320 : nand02 port map ( Y=>nx319, A0=>load(3), A1=>nx529);
   ix148 : nand02 port map ( Y=>nx147, A0=>nx324, A1=>nx326);
   ix325 : nand02 port map ( Y=>nx324, A0=>currentCount(4), A1=>nx539);
   ix327 : nand02 port map ( Y=>nx326, A0=>nx104, A1=>nx521);
   ix105 : oai21 port map ( Y=>nx104, A0=>nx531, A1=>nx329, B0=>nx335);
   ix330 : xnor2 port map ( Y=>nx329, A0=>nx331, A1=>nx333);
   ix332 : nand03 port map ( Y=>nx331, A0=>nx20, A1=>nx304, A2=>nx321);
   counterReg_reg_Q_4 : dff port map ( Q=>currentCount(4), QB=>nx333, D=>
      nx147, CLK=>clk);
   ix336 : nand02 port map ( Y=>nx335, A0=>load(4), A1=>nx531);
   ix158 : nand02 port map ( Y=>nx157, A0=>nx341, A1=>nx343);
   ix342 : nand02 port map ( Y=>nx341, A0=>currentCount(5), A1=>nx513);
   ix344 : nand02 port map ( Y=>nx343, A0=>nx128, A1=>nx521);
   ix129 : oai21 port map ( Y=>nx128, A0=>nx531, A1=>nx347, B0=>nx353);
   ix348 : xnor2 port map ( Y=>nx347, A0=>nx349, A1=>nx351);
   ix350 : nand04 port map ( Y=>nx349, A0=>nx20, A1=>nx304, A2=>nx321, A3=>
      nx333);
   counterReg_reg_Q_5 : dff port map ( Q=>currentCount(5), QB=>nx351, D=>
      nx157, CLK=>clk);
   ix354 : nand02 port map ( Y=>nx353, A0=>load(5), A1=>nx531);
   counterReg_reg_Q_6 : dff port map ( Q=>currentCount(6), QB=>nx368, D=>
      nx167, CLK=>clk);
   ix168 : nand02 port map ( Y=>nx167, A0=>nx357, A1=>nx359);
   ix358 : nand02 port map ( Y=>nx357, A0=>currentCount(6), A1=>nx513);
   ix360 : nand02 port map ( Y=>nx359, A0=>nx152, A1=>nx521);
   ix153 : oai21 port map ( Y=>nx152, A0=>nx531, A1=>nx363, B0=>nx366);
   ix364 : xnor2 port map ( Y=>nx363, A0=>nx114, A1=>currentCount(6));
   ix367 : nand02 port map ( Y=>nx366, A0=>load(6), A1=>nx531);
   ix178 : nand02 port map ( Y=>nx177, A0=>nx371, A1=>nx373);
   ix372 : nand02 port map ( Y=>nx371, A0=>currentCount(7), A1=>nx513);
   ix374 : nand02 port map ( Y=>nx373, A0=>nx176, A1=>nx521);
   ix177 : oai21 port map ( Y=>nx176, A0=>nx531, A1=>nx376, B0=>nx382);
   ix377 : xnor2 port map ( Y=>nx376, A0=>nx378, A1=>nx380);
   ix379 : nand02 port map ( Y=>nx378, A0=>nx114, A1=>nx368);
   counterReg_reg_Q_7 : dff port map ( Q=>currentCount(7), QB=>nx380, D=>
      nx177, CLK=>clk);
   ix383 : nand02 port map ( Y=>nx382, A0=>load(7), A1=>nx533);
   ix188 : nand02 port map ( Y=>nx187, A0=>nx386, A1=>nx388);
   ix387 : nand02 port map ( Y=>nx386, A0=>currentCount(8), A1=>nx513);
   ix389 : nand02 port map ( Y=>nx388, A0=>nx200, A1=>nx521);
   ix201 : oai21 port map ( Y=>nx200, A0=>nx533, A1=>nx391, B0=>nx397);
   ix392 : xnor2 port map ( Y=>nx391, A0=>nx393, A1=>nx395);
   ix394 : nand03 port map ( Y=>nx393, A0=>nx114, A1=>nx368, A2=>nx380);
   counterReg_reg_Q_8 : dff port map ( Q=>currentCount(8), QB=>nx395, D=>
      nx187, CLK=>clk);
   ix398 : nand02 port map ( Y=>nx397, A0=>load(8), A1=>nx533);
   ix198 : nand02 port map ( Y=>nx197, A0=>nx401, A1=>nx403);
   ix402 : nand02 port map ( Y=>nx401, A0=>currentCount(9), A1=>nx513);
   ix404 : nand02 port map ( Y=>nx403, A0=>nx224, A1=>nx523);
   ix225 : oai21 port map ( Y=>nx224, A0=>nx533, A1=>nx406, B0=>nx412);
   ix407 : xnor2 port map ( Y=>nx406, A0=>nx408, A1=>nx410);
   ix409 : nand04 port map ( Y=>nx408, A0=>nx114, A1=>nx368, A2=>nx380, A3=>
      nx395);
   counterReg_reg_Q_9 : dff port map ( Q=>currentCount(9), QB=>nx410, D=>
      nx197, CLK=>clk);
   ix413 : nand02 port map ( Y=>nx412, A0=>load(9), A1=>nx533);
   counterReg_reg_Q_10 : dff port map ( Q=>currentCount(10), QB=>nx426, D=>
      nx207, CLK=>clk);
   ix208 : nand02 port map ( Y=>nx207, A0=>nx416, A1=>nx418);
   ix417 : nand02 port map ( Y=>nx416, A0=>currentCount(10), A1=>nx513);
   ix419 : nand02 port map ( Y=>nx418, A0=>nx248, A1=>nx523);
   ix249 : oai21 port map ( Y=>nx248, A0=>nx533, A1=>nx421, B0=>nx424);
   ix422 : xnor2 port map ( Y=>nx421, A0=>nx210, A1=>currentCount(10));
   ix425 : nand02 port map ( Y=>nx424, A0=>load(10), A1=>nx533);
   ix218 : nand02 port map ( Y=>nx217, A0=>nx429, A1=>nx431);
   ix430 : nand02 port map ( Y=>nx429, A0=>currentCount(11), A1=>nx513);
   ix432 : nand02 port map ( Y=>nx431, A0=>nx272, A1=>nx523);
   ix273 : oai21 port map ( Y=>nx272, A0=>nx535, A1=>nx434, B0=>nx440);
   ix435 : xnor2 port map ( Y=>nx434, A0=>nx436, A1=>nx438);
   ix437 : nand02 port map ( Y=>nx436, A0=>nx210, A1=>nx426);
   counterReg_reg_Q_11 : dff port map ( Q=>currentCount(11), QB=>nx438, D=>
      nx217, CLK=>clk);
   ix441 : nand02 port map ( Y=>nx440, A0=>load(11), A1=>nx535);
   ix228 : nand02 port map ( Y=>nx227, A0=>nx444, A1=>nx446);
   ix445 : nand02 port map ( Y=>nx444, A0=>currentCount(12), A1=>nx515);
   ix447 : nand02 port map ( Y=>nx446, A0=>nx296, A1=>nx523);
   ix297 : oai21 port map ( Y=>nx296, A0=>nx535, A1=>nx449, B0=>nx455);
   ix450 : xnor2 port map ( Y=>nx449, A0=>nx451, A1=>nx453);
   ix452 : nand03 port map ( Y=>nx451, A0=>nx210, A1=>nx426, A2=>nx438);
   counterReg_reg_Q_12 : dff port map ( Q=>currentCount(12), QB=>nx453, D=>
      nx227, CLK=>clk);
   ix456 : nand02 port map ( Y=>nx455, A0=>load(12), A1=>nx535);
   ix238 : nand02 port map ( Y=>nx237, A0=>nx459, A1=>nx461);
   ix460 : nand02 port map ( Y=>nx459, A0=>currentCount(13), A1=>nx515);
   ix462 : nand02 port map ( Y=>nx461, A0=>nx320, A1=>nx523);
   ix321 : oai21 port map ( Y=>nx320, A0=>nx535, A1=>nx464, B0=>nx470);
   ix465 : xnor2 port map ( Y=>nx464, A0=>nx466, A1=>nx468);
   ix467 : nand04 port map ( Y=>nx466, A0=>nx210, A1=>nx426, A2=>nx438, A3=>
      nx453);
   counterReg_reg_Q_13 : dff port map ( Q=>currentCount(13), QB=>nx468, D=>
      nx237, CLK=>clk);
   ix471 : nand02 port map ( Y=>nx470, A0=>load(13), A1=>nx535);
   counterReg_reg_Q_14 : dff port map ( Q=>currentCount(14), QB=>OPEN, D=>
      nx247, CLK=>clk);
   ix248 : nand02 port map ( Y=>nx247, A0=>nx474, A1=>nx476);
   ix475 : nand02 port map ( Y=>nx474, A0=>currentCount(14), A1=>nx515);
   ix477 : nand02 port map ( Y=>nx476, A0=>nx344, A1=>nx523);
   ix345 : oai21 port map ( Y=>nx344, A0=>nx535, A1=>nx479, B0=>nx482);
   ix480 : xnor2 port map ( Y=>nx479, A0=>nx306, A1=>currentCount(14));
   ix483 : nand02 port map ( Y=>nx482, A0=>load(14), A1=>nx537);
   counterReg_reg_Q_15 : dff port map ( Q=>currentCount(15), QB=>OPEN, D=>
      nx257, CLK=>clk);
   ix258 : nand02 port map ( Y=>nx257, A0=>nx487, A1=>nx489);
   ix488 : nand02 port map ( Y=>nx487, A0=>currentCount(15), A1=>nx515);
   ix490 : nand02 port map ( Y=>nx489, A0=>nx360, A1=>nx523);
   ix361 : oai21 port map ( Y=>nx360, A0=>nx537, A1=>nx492, B0=>nx503);
   ix493 : xnor2 port map ( Y=>nx492, A0=>currentCount(15), A1=>nx330);
   ix496 : nand04 port map ( Y=>nx495, A0=>nx234, A1=>nx438, A2=>nx453, A3=>
      nx468);
   ix499 : nand04 port map ( Y=>nx498, A0=>nx138, A1=>nx380, A2=>nx395, A3=>
      nx410);
   ix502 : nand04 port map ( Y=>nx501, A0=>nx42, A1=>nx321, A2=>nx333, A3=>
      nx351);
   ix504 : nand02 port map ( Y=>nx503, A0=>nx537, A1=>load(15));
   ix510 : inv02 port map ( Y=>nx511, A=>enable);
   ix512 : inv02 port map ( Y=>nx513, A=>nx525);
   ix514 : inv02 port map ( Y=>nx515, A=>nx525);
   ix286 : xnor2 port map ( Y=>nx285, A0=>nx273, A1=>currentCount(1));
   ix115 : nor02_2x port map ( Y=>nx114, A0=>nx349, A1=>currentCount(5));
   ix211 : nor02_2x port map ( Y=>nx210, A0=>nx408, A1=>currentCount(9));
   ix307 : nor02_2x port map ( Y=>nx306, A0=>nx466, A1=>currentCount(13));
   ix331 : nor02_2x port map ( Y=>nx330, A0=>nx495, A1=>currentCount(14));
   ix235 : nor02_2x port map ( Y=>nx234, A0=>nx498, A1=>currentCount(10));
   ix139 : nor02_2x port map ( Y=>nx138, A0=>nx501, A1=>currentCount(6));
   ix520 : inv02 port map ( Y=>nx521, A=>nx511);
   ix522 : inv02 port map ( Y=>nx523, A=>nx511);
   ix524 : inv02 port map ( Y=>nx525, A=>nx511);
   ix526 : inv01 port map ( Y=>nx527, A=>isLoad);
   ix528 : inv02 port map ( Y=>nx529, A=>nx527);
   ix530 : inv02 port map ( Y=>nx531, A=>nx527);
   ix532 : inv02 port map ( Y=>nx533, A=>nx527);
   ix534 : inv02 port map ( Y=>nx535, A=>nx527);
   ix536 : inv02 port map ( Y=>nx537, A=>nx527);
   ix538 : inv02 port map ( Y=>nx539, A=>enable);
end DownCounterArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity WriteDMA_16_16 is
   port (
      clk : IN std_logic ;
      writeBaseAddress : IN std_logic_vector (15 DOWNTO 0) ;
      writeStep : IN std_logic_vector (15 DOWNTO 0) ;
      writeToRam : IN std_logic ;
      counter : IN std_logic_vector (15 DOWNTO 0) ;
      initCounter : IN std_logic ;
      initAddress : IN std_logic ;
      internalBus : IN std_logic_vector (15 DOWNTO 0) ;
      ramWrite : OUT std_logic ;
      ramDataOutBus : OUT std_logic_vector (15 DOWNTO 0) ;
      ramWriteAddress : OUT std_logic_vector (15 DOWNTO 0) ;
      MFC : IN std_logic ;
      writeComplete : OUT std_logic ;
      writeCompleteOne : OUT std_logic) ;
end WriteDMA_16_16 ;

architecture WriteDMAArch_unfold_1968 of WriteDMA_16_16 is
   component MultiStepCounter_16
      port (
         load : IN std_logic_vector (15 DOWNTO 0) ;
         toBeAdded : IN std_logic_vector (15 DOWNTO 0) ;
         reset : IN std_logic ;
         clk : IN std_logic ;
         isLoad : IN std_logic ;
         MFC : IN std_logic ;
         count : OUT std_logic_vector (15 DOWNTO 0)) ;
   end component ;
   component DownCounter_16
      port (
         load : IN std_logic_vector (15 DOWNTO 0) ;
         enable : IN std_logic ;
         clk : IN std_logic ;
         isLoad : IN std_logic ;
         currentCount : INOUT std_logic_vector (15 DOWNTO 0)) ;
   
   end component ;
   signal toBeAdded_15, toBeAdded_14, toBeAdded_13, toBeAdded_12, 
      toBeAdded_11, toBeAdded_10, toBeAdded_9, toBeAdded_8, toBeAdded_7, 
      toBeAdded_6, toBeAdded_5, toBeAdded_4, toBeAdded_3, toBeAdded_2, 
      toBeAdded_1, toBeAdded_0, currentCount_15, currentCount_14, 
      currentCount_13, currentCount_12, currentCount_11, currentCount_10, 
      currentCount_9, currentCount_8, currentCount_7, currentCount_6, 
      currentCount_5, currentCount_4, currentCount_3, currentCount_2, 
      currentCount_1, currentCount_0, enableCounter, writeCompleteOne_EXMPLR, 
      GND, nx76, nx82, nx90, nx96, nx112, nx114, nx120, nx124, nx83, nx93, 
      nx97, nx107, nx111, nx115, nx151, nx154, nx157, nx160, nx163, nx166, 
      nx169, nx172, nx175, nx178, nx181, nx184, nx187, nx190, nx193, nx196, 
      nx203, nx205, nx207, nx213, nx215, nx217, nx219: std_logic ;

begin
   ramWrite <= GND ;
   writeCompleteOne <= writeCompleteOne_EXMPLR ;
   writeAddressRegister : MultiStepCounter_16 port map ( load(15)=>
      writeBaseAddress(15), load(14)=>writeBaseAddress(14), load(13)=>
      writeBaseAddress(13), load(12)=>writeBaseAddress(12), load(11)=>
      writeBaseAddress(11), load(10)=>writeBaseAddress(10), load(9)=>
      writeBaseAddress(9), load(8)=>writeBaseAddress(8), load(7)=>
      writeBaseAddress(7), load(6)=>writeBaseAddress(6), load(5)=>
      writeBaseAddress(5), load(4)=>writeBaseAddress(4), load(3)=>
      writeBaseAddress(3), load(2)=>writeBaseAddress(2), load(1)=>
      writeBaseAddress(1), load(0)=>writeBaseAddress(0), toBeAdded(15)=>
      toBeAdded_15, toBeAdded(14)=>toBeAdded_14, toBeAdded(13)=>toBeAdded_13, 
      toBeAdded(12)=>toBeAdded_12, toBeAdded(11)=>toBeAdded_11, 
      toBeAdded(10)=>toBeAdded_10, toBeAdded(9)=>toBeAdded_9, toBeAdded(8)=>
      toBeAdded_8, toBeAdded(7)=>toBeAdded_7, toBeAdded(6)=>toBeAdded_6, 
      toBeAdded(5)=>toBeAdded_5, toBeAdded(4)=>toBeAdded_4, toBeAdded(3)=>
      toBeAdded_3, toBeAdded(2)=>toBeAdded_2, toBeAdded(1)=>toBeAdded_1, 
      toBeAdded(0)=>toBeAdded_0, reset=>GND, clk=>clk, isLoad=>nx215, MFC=>
      MFC, count(15)=>ramWriteAddress(15), count(14)=>ramWriteAddress(14), 
      count(13)=>ramWriteAddress(13), count(12)=>ramWriteAddress(12), 
      count(11)=>ramWriteAddress(11), count(10)=>ramWriteAddress(10), 
      count(9)=>ramWriteAddress(9), count(8)=>ramWriteAddress(8), count(7)=>
      ramWriteAddress(7), count(6)=>ramWriteAddress(6), count(5)=>
      ramWriteAddress(5), count(4)=>ramWriteAddress(4), count(3)=>
      ramWriteAddress(3), count(2)=>ramWriteAddress(2), count(1)=>
      ramWriteAddress(1), count(0)=>ramWriteAddress(0));
   writecounter : DownCounter_16 port map ( load(15)=>counter(15), load(14)
      =>counter(14), load(13)=>counter(13), load(12)=>counter(12), load(11)
      =>counter(11), load(10)=>counter(10), load(9)=>counter(9), load(8)=>
      counter(8), load(7)=>counter(7), load(6)=>counter(6), load(5)=>
      counter(5), load(4)=>counter(4), load(3)=>counter(3), load(2)=>
      counter(2), load(1)=>counter(1), load(0)=>counter(0), enable=>
      enableCounter, clk=>clk, isLoad=>nx215, currentCount(15)=>
      currentCount_15, currentCount(14)=>currentCount_14, currentCount(13)=>
      currentCount_13, currentCount(12)=>currentCount_12, currentCount(11)=>
      currentCount_11, currentCount(10)=>currentCount_10, currentCount(9)=>
      currentCount_9, currentCount(8)=>currentCount_8, currentCount(7)=>
      currentCount_7, currentCount(6)=>currentCount_6, currentCount(5)=>
      currentCount_5, currentCount(4)=>currentCount_4, currentCount(3)=>
      currentCount_3, currentCount(2)=>currentCount_2, currentCount(1)=>
      currentCount_1, currentCount(0)=>currentCount_0);
   ix6 : fake_gnd port map ( Y=>GND);
   ix133 : nor02_2x port map ( Y=>writeComplete, A0=>nx83, A1=>nx93);
   ix84 : nand04 port map ( Y=>nx83, A0=>nx76, A1=>nx82, A2=>nx90, A3=>nx96
   );
   ix77 : nor03_2x port map ( Y=>nx76, A0=>currentCount_13, A1=>
      currentCount_15, A2=>currentCount_14);
   ix83 : nor02_2x port map ( Y=>nx82, A0=>currentCount_12, A1=>
      currentCount_11);
   ix91 : nor02_2x port map ( Y=>nx90, A0=>currentCount_10, A1=>
      currentCount_9);
   ix97 : nor02_2x port map ( Y=>nx96, A0=>currentCount_8, A1=>
      currentCount_7);
   ix94 : nand04 port map ( Y=>nx93, A0=>nx114, A1=>nx120, A2=>
      writeCompleteOne_EXMPLR, A3=>nx124);
   ix115 : nor03_2x port map ( Y=>nx114, A0=>currentCount_6, A1=>
      currentCount_5, A2=>nx97);
   ix98 : inv01 port map ( Y=>nx97, A=>nx112);
   ix113 : nor02_2x port map ( Y=>nx112, A0=>currentCount_4, A1=>
      currentCount_3);
   ix121 : nor02_2x port map ( Y=>nx120, A0=>currentCount_2, A1=>
      currentCount_1);
   ix123 : nor02_2x port map ( Y=>writeCompleteOne_EXMPLR, A0=>nx203, A1=>
      nx107);
   ix108 : inv01 port map ( Y=>nx107, A=>MFC);
   ix125 : xnor2 port map ( Y=>nx124, A0=>currentCount_0, A1=>nx111);
   ix112 : inv01 port map ( Y=>nx111, A=>clk);
   ix135 : inv01 port map ( Y=>enableCounter, A=>nx115);
   ix116 : nor02_2x port map ( Y=>nx115, A0=>MFC, A1=>nx215);
   writeStepRegister_reg_Q_0 : dff port map ( Q=>toBeAdded_0, QB=>OPEN, D=>
      writeStep(0), CLK=>nx215);
   writeStepRegister_reg_Q_1 : dff port map ( Q=>toBeAdded_1, QB=>OPEN, D=>
      writeStep(1), CLK=>nx215);
   writeStepRegister_reg_Q_2 : dff port map ( Q=>toBeAdded_2, QB=>OPEN, D=>
      writeStep(2), CLK=>nx215);
   writeStepRegister_reg_Q_3 : dff port map ( Q=>toBeAdded_3, QB=>OPEN, D=>
      writeStep(3), CLK=>nx215);
   writeStepRegister_reg_Q_4 : dff port map ( Q=>toBeAdded_4, QB=>OPEN, D=>
      writeStep(4), CLK=>nx217);
   writeStepRegister_reg_Q_5 : dff port map ( Q=>toBeAdded_5, QB=>OPEN, D=>
      writeStep(5), CLK=>nx217);
   writeStepRegister_reg_Q_6 : dff port map ( Q=>toBeAdded_6, QB=>OPEN, D=>
      writeStep(6), CLK=>nx217);
   writeStepRegister_reg_Q_7 : dff port map ( Q=>toBeAdded_7, QB=>OPEN, D=>
      writeStep(7), CLK=>nx217);
   writeStepRegister_reg_Q_8 : dff port map ( Q=>toBeAdded_8, QB=>OPEN, D=>
      writeStep(8), CLK=>nx217);
   writeStepRegister_reg_Q_9 : dff port map ( Q=>toBeAdded_9, QB=>OPEN, D=>
      writeStep(9), CLK=>nx217);
   writeStepRegister_reg_Q_10 : dff port map ( Q=>toBeAdded_10, QB=>OPEN, D
      =>writeStep(10), CLK=>nx217);
   writeStepRegister_reg_Q_11 : dff port map ( Q=>toBeAdded_11, QB=>OPEN, D
      =>writeStep(11), CLK=>nx219);
   writeStepRegister_reg_Q_12 : dff port map ( Q=>toBeAdded_12, QB=>OPEN, D
      =>writeStep(12), CLK=>nx219);
   writeStepRegister_reg_Q_13 : dff port map ( Q=>toBeAdded_13, QB=>OPEN, D
      =>writeStep(13), CLK=>nx219);
   writeStepRegister_reg_Q_14 : dff port map ( Q=>toBeAdded_14, QB=>OPEN, D
      =>writeStep(14), CLK=>nx219);
   writeStepRegister_reg_Q_15 : dff port map ( Q=>toBeAdded_15, QB=>OPEN, D
      =>writeStep(15), CLK=>nx219);
   ix37 : nor02_2x port map ( Y=>ramDataOutBus(0), A0=>nx151, A1=>nx203);
   ix152 : inv01 port map ( Y=>nx151, A=>internalBus(0));
   ix39 : nor02_2x port map ( Y=>ramDataOutBus(1), A0=>nx154, A1=>nx203);
   ix155 : inv01 port map ( Y=>nx154, A=>internalBus(1));
   ix41 : nor02_2x port map ( Y=>ramDataOutBus(2), A0=>nx157, A1=>nx203);
   ix158 : inv01 port map ( Y=>nx157, A=>internalBus(2));
   ix43 : nor02_2x port map ( Y=>ramDataOutBus(3), A0=>nx160, A1=>nx203);
   ix161 : inv01 port map ( Y=>nx160, A=>internalBus(3));
   ix45 : nor02_2x port map ( Y=>ramDataOutBus(4), A0=>nx163, A1=>nx203);
   ix164 : inv01 port map ( Y=>nx163, A=>internalBus(4));
   ix47 : nor02_2x port map ( Y=>ramDataOutBus(5), A0=>nx166, A1=>nx203);
   ix167 : inv01 port map ( Y=>nx166, A=>internalBus(5));
   ix49 : nor02_2x port map ( Y=>ramDataOutBus(6), A0=>nx169, A1=>nx205);
   ix170 : inv01 port map ( Y=>nx169, A=>internalBus(6));
   ix51 : nor02_2x port map ( Y=>ramDataOutBus(7), A0=>nx172, A1=>nx205);
   ix173 : inv01 port map ( Y=>nx172, A=>internalBus(7));
   ix53 : nor02_2x port map ( Y=>ramDataOutBus(8), A0=>nx175, A1=>nx205);
   ix176 : inv01 port map ( Y=>nx175, A=>internalBus(8));
   ix55 : nor02_2x port map ( Y=>ramDataOutBus(9), A0=>nx178, A1=>nx205);
   ix179 : inv01 port map ( Y=>nx178, A=>internalBus(9));
   ix57 : nor02_2x port map ( Y=>ramDataOutBus(10), A0=>nx181, A1=>nx205);
   ix182 : inv01 port map ( Y=>nx181, A=>internalBus(10));
   ix59 : nor02_2x port map ( Y=>ramDataOutBus(11), A0=>nx184, A1=>nx205);
   ix185 : inv01 port map ( Y=>nx184, A=>internalBus(11));
   ix61 : nor02_2x port map ( Y=>ramDataOutBus(12), A0=>nx187, A1=>nx205);
   ix188 : inv01 port map ( Y=>nx187, A=>internalBus(12));
   ix63 : nor02_2x port map ( Y=>ramDataOutBus(13), A0=>nx190, A1=>nx207);
   ix191 : inv01 port map ( Y=>nx190, A=>internalBus(13));
   ix65 : nor02_2x port map ( Y=>ramDataOutBus(14), A0=>nx193, A1=>nx207);
   ix194 : inv01 port map ( Y=>nx193, A=>internalBus(14));
   ix67 : nor02_2x port map ( Y=>ramDataOutBus(15), A0=>nx196, A1=>nx207);
   ix197 : inv01 port map ( Y=>nx196, A=>internalBus(15));
   ix202 : inv02 port map ( Y=>nx203, A=>writeToRam);
   ix204 : inv02 port map ( Y=>nx205, A=>writeToRam);
   ix206 : inv02 port map ( Y=>nx207, A=>writeToRam);
   ix212 : inv01 port map ( Y=>nx213, A=>initCounter);
   ix214 : inv02 port map ( Y=>nx215, A=>nx213);
   ix216 : inv02 port map ( Y=>nx217, A=>nx213);
   ix218 : inv02 port map ( Y=>nx219, A=>nx213);
end WriteDMAArch_unfold_1968 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity WriteLogic_16_16 is
   port (
      clk : IN std_logic ;
      resetState : IN std_logic ;
      switchRam : IN std_logic ;
      ramBasedAddress : IN std_logic_vector (15 DOWNTO 0) ;
      internalBus : IN std_logic_vector (15 DOWNTO 0) ;
      ramWrite : OUT std_logic ;
      ramDataOutBus : OUT std_logic_vector (15 DOWNTO 0) ;
      ramAddress : OUT std_logic_vector (15 DOWNTO 0) ;
      MFC : IN std_logic ;
      outputSize : IN std_logic_vector (15 DOWNTO 0) ;
      write : IN std_logic ;
      writeDone : OUT std_logic ;
      writeDoneOne : OUT std_logic) ;
end WriteLogic_16_16 ;

architecture ReadLogicArch_unfold_2748 of WriteLogic_16_16 is
   component WriteDMA_16_16
      port (
         clk : IN std_logic ;
         writeBaseAddress : IN std_logic_vector (15 DOWNTO 0) ;
         writeStep : IN std_logic_vector (15 DOWNTO 0) ;
         writeToRam : IN std_logic ;
         counter : IN std_logic_vector (15 DOWNTO 0) ;
         initCounter : IN std_logic ;
         initAddress : IN std_logic ;
         internalBus : IN std_logic_vector (15 DOWNTO 0) ;
         ramWrite : OUT std_logic ;
         ramDataOutBus : OUT std_logic_vector (15 DOWNTO 0) ;
         ramWriteAddress : OUT std_logic_vector (15 DOWNTO 0) ;
         MFC : IN std_logic ;
         writeComplete : OUT std_logic ;
         writeCompleteOne : OUT std_logic) ;
   end component ;
   component Counter2_16
      port (
         load : IN std_logic_vector (15 DOWNTO 0) ;
         reset : IN std_logic ;
         clk : IN std_logic ;
         isLoad : IN std_logic ;
         count : OUT std_logic_vector (15 DOWNTO 0)) ;
   end component ;
   signal writeDone_EXMPLR, currentState_2, addressRegOut_15, 
      addressRegOut_14, addressRegOut_13, addressRegOut_12, addressRegOut_11, 
      addressRegOut_10, addressRegOut_9, addressRegOut_8, addressRegOut_7, 
      addressRegOut_6, addressRegOut_5, addressRegOut_4, addressRegOut_3, 
      addressRegOut_2, addressRegOut_1, addressRegOut_0, addressRegIn_15, 
      addressRegIn_14, addressRegIn_13, addressRegIn_12, addressRegIn_11, 
      addressRegIn_10, addressRegIn_9, addressRegIn_8, addressRegIn_7, 
      addressRegIn_6, addressRegIn_5, addressRegIn_4, addressRegIn_3, 
      addressRegIn_2, addressRegIn_1, addressRegIn_0, baseAddressCounterClk, 
      dmaCountIn_15, dmaCountIn_14, dmaCountIn_13, dmaCountIn_12, 
      dmaCountIn_11, dmaCountIn_10, dmaCountIn_9, dmaCountIn_8, dmaCountIn_7, 
      dmaCountIn_6, dmaCountIn_5, dmaCountIn_4, dmaCountIn_3, dmaCountIn_2, 
      dmaCountIn_1, dmaCountIn_0, ramWrite_EXMPLR, nextState_1, 
      currentState_4, nx61, NOT_clk, currentState_3, currentState_0, nx38, 
      nx42, nx68, nx78, nx89, nx99, nx109, nx123, nx125, nx128, nx130, nx134, 
      nx138, nx142, nx146, nx151, nx154, nx156, nx158, nx160, nx166, nx169, 
      nx172, nx175, nx178, nx181, nx184, nx187, nx190, nx193, nx196, nx199, 
      nx202, nx205, nx208, nx211, nx214, nx238, nx240, nx242, nx244, nx246, 
      nx248: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   ramWrite <= ramWrite_EXMPLR ;
   writeDone <= writeDone_EXMPLR ;
   dma : WriteDMA_16_16 port map ( clk=>clk, writeBaseAddress(15)=>
      addressRegOut_15, writeBaseAddress(14)=>addressRegOut_14, 
      writeBaseAddress(13)=>addressRegOut_13, writeBaseAddress(12)=>
      addressRegOut_12, writeBaseAddress(11)=>addressRegOut_11, 
      writeBaseAddress(10)=>addressRegOut_10, writeBaseAddress(9)=>
      addressRegOut_9, writeBaseAddress(8)=>addressRegOut_8, 
      writeBaseAddress(7)=>addressRegOut_7, writeBaseAddress(6)=>
      addressRegOut_6, writeBaseAddress(5)=>addressRegOut_5, 
      writeBaseAddress(4)=>addressRegOut_4, writeBaseAddress(3)=>
      addressRegOut_3, writeBaseAddress(2)=>addressRegOut_2, 
      writeBaseAddress(1)=>addressRegOut_1, writeBaseAddress(0)=>
      addressRegOut_0, writeStep(15)=>outputSize(15), writeStep(14)=>
      outputSize(14), writeStep(13)=>outputSize(13), writeStep(12)=>
      outputSize(12), writeStep(11)=>outputSize(11), writeStep(10)=>
      outputSize(10), writeStep(9)=>outputSize(9), writeStep(8)=>
      outputSize(8), writeStep(7)=>outputSize(7), writeStep(6)=>
      outputSize(6), writeStep(5)=>outputSize(5), writeStep(4)=>
      outputSize(4), writeStep(3)=>outputSize(3), writeStep(2)=>
      outputSize(2), writeStep(1)=>outputSize(1), writeStep(0)=>
      outputSize(0), writeToRam=>ramWrite_EXMPLR, counter(15)=>dmaCountIn_15, 
      counter(14)=>dmaCountIn_14, counter(13)=>dmaCountIn_13, counter(12)=>
      dmaCountIn_12, counter(11)=>dmaCountIn_11, counter(10)=>dmaCountIn_10, 
      counter(9)=>dmaCountIn_9, counter(8)=>dmaCountIn_8, counter(7)=>
      dmaCountIn_7, counter(6)=>dmaCountIn_6, counter(5)=>dmaCountIn_5, 
      counter(4)=>dmaCountIn_4, counter(3)=>dmaCountIn_3, counter(2)=>
      dmaCountIn_2, counter(1)=>dmaCountIn_1, counter(0)=>dmaCountIn_0, 
      initCounter=>currentState_2, initAddress=>nextState_1, internalBus(15)
      =>internalBus(15), internalBus(14)=>internalBus(14), internalBus(13)=>
      internalBus(13), internalBus(12)=>internalBus(12), internalBus(11)=>
      internalBus(11), internalBus(10)=>internalBus(10), internalBus(9)=>
      internalBus(9), internalBus(8)=>internalBus(8), internalBus(7)=>
      internalBus(7), internalBus(6)=>internalBus(6), internalBus(5)=>
      internalBus(5), internalBus(4)=>internalBus(4), internalBus(3)=>
      internalBus(3), internalBus(2)=>internalBus(2), internalBus(1)=>
      internalBus(1), internalBus(0)=>internalBus(0), ramWrite=>DANGLING(0), 
      ramDataOutBus(15)=>ramDataOutBus(15), ramDataOutBus(14)=>
      ramDataOutBus(14), ramDataOutBus(13)=>ramDataOutBus(13), 
      ramDataOutBus(12)=>ramDataOutBus(12), ramDataOutBus(11)=>
      ramDataOutBus(11), ramDataOutBus(10)=>ramDataOutBus(10), 
      ramDataOutBus(9)=>ramDataOutBus(9), ramDataOutBus(8)=>ramDataOutBus(8), 
      ramDataOutBus(7)=>ramDataOutBus(7), ramDataOutBus(6)=>ramDataOutBus(6), 
      ramDataOutBus(5)=>ramDataOutBus(5), ramDataOutBus(4)=>ramDataOutBus(4), 
      ramDataOutBus(3)=>ramDataOutBus(3), ramDataOutBus(2)=>ramDataOutBus(2), 
      ramDataOutBus(1)=>ramDataOutBus(1), ramDataOutBus(0)=>ramDataOutBus(0), 
      ramWriteAddress(15)=>ramAddress(15), ramWriteAddress(14)=>
      ramAddress(14), ramWriteAddress(13)=>ramAddress(13), 
      ramWriteAddress(12)=>ramAddress(12), ramWriteAddress(11)=>
      ramAddress(11), ramWriteAddress(10)=>ramAddress(10), 
      ramWriteAddress(9)=>ramAddress(9), ramWriteAddress(8)=>ramAddress(8), 
      ramWriteAddress(7)=>ramAddress(7), ramWriteAddress(6)=>ramAddress(6), 
      ramWriteAddress(5)=>ramAddress(5), ramWriteAddress(4)=>ramAddress(4), 
      ramWriteAddress(3)=>ramAddress(3), ramWriteAddress(2)=>ramAddress(2), 
      ramWriteAddress(1)=>ramAddress(1), ramWriteAddress(0)=>ramAddress(0), 
      MFC=>MFC, writeComplete=>writeDone_EXMPLR, writeCompleteOne=>
      writeDoneOne);
   baseAddressCounter : Counter2_16 port map ( load(15)=>addressRegIn_15, 
      load(14)=>addressRegIn_14, load(13)=>addressRegIn_13, load(12)=>
      addressRegIn_12, load(11)=>addressRegIn_11, load(10)=>addressRegIn_10, 
      load(9)=>addressRegIn_9, load(8)=>addressRegIn_8, load(7)=>
      addressRegIn_7, load(6)=>addressRegIn_6, load(5)=>addressRegIn_5, 
      load(4)=>addressRegIn_4, load(3)=>addressRegIn_3, load(2)=>
      addressRegIn_2, load(1)=>addressRegIn_1, load(0)=>addressRegIn_0, 
      reset=>nextState_1, clk=>baseAddressCounterClk, isLoad=>nx238, 
      count(15)=>addressRegOut_15, count(14)=>addressRegOut_14, count(13)=>
      addressRegOut_13, count(12)=>addressRegOut_12, count(11)=>
      addressRegOut_11, count(10)=>addressRegOut_10, count(9)=>
      addressRegOut_9, count(8)=>addressRegOut_8, count(7)=>addressRegOut_7, 
      count(6)=>addressRegOut_6, count(5)=>addressRegOut_5, count(4)=>
      addressRegOut_4, count(3)=>addressRegOut_3, count(2)=>addressRegOut_2, 
      count(1)=>addressRegOut_1, count(0)=>addressRegOut_0);
   ix6 : fake_gnd port map ( Y=>nextState_1);
   ix81 : nor02_2x port map ( Y=>ramWrite_EXMPLR, A0=>nx123, A1=>nx125);
   ix124 : inv01 port map ( Y=>nx123, A=>write);
   ix100 : mux21 port map ( Y=>nx99, A0=>nx128, A1=>nx125, S0=>nx160);
   ix129 : nand02 port map ( Y=>nx128, A0=>nx130, A1=>currentState_3);
   ix131 : inv01 port map ( Y=>nx130, A=>switchRam);
   ix90 : mux21 port map ( Y=>nx89, A0=>nx134, A1=>nx166, S0=>nx160);
   ix135 : nand02 port map ( Y=>nx134, A0=>nx130, A1=>currentState_2);
   ix79 : mux21 port map ( Y=>nx78, A0=>nx138, A1=>nx244, S0=>nx160);
   ix139 : nand02 port map ( Y=>nx138, A0=>nx130, A1=>currentState_0);
   ix69 : mux21 port map ( Y=>nx68, A0=>nx142, A1=>nx158, S0=>nx160);
   ix143 : oai21 port map ( Y=>nx142, A0=>nx238, A1=>currentState_4, B0=>
      nx130);
   ix110 : oai21 port map ( Y=>nx109, A0=>nx146, A1=>nx61, B0=>nx130);
   reg_currentState_1 : dff port map ( Q=>OPEN, QB=>nx146, D=>nx109, CLK=>
      NOT_clk);
   ix149 : inv01 port map ( Y=>NOT_clk, A=>clk);
   ix45 : nand04 port map ( Y=>nx61, A0=>nx151, A1=>nx130, A2=>nx154, A3=>
      nx156);
   ix152 : nand02 port map ( Y=>nx151, A0=>writeDone_EXMPLR, A1=>
      currentState_4);
   reg_currentState_4 : dff port map ( Q=>currentState_4, QB=>nx125, D=>nx99, 
      CLK=>NOT_clk);
   ix155 : nand02 port map ( Y=>nx154, A0=>write, A1=>currentState_0);
   ix157 : nand02 port map ( Y=>nx156, A0=>nx125, A1=>nx158);
   reg_currentState_0 : dff port map ( Q=>currentState_0, QB=>nx158, D=>nx68, 
      CLK=>NOT_clk);
   ix161 : nor02_2x port map ( Y=>nx160, A0=>nx42, A1=>nx38);
   ix43 : nand02 port map ( Y=>nx42, A0=>nx151, A1=>nx130);
   ix39 : nand02 port map ( Y=>nx38, A0=>nx154, A1=>nx156);
   reg_currentState_2 : dff port map ( Q=>currentState_2, QB=>OPEN, D=>nx78, 
      CLK=>NOT_clk);
   reg_currentState_3 : dff port map ( Q=>currentState_3, QB=>nx166, D=>nx89, 
      CLK=>NOT_clk);
   ix83 : nor02_2x port map ( Y=>dmaCountIn_0, A0=>nx169, A1=>nx244);
   ix170 : inv01 port map ( Y=>nx169, A=>outputSize(0));
   ix85 : nor02_2x port map ( Y=>dmaCountIn_1, A0=>nx172, A1=>nx244);
   ix173 : inv01 port map ( Y=>nx172, A=>outputSize(1));
   ix87 : nor02_2x port map ( Y=>dmaCountIn_2, A0=>nx175, A1=>nx244);
   ix176 : inv01 port map ( Y=>nx175, A=>outputSize(2));
   ix89 : nor02_2x port map ( Y=>dmaCountIn_3, A0=>nx178, A1=>nx244);
   ix179 : inv01 port map ( Y=>nx178, A=>outputSize(3));
   ix91 : nor02_2x port map ( Y=>dmaCountIn_4, A0=>nx181, A1=>nx244);
   ix182 : inv01 port map ( Y=>nx181, A=>outputSize(4));
   ix93 : nor02_2x port map ( Y=>dmaCountIn_5, A0=>nx184, A1=>nx244);
   ix185 : inv01 port map ( Y=>nx184, A=>outputSize(5));
   ix95 : nor02_2x port map ( Y=>dmaCountIn_6, A0=>nx187, A1=>nx246);
   ix188 : inv01 port map ( Y=>nx187, A=>outputSize(6));
   ix97 : nor02_2x port map ( Y=>dmaCountIn_7, A0=>nx190, A1=>nx246);
   ix191 : inv01 port map ( Y=>nx190, A=>outputSize(7));
   ix99 : nor02_2x port map ( Y=>dmaCountIn_8, A0=>nx193, A1=>nx246);
   ix194 : inv01 port map ( Y=>nx193, A=>outputSize(8));
   ix101 : nor02_2x port map ( Y=>dmaCountIn_9, A0=>nx196, A1=>nx246);
   ix197 : inv01 port map ( Y=>nx196, A=>outputSize(9));
   ix103 : nor02_2x port map ( Y=>dmaCountIn_10, A0=>nx199, A1=>nx246);
   ix200 : inv01 port map ( Y=>nx199, A=>outputSize(10));
   ix105 : nor02_2x port map ( Y=>dmaCountIn_11, A0=>nx202, A1=>nx246);
   ix203 : inv01 port map ( Y=>nx202, A=>outputSize(11));
   ix107 : nor02_2x port map ( Y=>dmaCountIn_12, A0=>nx205, A1=>nx246);
   ix206 : inv01 port map ( Y=>nx205, A=>outputSize(12));
   ix109 : nor02_2x port map ( Y=>dmaCountIn_13, A0=>nx208, A1=>nx248);
   ix209 : inv01 port map ( Y=>nx208, A=>outputSize(13));
   ix111 : nor02_2x port map ( Y=>dmaCountIn_14, A0=>nx211, A1=>nx248);
   ix212 : inv01 port map ( Y=>nx211, A=>outputSize(14));
   ix113 : nor02_2x port map ( Y=>dmaCountIn_15, A0=>nx214, A1=>nx248);
   ix215 : inv01 port map ( Y=>nx214, A=>outputSize(15));
   ix121 : mux21 port map ( Y=>baseAddressCounterClk, A0=>nx146, A1=>nx166, 
      S0=>clk);
   lat_addressRegIn_0 : latch port map ( Q=>addressRegIn_0, D=>
      ramBasedAddress(0), CLK=>nx238);
   lat_addressRegIn_1 : latch port map ( Q=>addressRegIn_1, D=>
      ramBasedAddress(1), CLK=>nx238);
   lat_addressRegIn_2 : latch port map ( Q=>addressRegIn_2, D=>
      ramBasedAddress(2), CLK=>nx238);
   lat_addressRegIn_3 : latch port map ( Q=>addressRegIn_3, D=>
      ramBasedAddress(3), CLK=>nx238);
   lat_addressRegIn_4 : latch port map ( Q=>addressRegIn_4, D=>
      ramBasedAddress(4), CLK=>nx238);
   lat_addressRegIn_5 : latch port map ( Q=>addressRegIn_5, D=>
      ramBasedAddress(5), CLK=>nx240);
   lat_addressRegIn_6 : latch port map ( Q=>addressRegIn_6, D=>
      ramBasedAddress(6), CLK=>nx240);
   lat_addressRegIn_7 : latch port map ( Q=>addressRegIn_7, D=>
      ramBasedAddress(7), CLK=>nx240);
   lat_addressRegIn_8 : latch port map ( Q=>addressRegIn_8, D=>
      ramBasedAddress(8), CLK=>nx240);
   lat_addressRegIn_9 : latch port map ( Q=>addressRegIn_9, D=>
      ramBasedAddress(9), CLK=>nx240);
   lat_addressRegIn_10 : latch port map ( Q=>addressRegIn_10, D=>
      ramBasedAddress(10), CLK=>nx240);
   lat_addressRegIn_11 : latch port map ( Q=>addressRegIn_11, D=>
      ramBasedAddress(11), CLK=>nx240);
   lat_addressRegIn_12 : latch port map ( Q=>addressRegIn_12, D=>
      ramBasedAddress(12), CLK=>nx242);
   lat_addressRegIn_13 : latch port map ( Q=>addressRegIn_13, D=>
      ramBasedAddress(13), CLK=>nx242);
   lat_addressRegIn_14 : latch port map ( Q=>addressRegIn_14, D=>
      ramBasedAddress(14), CLK=>nx242);
   lat_addressRegIn_15 : latch port map ( Q=>addressRegIn_15, D=>
      ramBasedAddress(15), CLK=>nx242);
   ix237 : inv02 port map ( Y=>nx238, A=>nx146);
   ix239 : inv02 port map ( Y=>nx240, A=>nx146);
   ix241 : inv02 port map ( Y=>nx242, A=>nx146);
   ix243 : inv02 port map ( Y=>nx244, A=>currentState_2);
   ix245 : inv02 port map ( Y=>nx246, A=>currentState_2);
   ix247 : inv02 port map ( Y=>nx248, A=>currentState_2);
end ReadLogicArch_unfold_2748 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DMAController is
   port (
      clk : IN std_logic ;
      reset : IN std_logic ;
      weightsInternalBus : OUT std_logic_vector (15 DOWNTO 0) ;
      windowInternalBus : INOUT std_logic_vector (15 DOWNTO 0) ;
      weightsRamAddress : OUT std_logic_vector (15 DOWNTO 0) ;
      windowRamAddress : OUT std_logic_vector (15 DOWNTO 0) ;
      weightsRamDataInBus : IN std_logic_vector (15 DOWNTO 0) ;
      windowRamDataInBus : IN std_logic_vector (15 DOWNTO 0) ;
      weightsRamRead : OUT std_logic ;
      windowRamRead : OUT std_logic ;
      windowRamWrite : OUT std_logic ;
      windowRamDataOutBus : OUT std_logic_vector (15 DOWNTO 0) ;
      MFCWindowRam : IN std_logic ;
      MFCWeightsRam : IN std_logic ;
      loadNextFilter : IN std_logic ;
      loadNextWindow : IN std_logic ;
      loadNextRow : IN std_logic ;
      loadWord : IN std_logic ;
      layerFinished : IN std_logic ;
      write : IN std_logic ;
      filterSize : IN std_logic_vector (15 DOWNTO 0) ;
      inputSize : IN std_logic_vector (15 DOWNTO 0) ;
      outputSize : IN std_logic_vector (15 DOWNTO 0) ;
      windowRamBaseAddress1 : IN std_logic_vector (15 DOWNTO 0) ;
      windowRamBaseAddress2 : IN std_logic_vector (15 DOWNTO 0) ;
      filterRamBaseAddress : IN std_logic_vector (15 DOWNTO 0) ;
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
   component ReadLogic_16_16
      port (
         clk : IN std_logic ;
         resetState : IN std_logic ;
         switchRam : IN std_logic ;
         ramBasedAddress : IN std_logic_vector (15 DOWNTO 0) ;
         internalBus : OUT std_logic_vector (15 DOWNTO 0) ;
         ramDataInBus : IN std_logic_vector (15 DOWNTO 0) ;
         ramRead : OUT std_logic ;
         ramAddress : OUT std_logic_vector (15 DOWNTO 0) ;
         MFC : IN std_logic ;
         inputSize : IN std_logic_vector (15 DOWNTO 0) ;
         filterSize : IN std_logic_vector (15 DOWNTO 0) ;
         isFilter : IN std_logic ;
         loadNextWordList : IN std_logic ;
         loadWord : IN std_logic ;
         readOne : OUT std_logic ;
         readFinal : OUT std_logic ;
         aluNumber : OUT std_logic_vector (2 DOWNTO 0)) ;
   end component ;
   component ReadLogic_16_16_unfolded1
      port (
         clk : IN std_logic ;
         resetState : IN std_logic ;
         switchRam : IN std_logic ;
         ramBasedAddress : IN std_logic_vector (15 DOWNTO 0) ;
         internalBus : OUT std_logic_vector (15 DOWNTO 0) ;
         ramDataInBus : IN std_logic_vector (15 DOWNTO 0) ;
         ramRead : OUT std_logic ;
         ramAddress : OUT std_logic_vector (15 DOWNTO 0) ;
         MFC : IN std_logic ;
         inputSize : IN std_logic_vector (15 DOWNTO 0) ;
         filterSize : IN std_logic_vector (15 DOWNTO 0) ;
         isFilter : IN std_logic ;
         loadNextWordList : IN std_logic ;
         loadWord : IN std_logic ;
         readOne : OUT std_logic ;
         readFinal : OUT std_logic ;
         aluNumber : OUT std_logic_vector (2 DOWNTO 0)) ;
   end component ;
   component WriteLogic_16_16
      port (
         clk : IN std_logic ;
         resetState : IN std_logic ;
         switchRam : IN std_logic ;
         ramBasedAddress : IN std_logic_vector (15 DOWNTO 0) ;
         internalBus : IN std_logic_vector (15 DOWNTO 0) ;
         ramWrite : OUT std_logic ;
         ramDataOutBus : OUT std_logic_vector (15 DOWNTO 0) ;
         ramAddress : OUT std_logic_vector (15 DOWNTO 0) ;
         MFC : IN std_logic ;
         outputSize : IN std_logic_vector (15 DOWNTO 0) ;
         write : IN std_logic ;
         writeDone : OUT std_logic ;
         writeDoneOne : OUT std_logic) ;
   end component ;
   signal currentReadRamBaseAddress_15, currentReadRamBaseAddress_14, 
      currentReadRamBaseAddress_13, currentReadRamBaseAddress_12, 
      currentReadRamBaseAddress_11, currentReadRamBaseAddress_10, 
      currentReadRamBaseAddress_9, currentReadRamBaseAddress_8, 
      currentReadRamBaseAddress_7, currentReadRamBaseAddress_6, 
      currentReadRamBaseAddress_5, currentReadRamBaseAddress_4, 
      currentReadRamBaseAddress_3, currentReadRamBaseAddress_2, 
      currentReadRamBaseAddress_1, currentReadRamBaseAddress_0, 
      currentWriteRamBaseAddress_15, currentWriteRamBaseAddress_14, 
      currentWriteRamBaseAddress_13, currentWriteRamBaseAddress_12, 
      currentWriteRamBaseAddress_11, currentWriteRamBaseAddress_10, 
      currentWriteRamBaseAddress_9, currentWriteRamBaseAddress_8, 
      currentWriteRamBaseAddress_7, currentWriteRamBaseAddress_6, 
      currentWriteRamBaseAddress_5, currentWriteRamBaseAddress_4, 
      currentWriteRamBaseAddress_3, currentWriteRamBaseAddress_2, 
      currentWriteRamBaseAddress_1, currentWriteRamBaseAddress_0, 
      readLogicRamAddress_15, readLogicRamAddress_14, readLogicRamAddress_13, 
      readLogicRamAddress_12, readLogicRamAddress_11, readLogicRamAddress_10, 
      readLogicRamAddress_9, readLogicRamAddress_8, readLogicRamAddress_7, 
      readLogicRamAddress_6, readLogicRamAddress_5, readLogicRamAddress_4, 
      readLogicRamAddress_3, readLogicRamAddress_2, readLogicRamAddress_1, 
      readLogicRamAddress_0, writeLogicRamAddress_15, 
      writeLogicRamAddress_14, writeLogicRamAddress_13, 
      writeLogicRamAddress_12, writeLogicRamAddress_11, 
      writeLogicRamAddress_10, writeLogicRamAddress_9, 
      writeLogicRamAddress_8, writeLogicRamAddress_7, writeLogicRamAddress_6, 
      writeLogicRamAddress_5, writeLogicRamAddress_4, writeLogicRamAddress_3, 
      writeLogicRamAddress_2, writeLogicRamAddress_1, writeLogicRamAddress_0, 
      switchRam, resetLogics, PWR, ramBaseAddressSelector, 
      NOT_ramBaseAddressSelector, nx389, nx393, nx398, nx401, nx403, nx406, 
      nx408, nx411, nx413, nx416, nx418, nx421, nx423, nx426, nx428, nx431, 
      nx433, nx436, nx438, nx441, nx443, nx446, nx448, nx451, nx453, nx456, 
      nx458, nx461, nx463, nx466, nx468, nx471, nx473, nx476, nx478, nx481, 
      nx483, nx486, nx488, nx491, nx493, nx496, nx498, nx501, nx503, nx506, 
      nx508, nx511, nx513, nx516, nx518, nx521, nx523, nx526, nx528, nx531, 
      nx533, nx536, nx538, nx541, nx543, nx546, nx548, nx551, nx553, nx556, 
      nx558, nx563, nx565, nx568, nx570, nx573, nx575, nx578, nx580, nx583, 
      nx585, nx588, nx590, nx593, nx595, nx598, nx600, nx603, nx605, nx608, 
      nx610, nx613, nx615, nx618, nx620, nx623, nx625, nx628, nx630, nx633, 
      nx635, nx642, nx644, nx646, nx648, nx650, nx652, nx654, nx656, nx658, 
      nx660, nx662, nx664, nx666, nx668: std_logic ;

begin
   windowReadLogicEnt : ReadLogic_16_16 port map ( clk=>clk, resetState=>
      resetLogics, switchRam=>switchRam, ramBasedAddress(15)=>
      currentReadRamBaseAddress_15, ramBasedAddress(14)=>
      currentReadRamBaseAddress_14, ramBasedAddress(13)=>
      currentReadRamBaseAddress_13, ramBasedAddress(12)=>
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
      currentReadRamBaseAddress_0, internalBus(15)=>windowInternalBus(15), 
      internalBus(14)=>windowInternalBus(14), internalBus(13)=>
      windowInternalBus(13), internalBus(12)=>windowInternalBus(12), 
      internalBus(11)=>windowInternalBus(11), internalBus(10)=>
      windowInternalBus(10), internalBus(9)=>windowInternalBus(9), 
      internalBus(8)=>windowInternalBus(8), internalBus(7)=>
      windowInternalBus(7), internalBus(6)=>windowInternalBus(6), 
      internalBus(5)=>windowInternalBus(5), internalBus(4)=>
      windowInternalBus(4), internalBus(3)=>windowInternalBus(3), 
      internalBus(2)=>windowInternalBus(2), internalBus(1)=>
      windowInternalBus(1), internalBus(0)=>windowInternalBus(0), 
      ramDataInBus(15)=>windowRamDataInBus(15), ramDataInBus(14)=>
      windowRamDataInBus(14), ramDataInBus(13)=>windowRamDataInBus(13), 
      ramDataInBus(12)=>windowRamDataInBus(12), ramDataInBus(11)=>
      windowRamDataInBus(11), ramDataInBus(10)=>windowRamDataInBus(10), 
      ramDataInBus(9)=>windowRamDataInBus(9), ramDataInBus(8)=>
      windowRamDataInBus(8), ramDataInBus(7)=>windowRamDataInBus(7), 
      ramDataInBus(6)=>windowRamDataInBus(6), ramDataInBus(5)=>
      windowRamDataInBus(5), ramDataInBus(4)=>windowRamDataInBus(4), 
      ramDataInBus(3)=>windowRamDataInBus(3), ramDataInBus(2)=>
      windowRamDataInBus(2), ramDataInBus(1)=>windowRamDataInBus(1), 
      ramDataInBus(0)=>windowRamDataInBus(0), ramRead=>windowRamRead, 
      ramAddress(15)=>readLogicRamAddress_15, ramAddress(14)=>
      readLogicRamAddress_14, ramAddress(13)=>readLogicRamAddress_13, 
      ramAddress(12)=>readLogicRamAddress_12, ramAddress(11)=>
      readLogicRamAddress_11, ramAddress(10)=>readLogicRamAddress_10, 
      ramAddress(9)=>readLogicRamAddress_9, ramAddress(8)=>
      readLogicRamAddress_8, ramAddress(7)=>readLogicRamAddress_7, 
      ramAddress(6)=>readLogicRamAddress_6, ramAddress(5)=>
      readLogicRamAddress_5, ramAddress(4)=>readLogicRamAddress_4, 
      ramAddress(3)=>readLogicRamAddress_3, ramAddress(2)=>
      readLogicRamAddress_2, ramAddress(1)=>readLogicRamAddress_1, 
      ramAddress(0)=>readLogicRamAddress_0, MFC=>MFCWindowRam, inputSize(15)
      =>inputSize(15), inputSize(14)=>inputSize(14), inputSize(13)=>
      inputSize(13), inputSize(12)=>inputSize(12), inputSize(11)=>
      inputSize(11), inputSize(10)=>inputSize(10), inputSize(9)=>
      inputSize(9), inputSize(8)=>inputSize(8), inputSize(7)=>inputSize(7), 
      inputSize(6)=>inputSize(6), inputSize(5)=>inputSize(5), inputSize(4)=>
      inputSize(4), inputSize(3)=>inputSize(3), inputSize(2)=>inputSize(2), 
      inputSize(1)=>inputSize(1), inputSize(0)=>inputSize(0), filterSize(15)
      =>resetLogics, filterSize(14)=>resetLogics, filterSize(13)=>
      resetLogics, filterSize(12)=>resetLogics, filterSize(11)=>resetLogics, 
      filterSize(10)=>resetLogics, filterSize(9)=>resetLogics, filterSize(8)
      =>resetLogics, filterSize(7)=>resetLogics, filterSize(6)=>resetLogics, 
      filterSize(5)=>resetLogics, filterSize(4)=>resetLogics, filterSize(3)
      =>resetLogics, filterSize(2)=>filterSize(2), filterSize(1)=>
      filterSize(1), filterSize(0)=>filterSize(0), isFilter=>resetLogics, 
      loadNextWordList=>loadNextWindow, loadWord=>loadNextRow, readOne=>
      windowReadOne, readFinal=>windowReadFinal, aluNumber(2)=>
      windowAluNumber(2), aluNumber(1)=>windowAluNumber(1), aluNumber(0)=>
      windowAluNumber(0));
   filterReadLogicEnt : ReadLogic_16_16_unfolded1 port map ( clk=>clk, 
      resetState=>resetLogics, switchRam=>reset, ramBasedAddress(15)=>
      filterRamBaseAddress(15), ramBasedAddress(14)=>
      filterRamBaseAddress(14), ramBasedAddress(13)=>
      filterRamBaseAddress(13), ramBasedAddress(12)=>
      filterRamBaseAddress(12), ramBasedAddress(11)=>
      filterRamBaseAddress(11), ramBasedAddress(10)=>
      filterRamBaseAddress(10), ramBasedAddress(9)=>filterRamBaseAddress(9), 
      ramBasedAddress(8)=>filterRamBaseAddress(8), ramBasedAddress(7)=>
      filterRamBaseAddress(7), ramBasedAddress(6)=>filterRamBaseAddress(6), 
      ramBasedAddress(5)=>filterRamBaseAddress(5), ramBasedAddress(4)=>
      filterRamBaseAddress(4), ramBasedAddress(3)=>filterRamBaseAddress(3), 
      ramBasedAddress(2)=>filterRamBaseAddress(2), ramBasedAddress(1)=>
      filterRamBaseAddress(1), ramBasedAddress(0)=>filterRamBaseAddress(0), 
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
      internalBus(0)=>weightsInternalBus(0), ramDataInBus(15)=>
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
      weightsRamDataInBus(0), ramRead=>weightsRamRead, ramAddress(15)=>
      weightsRamAddress(15), ramAddress(14)=>weightsRamAddress(14), 
      ramAddress(13)=>weightsRamAddress(13), ramAddress(12)=>
      weightsRamAddress(12), ramAddress(11)=>weightsRamAddress(11), 
      ramAddress(10)=>weightsRamAddress(10), ramAddress(9)=>
      weightsRamAddress(9), ramAddress(8)=>weightsRamAddress(8), 
      ramAddress(7)=>weightsRamAddress(7), ramAddress(6)=>
      weightsRamAddress(6), ramAddress(5)=>weightsRamAddress(5), 
      ramAddress(4)=>weightsRamAddress(4), ramAddress(3)=>
      weightsRamAddress(3), ramAddress(2)=>weightsRamAddress(2), 
      ramAddress(1)=>weightsRamAddress(1), ramAddress(0)=>
      weightsRamAddress(0), MFC=>MFCWeightsRam, inputSize(15)=>
      filterSize(15), inputSize(14)=>filterSize(14), inputSize(13)=>
      filterSize(13), inputSize(12)=>filterSize(12), inputSize(11)=>
      filterSize(11), inputSize(10)=>filterSize(10), inputSize(9)=>
      filterSize(9), inputSize(8)=>filterSize(8), inputSize(7)=>
      filterSize(7), inputSize(6)=>filterSize(6), inputSize(5)=>
      filterSize(5), inputSize(4)=>filterSize(4), inputSize(3)=>
      filterSize(3), inputSize(2)=>filterSize(2), inputSize(1)=>
      filterSize(1), inputSize(0)=>filterSize(0), filterSize(15)=>
      resetLogics, filterSize(14)=>resetLogics, filterSize(13)=>resetLogics, 
      filterSize(12)=>resetLogics, filterSize(11)=>resetLogics, 
      filterSize(10)=>resetLogics, filterSize(9)=>resetLogics, filterSize(8)
      =>resetLogics, filterSize(7)=>resetLogics, filterSize(6)=>resetLogics, 
      filterSize(5)=>resetLogics, filterSize(4)=>resetLogics, filterSize(3)
      =>resetLogics, filterSize(2)=>resetLogics, filterSize(1)=>resetLogics, 
      filterSize(0)=>resetLogics, isFilter=>PWR, loadNextWordList=>
      loadNextFilter, loadWord=>loadWord, readOne=>weightsReadOne, readFinal
      =>weightsReadFinal, aluNumber(2)=>filterAluNumber(2), aluNumber(1)=>
      filterAluNumber(1), aluNumber(0)=>filterAluNumber(0));
   writeLogicEnt : WriteLogic_16_16 port map ( clk=>clk, resetState=>
      resetLogics, switchRam=>switchRam, ramBasedAddress(15)=>
      currentWriteRamBaseAddress_15, ramBasedAddress(14)=>
      currentWriteRamBaseAddress_14, ramBasedAddress(13)=>
      currentWriteRamBaseAddress_13, ramBasedAddress(12)=>
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
      currentWriteRamBaseAddress_0, internalBus(15)=>windowInternalBus(15), 
      internalBus(14)=>windowInternalBus(14), internalBus(13)=>
      windowInternalBus(13), internalBus(12)=>windowInternalBus(12), 
      internalBus(11)=>windowInternalBus(11), internalBus(10)=>
      windowInternalBus(10), internalBus(9)=>windowInternalBus(9), 
      internalBus(8)=>windowInternalBus(8), internalBus(7)=>
      windowInternalBus(7), internalBus(6)=>windowInternalBus(6), 
      internalBus(5)=>windowInternalBus(5), internalBus(4)=>
      windowInternalBus(4), internalBus(3)=>windowInternalBus(3), 
      internalBus(2)=>windowInternalBus(2), internalBus(1)=>
      windowInternalBus(1), internalBus(0)=>windowInternalBus(0), ramWrite=>
      windowRamWrite, ramDataOutBus(15)=>windowRamDataOutBus(15), 
      ramDataOutBus(14)=>windowRamDataOutBus(14), ramDataOutBus(13)=>
      windowRamDataOutBus(13), ramDataOutBus(12)=>windowRamDataOutBus(12), 
      ramDataOutBus(11)=>windowRamDataOutBus(11), ramDataOutBus(10)=>
      windowRamDataOutBus(10), ramDataOutBus(9)=>windowRamDataOutBus(9), 
      ramDataOutBus(8)=>windowRamDataOutBus(8), ramDataOutBus(7)=>
      windowRamDataOutBus(7), ramDataOutBus(6)=>windowRamDataOutBus(6), 
      ramDataOutBus(5)=>windowRamDataOutBus(5), ramDataOutBus(4)=>
      windowRamDataOutBus(4), ramDataOutBus(3)=>windowRamDataOutBus(3), 
      ramDataOutBus(2)=>windowRamDataOutBus(2), ramDataOutBus(1)=>
      windowRamDataOutBus(1), ramDataOutBus(0)=>windowRamDataOutBus(0), 
      ramAddress(15)=>writeLogicRamAddress_15, ramAddress(14)=>
      writeLogicRamAddress_14, ramAddress(13)=>writeLogicRamAddress_13, 
      ramAddress(12)=>writeLogicRamAddress_12, ramAddress(11)=>
      writeLogicRamAddress_11, ramAddress(10)=>writeLogicRamAddress_10, 
      ramAddress(9)=>writeLogicRamAddress_9, ramAddress(8)=>
      writeLogicRamAddress_8, ramAddress(7)=>writeLogicRamAddress_7, 
      ramAddress(6)=>writeLogicRamAddress_6, ramAddress(5)=>
      writeLogicRamAddress_5, ramAddress(4)=>writeLogicRamAddress_4, 
      ramAddress(3)=>writeLogicRamAddress_3, ramAddress(2)=>
      writeLogicRamAddress_2, ramAddress(1)=>writeLogicRamAddress_1, 
      ramAddress(0)=>writeLogicRamAddress_0, MFC=>MFCWindowRam, 
      outputSize(15)=>outputSize(15), outputSize(14)=>outputSize(14), 
      outputSize(13)=>outputSize(13), outputSize(12)=>outputSize(12), 
      outputSize(11)=>outputSize(11), outputSize(10)=>outputSize(10), 
      outputSize(9)=>outputSize(9), outputSize(8)=>outputSize(8), 
      outputSize(7)=>outputSize(7), outputSize(6)=>outputSize(6), 
      outputSize(5)=>outputSize(5), outputSize(4)=>outputSize(4), 
      outputSize(3)=>outputSize(3), outputSize(2)=>outputSize(2), 
      outputSize(1)=>outputSize(1), outputSize(0)=>outputSize(0), write=>
      write, writeDone=>writeDoneAll, writeDoneOne=>writeDoneOne);
   ix316 : fake_vcc port map ( Y=>PWR);
   ix314 : fake_gnd port map ( Y=>resetLogics);
   ix391 : inv01 port map ( Y=>switchRam, A=>nx389);
   ix390 : nor02_2x port map ( Y=>nx389, A0=>reset, A1=>layerFinished);
   ix141 : nand02 port map ( Y=>currentWriteRamBaseAddress_0, A0=>nx393, A1
      =>nx398);
   ix394 : nand02 port map ( Y=>nx393, A0=>windowRamBaseAddress1(0), A1=>
      nx642);
   reg_ramBaseAddressSelector : dffr port map ( Q=>ramBaseAddressSelector, 
      QB=>NOT_ramBaseAddressSelector, D=>NOT_ramBaseAddressSelector, CLK=>
      layerFinished, R=>reset);
   ix399 : nand02 port map ( Y=>nx398, A0=>windowRamBaseAddress2(0), A1=>
      nx652);
   ix149 : nand02 port map ( Y=>currentWriteRamBaseAddress_1, A0=>nx401, A1
      =>nx403);
   ix402 : nand02 port map ( Y=>nx401, A0=>windowRamBaseAddress1(1), A1=>
      nx642);
   ix404 : nand02 port map ( Y=>nx403, A0=>windowRamBaseAddress2(1), A1=>
      nx652);
   ix157 : nand02 port map ( Y=>currentWriteRamBaseAddress_2, A0=>nx406, A1
      =>nx408);
   ix407 : nand02 port map ( Y=>nx406, A0=>windowRamBaseAddress1(2), A1=>
      nx642);
   ix409 : nand02 port map ( Y=>nx408, A0=>windowRamBaseAddress2(2), A1=>
      nx652);
   ix165 : nand02 port map ( Y=>currentWriteRamBaseAddress_3, A0=>nx411, A1
      =>nx413);
   ix412 : nand02 port map ( Y=>nx411, A0=>windowRamBaseAddress1(3), A1=>
      nx642);
   ix414 : nand02 port map ( Y=>nx413, A0=>windowRamBaseAddress2(3), A1=>
      nx652);
   ix173 : nand02 port map ( Y=>currentWriteRamBaseAddress_4, A0=>nx416, A1
      =>nx418);
   ix417 : nand02 port map ( Y=>nx416, A0=>windowRamBaseAddress1(4), A1=>
      nx642);
   ix419 : nand02 port map ( Y=>nx418, A0=>windowRamBaseAddress2(4), A1=>
      nx652);
   ix181 : nand02 port map ( Y=>currentWriteRamBaseAddress_5, A0=>nx421, A1
      =>nx423);
   ix422 : nand02 port map ( Y=>nx421, A0=>windowRamBaseAddress1(5), A1=>
      nx642);
   ix424 : nand02 port map ( Y=>nx423, A0=>windowRamBaseAddress2(5), A1=>
      nx652);
   ix189 : nand02 port map ( Y=>currentWriteRamBaseAddress_6, A0=>nx426, A1
      =>nx428);
   ix427 : nand02 port map ( Y=>nx426, A0=>windowRamBaseAddress1(6), A1=>
      nx642);
   ix429 : nand02 port map ( Y=>nx428, A0=>windowRamBaseAddress2(6), A1=>
      nx652);
   ix197 : nand02 port map ( Y=>currentWriteRamBaseAddress_7, A0=>nx431, A1
      =>nx433);
   ix432 : nand02 port map ( Y=>nx431, A0=>windowRamBaseAddress1(7), A1=>
      nx644);
   ix434 : nand02 port map ( Y=>nx433, A0=>windowRamBaseAddress2(7), A1=>
      nx654);
   ix205 : nand02 port map ( Y=>currentWriteRamBaseAddress_8, A0=>nx436, A1
      =>nx438);
   ix437 : nand02 port map ( Y=>nx436, A0=>windowRamBaseAddress1(8), A1=>
      nx644);
   ix439 : nand02 port map ( Y=>nx438, A0=>windowRamBaseAddress2(8), A1=>
      nx654);
   ix213 : nand02 port map ( Y=>currentWriteRamBaseAddress_9, A0=>nx441, A1
      =>nx443);
   ix442 : nand02 port map ( Y=>nx441, A0=>windowRamBaseAddress1(9), A1=>
      nx644);
   ix444 : nand02 port map ( Y=>nx443, A0=>windowRamBaseAddress2(9), A1=>
      nx654);
   ix221 : nand02 port map ( Y=>currentWriteRamBaseAddress_10, A0=>nx446, A1
      =>nx448);
   ix447 : nand02 port map ( Y=>nx446, A0=>windowRamBaseAddress1(10), A1=>
      nx644);
   ix449 : nand02 port map ( Y=>nx448, A0=>windowRamBaseAddress2(10), A1=>
      nx654);
   ix229 : nand02 port map ( Y=>currentWriteRamBaseAddress_11, A0=>nx451, A1
      =>nx453);
   ix452 : nand02 port map ( Y=>nx451, A0=>windowRamBaseAddress1(11), A1=>
      nx644);
   ix454 : nand02 port map ( Y=>nx453, A0=>windowRamBaseAddress2(11), A1=>
      nx654);
   ix237 : nand02 port map ( Y=>currentWriteRamBaseAddress_12, A0=>nx456, A1
      =>nx458);
   ix457 : nand02 port map ( Y=>nx456, A0=>windowRamBaseAddress1(12), A1=>
      nx644);
   ix459 : nand02 port map ( Y=>nx458, A0=>windowRamBaseAddress2(12), A1=>
      nx654);
   ix245 : nand02 port map ( Y=>currentWriteRamBaseAddress_13, A0=>nx461, A1
      =>nx463);
   ix462 : nand02 port map ( Y=>nx461, A0=>windowRamBaseAddress1(13), A1=>
      nx644);
   ix464 : nand02 port map ( Y=>nx463, A0=>windowRamBaseAddress2(13), A1=>
      nx654);
   ix253 : nand02 port map ( Y=>currentWriteRamBaseAddress_14, A0=>nx466, A1
      =>nx468);
   ix467 : nand02 port map ( Y=>nx466, A0=>windowRamBaseAddress1(14), A1=>
      nx646);
   ix469 : nand02 port map ( Y=>nx468, A0=>windowRamBaseAddress2(14), A1=>
      nx656);
   ix261 : nand02 port map ( Y=>currentWriteRamBaseAddress_15, A0=>nx471, A1
      =>nx473);
   ix472 : nand02 port map ( Y=>nx471, A0=>windowRamBaseAddress1(15), A1=>
      nx646);
   ix474 : nand02 port map ( Y=>nx473, A0=>windowRamBaseAddress2(15), A1=>
      nx656);
   ix269 : nand02 port map ( Y=>currentReadRamBaseAddress_0, A0=>nx476, A1=>
      nx478);
   ix477 : nand02 port map ( Y=>nx476, A0=>windowRamBaseAddress2(0), A1=>
      nx646);
   ix479 : nand02 port map ( Y=>nx478, A0=>windowRamBaseAddress1(0), A1=>
      nx656);
   ix277 : nand02 port map ( Y=>currentReadRamBaseAddress_1, A0=>nx481, A1=>
      nx483);
   ix482 : nand02 port map ( Y=>nx481, A0=>windowRamBaseAddress2(1), A1=>
      nx646);
   ix484 : nand02 port map ( Y=>nx483, A0=>windowRamBaseAddress1(1), A1=>
      nx656);
   ix285 : nand02 port map ( Y=>currentReadRamBaseAddress_2, A0=>nx486, A1=>
      nx488);
   ix487 : nand02 port map ( Y=>nx486, A0=>windowRamBaseAddress2(2), A1=>
      nx646);
   ix489 : nand02 port map ( Y=>nx488, A0=>windowRamBaseAddress1(2), A1=>
      nx656);
   ix293 : nand02 port map ( Y=>currentReadRamBaseAddress_3, A0=>nx491, A1=>
      nx493);
   ix492 : nand02 port map ( Y=>nx491, A0=>windowRamBaseAddress2(3), A1=>
      nx646);
   ix494 : nand02 port map ( Y=>nx493, A0=>windowRamBaseAddress1(3), A1=>
      nx656);
   ix301 : nand02 port map ( Y=>currentReadRamBaseAddress_4, A0=>nx496, A1=>
      nx498);
   ix497 : nand02 port map ( Y=>nx496, A0=>windowRamBaseAddress2(4), A1=>
      nx646);
   ix499 : nand02 port map ( Y=>nx498, A0=>windowRamBaseAddress1(4), A1=>
      nx656);
   ix309 : nand02 port map ( Y=>currentReadRamBaseAddress_5, A0=>nx501, A1=>
      nx503);
   ix502 : nand02 port map ( Y=>nx501, A0=>windowRamBaseAddress2(5), A1=>
      nx648);
   ix504 : nand02 port map ( Y=>nx503, A0=>windowRamBaseAddress1(5), A1=>
      nx658);
   ix317 : nand02 port map ( Y=>currentReadRamBaseAddress_6, A0=>nx506, A1=>
      nx508);
   ix507 : nand02 port map ( Y=>nx506, A0=>windowRamBaseAddress2(6), A1=>
      nx648);
   ix509 : nand02 port map ( Y=>nx508, A0=>windowRamBaseAddress1(6), A1=>
      nx658);
   ix325 : nand02 port map ( Y=>currentReadRamBaseAddress_7, A0=>nx511, A1=>
      nx513);
   ix512 : nand02 port map ( Y=>nx511, A0=>windowRamBaseAddress2(7), A1=>
      nx648);
   ix514 : nand02 port map ( Y=>nx513, A0=>windowRamBaseAddress1(7), A1=>
      nx658);
   ix333 : nand02 port map ( Y=>currentReadRamBaseAddress_8, A0=>nx516, A1=>
      nx518);
   ix517 : nand02 port map ( Y=>nx516, A0=>windowRamBaseAddress2(8), A1=>
      nx648);
   ix519 : nand02 port map ( Y=>nx518, A0=>windowRamBaseAddress1(8), A1=>
      nx658);
   ix341 : nand02 port map ( Y=>currentReadRamBaseAddress_9, A0=>nx521, A1=>
      nx523);
   ix522 : nand02 port map ( Y=>nx521, A0=>windowRamBaseAddress2(9), A1=>
      nx648);
   ix524 : nand02 port map ( Y=>nx523, A0=>windowRamBaseAddress1(9), A1=>
      nx658);
   ix349 : nand02 port map ( Y=>currentReadRamBaseAddress_10, A0=>nx526, A1
      =>nx528);
   ix527 : nand02 port map ( Y=>nx526, A0=>windowRamBaseAddress2(10), A1=>
      nx648);
   ix529 : nand02 port map ( Y=>nx528, A0=>windowRamBaseAddress1(10), A1=>
      nx658);
   ix357 : nand02 port map ( Y=>currentReadRamBaseAddress_11, A0=>nx531, A1
      =>nx533);
   ix532 : nand02 port map ( Y=>nx531, A0=>windowRamBaseAddress2(11), A1=>
      nx648);
   ix534 : nand02 port map ( Y=>nx533, A0=>windowRamBaseAddress1(11), A1=>
      nx658);
   ix365 : nand02 port map ( Y=>currentReadRamBaseAddress_12, A0=>nx536, A1
      =>nx538);
   ix537 : nand02 port map ( Y=>nx536, A0=>windowRamBaseAddress2(12), A1=>
      nx650);
   ix539 : nand02 port map ( Y=>nx538, A0=>windowRamBaseAddress1(12), A1=>
      nx660);
   ix373 : nand02 port map ( Y=>currentReadRamBaseAddress_13, A0=>nx541, A1
      =>nx543);
   ix542 : nand02 port map ( Y=>nx541, A0=>windowRamBaseAddress2(13), A1=>
      nx650);
   ix544 : nand02 port map ( Y=>nx543, A0=>windowRamBaseAddress1(13), A1=>
      nx660);
   ix381 : nand02 port map ( Y=>currentReadRamBaseAddress_14, A0=>nx546, A1
      =>nx548);
   ix547 : nand02 port map ( Y=>nx546, A0=>windowRamBaseAddress2(14), A1=>
      nx650);
   ix549 : nand02 port map ( Y=>nx548, A0=>windowRamBaseAddress1(14), A1=>
      nx660);
   ix389 : nand02 port map ( Y=>currentReadRamBaseAddress_15, A0=>nx551, A1
      =>nx553);
   ix552 : nand02 port map ( Y=>nx551, A0=>windowRamBaseAddress2(15), A1=>
      nx650);
   ix554 : nand02 port map ( Y=>nx553, A0=>windowRamBaseAddress1(15), A1=>
      nx660);
   ix7 : nand02 port map ( Y=>windowRamAddress(0), A0=>nx556, A1=>nx558);
   ix557 : nand02 port map ( Y=>nx556, A0=>writeLogicRamAddress_0, A1=>write
   );
   ix559 : nand02 port map ( Y=>nx558, A0=>readLogicRamAddress_0, A1=>nx664
   );
   ix15 : nand02 port map ( Y=>windowRamAddress(1), A0=>nx563, A1=>nx565);
   ix564 : nand02 port map ( Y=>nx563, A0=>writeLogicRamAddress_1, A1=>write
   );
   ix566 : nand02 port map ( Y=>nx565, A0=>readLogicRamAddress_1, A1=>nx664
   );
   ix23 : nand02 port map ( Y=>windowRamAddress(2), A0=>nx568, A1=>nx570);
   ix569 : nand02 port map ( Y=>nx568, A0=>writeLogicRamAddress_2, A1=>write
   );
   ix571 : nand02 port map ( Y=>nx570, A0=>readLogicRamAddress_2, A1=>nx664
   );
   ix31 : nand02 port map ( Y=>windowRamAddress(3), A0=>nx573, A1=>nx575);
   ix574 : nand02 port map ( Y=>nx573, A0=>writeLogicRamAddress_3, A1=>write
   );
   ix576 : nand02 port map ( Y=>nx575, A0=>readLogicRamAddress_3, A1=>nx664
   );
   ix39 : nand02 port map ( Y=>windowRamAddress(4), A0=>nx578, A1=>nx580);
   ix579 : nand02 port map ( Y=>nx578, A0=>writeLogicRamAddress_4, A1=>write
   );
   ix581 : nand02 port map ( Y=>nx580, A0=>readLogicRamAddress_4, A1=>nx664
   );
   ix47 : nand02 port map ( Y=>windowRamAddress(5), A0=>nx583, A1=>nx585);
   ix584 : nand02 port map ( Y=>nx583, A0=>writeLogicRamAddress_5, A1=>write
   );
   ix586 : nand02 port map ( Y=>nx585, A0=>readLogicRamAddress_5, A1=>nx664
   );
   ix55 : nand02 port map ( Y=>windowRamAddress(6), A0=>nx588, A1=>nx590);
   ix589 : nand02 port map ( Y=>nx588, A0=>writeLogicRamAddress_6, A1=>write
   );
   ix591 : nand02 port map ( Y=>nx590, A0=>readLogicRamAddress_6, A1=>nx664
   );
   ix63 : nand02 port map ( Y=>windowRamAddress(7), A0=>nx593, A1=>nx595);
   ix594 : nand02 port map ( Y=>nx593, A0=>writeLogicRamAddress_7, A1=>write
   );
   ix596 : nand02 port map ( Y=>nx595, A0=>readLogicRamAddress_7, A1=>nx666
   );
   ix71 : nand02 port map ( Y=>windowRamAddress(8), A0=>nx598, A1=>nx600);
   ix599 : nand02 port map ( Y=>nx598, A0=>writeLogicRamAddress_8, A1=>write
   );
   ix601 : nand02 port map ( Y=>nx600, A0=>readLogicRamAddress_8, A1=>nx666
   );
   ix79 : nand02 port map ( Y=>windowRamAddress(9), A0=>nx603, A1=>nx605);
   ix604 : nand02 port map ( Y=>nx603, A0=>writeLogicRamAddress_9, A1=>write
   );
   ix606 : nand02 port map ( Y=>nx605, A0=>readLogicRamAddress_9, A1=>nx666
   );
   ix87 : nand02 port map ( Y=>windowRamAddress(10), A0=>nx608, A1=>nx610);
   ix609 : nand02 port map ( Y=>nx608, A0=>writeLogicRamAddress_10, A1=>
      write);
   ix611 : nand02 port map ( Y=>nx610, A0=>readLogicRamAddress_10, A1=>nx666
   );
   ix95 : nand02 port map ( Y=>windowRamAddress(11), A0=>nx613, A1=>nx615);
   ix614 : nand02 port map ( Y=>nx613, A0=>writeLogicRamAddress_11, A1=>
      write);
   ix616 : nand02 port map ( Y=>nx615, A0=>readLogicRamAddress_11, A1=>nx666
   );
   ix103 : nand02 port map ( Y=>windowRamAddress(12), A0=>nx618, A1=>nx620);
   ix619 : nand02 port map ( Y=>nx618, A0=>writeLogicRamAddress_12, A1=>
      write);
   ix621 : nand02 port map ( Y=>nx620, A0=>readLogicRamAddress_12, A1=>nx666
   );
   ix111 : nand02 port map ( Y=>windowRamAddress(13), A0=>nx623, A1=>nx625);
   ix624 : nand02 port map ( Y=>nx623, A0=>writeLogicRamAddress_13, A1=>
      write);
   ix626 : nand02 port map ( Y=>nx625, A0=>readLogicRamAddress_13, A1=>nx666
   );
   ix119 : nand02 port map ( Y=>windowRamAddress(14), A0=>nx628, A1=>nx630);
   ix629 : nand02 port map ( Y=>nx628, A0=>writeLogicRamAddress_14, A1=>
      write);
   ix631 : nand02 port map ( Y=>nx630, A0=>readLogicRamAddress_14, A1=>nx668
   );
   ix127 : nand02 port map ( Y=>windowRamAddress(15), A0=>nx633, A1=>nx635);
   ix634 : nand02 port map ( Y=>nx633, A0=>write, A1=>
      writeLogicRamAddress_15);
   ix636 : nand02 port map ( Y=>nx635, A0=>nx668, A1=>readLogicRamAddress_15
   );
   ix641 : inv02 port map ( Y=>nx642, A=>nx660);
   ix643 : inv02 port map ( Y=>nx644, A=>nx660);
   ix645 : inv02 port map ( Y=>nx646, A=>nx660);
   ix647 : inv02 port map ( Y=>nx648, A=>nx662);
   ix649 : inv02 port map ( Y=>nx650, A=>nx662);
   ix651 : inv02 port map ( Y=>nx652, A=>ramBaseAddressSelector);
   ix653 : inv02 port map ( Y=>nx654, A=>ramBaseAddressSelector);
   ix655 : inv02 port map ( Y=>nx656, A=>ramBaseAddressSelector);
   ix657 : inv02 port map ( Y=>nx658, A=>ramBaseAddressSelector);
   ix659 : inv02 port map ( Y=>nx660, A=>ramBaseAddressSelector);
   ix661 : inv02 port map ( Y=>nx662, A=>ramBaseAddressSelector);
   ix663 : inv02 port map ( Y=>nx664, A=>write);
   ix665 : inv02 port map ( Y=>nx666, A=>write);
   ix667 : inv02 port map ( Y=>nx668, A=>write);
end DMAControllerArch ;

