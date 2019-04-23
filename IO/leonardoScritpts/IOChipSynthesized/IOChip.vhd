
-- 
-- Definition of  IOChip
-- 
--      Mon Apr 22 17:23:12 2019
--      
--      LeonardoSpectrum Level 3, 2018a.2
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity RegWithLoad_13 is
   port (
      D : IN std_logic_vector (12 DOWNTO 0) ;
      en : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      load : IN std_logic ;
      Q : OUT std_logic_vector (12 DOWNTO 0)) ;
end RegWithLoad_13 ;

architecture RegWithLoadArch_unfold_3194 of RegWithLoad_13 is
   signal Q_12_EXMPLR, Q_11_EXMPLR, Q_10_EXMPLR, Q_9_EXMPLR, Q_8_EXMPLR, 
      Q_7_EXMPLR, Q_6_EXMPLR, Q_5_EXMPLR, Q_4_EXMPLR, Q_3_EXMPLR, Q_2_EXMPLR, 
      Q_1_EXMPLR, Q_0_EXMPLR, nx120, nx130, nx140, nx150, nx160, nx170, 
      nx180, nx190, nx200, nx210, nx220, nx230, nx240, nx294, nx296: 
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
   reg_Q_0 : dffr port map ( Q=>Q_0_EXMPLR, QB=>OPEN, D=>nx120, CLK=>clk, R
      =>rst);
   ix121 : mux21_ni port map ( Y=>nx120, A0=>Q_0_EXMPLR, A1=>D(0), S0=>nx294
   );
   reg_Q_1 : dffr port map ( Q=>Q_1_EXMPLR, QB=>OPEN, D=>nx130, CLK=>clk, R
      =>rst);
   ix131 : mux21_ni port map ( Y=>nx130, A0=>Q_1_EXMPLR, A1=>D(1), S0=>nx294
   );
   reg_Q_2 : dffr port map ( Q=>Q_2_EXMPLR, QB=>OPEN, D=>nx140, CLK=>clk, R
      =>rst);
   ix141 : mux21_ni port map ( Y=>nx140, A0=>Q_2_EXMPLR, A1=>D(2), S0=>nx294
   );
   reg_Q_3 : dffr port map ( Q=>Q_3_EXMPLR, QB=>OPEN, D=>nx150, CLK=>clk, R
      =>rst);
   ix151 : mux21_ni port map ( Y=>nx150, A0=>Q_3_EXMPLR, A1=>D(3), S0=>nx294
   );
   reg_Q_4 : dffr port map ( Q=>Q_4_EXMPLR, QB=>OPEN, D=>nx160, CLK=>clk, R
      =>rst);
   ix161 : mux21_ni port map ( Y=>nx160, A0=>Q_4_EXMPLR, A1=>D(4), S0=>nx294
   );
   reg_Q_5 : dffr port map ( Q=>Q_5_EXMPLR, QB=>OPEN, D=>nx170, CLK=>clk, R
      =>rst);
   ix171 : mux21_ni port map ( Y=>nx170, A0=>Q_5_EXMPLR, A1=>D(5), S0=>nx294
   );
   reg_Q_6 : dffr port map ( Q=>Q_6_EXMPLR, QB=>OPEN, D=>nx180, CLK=>clk, R
      =>rst);
   ix181 : mux21_ni port map ( Y=>nx180, A0=>Q_6_EXMPLR, A1=>D(6), S0=>nx294
   );
   reg_Q_7 : dffr port map ( Q=>Q_7_EXMPLR, QB=>OPEN, D=>nx190, CLK=>clk, R
      =>rst);
   ix191 : mux21_ni port map ( Y=>nx190, A0=>Q_7_EXMPLR, A1=>D(7), S0=>nx296
   );
   reg_Q_8 : dffr port map ( Q=>Q_8_EXMPLR, QB=>OPEN, D=>nx200, CLK=>clk, R
      =>rst);
   ix201 : mux21_ni port map ( Y=>nx200, A0=>Q_8_EXMPLR, A1=>D(8), S0=>nx296
   );
   reg_Q_9 : dffr port map ( Q=>Q_9_EXMPLR, QB=>OPEN, D=>nx210, CLK=>clk, R
      =>rst);
   ix211 : mux21_ni port map ( Y=>nx210, A0=>Q_9_EXMPLR, A1=>D(9), S0=>nx296
   );
   reg_Q_10 : dffr port map ( Q=>Q_10_EXMPLR, QB=>OPEN, D=>nx220, CLK=>clk, 
      R=>rst);
   ix221 : mux21_ni port map ( Y=>nx220, A0=>Q_10_EXMPLR, A1=>D(10), S0=>
      nx296);
   reg_Q_11 : dffr port map ( Q=>Q_11_EXMPLR, QB=>OPEN, D=>nx230, CLK=>clk, 
      R=>rst);
   ix231 : mux21_ni port map ( Y=>nx230, A0=>Q_11_EXMPLR, A1=>D(11), S0=>
      nx296);
   reg_Q_12 : dffr port map ( Q=>Q_12_EXMPLR, QB=>OPEN, D=>nx240, CLK=>clk, 
      R=>rst);
   ix241 : mux21_ni port map ( Y=>nx240, A0=>Q_12_EXMPLR, A1=>D(12), S0=>
      nx296);
   ix293 : buf02 port map ( Y=>nx294, A=>en);
   ix295 : buf02 port map ( Y=>nx296, A=>en);
end RegWithLoadArch_unfold_3194 ;

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
      addressOut : OUT std_logic_vector (12 DOWNTO 0)) ;
end DMACNN ;

architecture DMACNN of DMACNN is
   component RegWithLoad_13
      port (
         D : IN std_logic_vector (12 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         load : IN std_logic ;
         Q : OUT std_logic_vector (12 DOWNTO 0)) ;
   end component ;
   signal dataOut_15_EXMPLR, dataOut_14_EXMPLR, dataOut_13_EXMPLR, 
      dataOut_12_EXMPLR, dataOut_11_EXMPLR, dataOut_10_EXMPLR, 
      dataOut_9_EXMPLR, dataOut_8_EXMPLR, dataOut_7_EXMPLR, dataOut_6_EXMPLR, 
      dataOut_5_EXMPLR, dataOut_4_EXMPLR, dataOut_3_EXMPLR, dataOut_2_EXMPLR, 
      dataOut_1_EXMPLR, dataOut_0_EXMPLR, addressOut_12_EXMPLR, 
      addressOut_11_EXMPLR, addressOut_10_EXMPLR, addressOut_9_EXMPLR, 
      addressOut_8_EXMPLR, addressOut_7_EXMPLR, addressOut_6_EXMPLR, 
      addressOut_5_EXMPLR, addressOut_4_EXMPLR, addressOut_3_EXMPLR, 
      addressOut_2_EXMPLR, addressOut_1_EXMPLR, addressOut_0_EXMPLR, 
      addressCounter_adderOutput_12, addressCounter_adderOutput_11, 
      addressCounter_adderOutput_10, addressCounter_adderOutput_9, 
      addressCounter_adderOutput_8, addressCounter_adderOutput_7, 
      addressCounter_adderOutput_6, addressCounter_adderOutput_5, 
      addressCounter_adderOutput_4, addressCounter_adderOutput_3, 
      addressCounter_adderOutput_2, addressCounter_adderOutput_1, 
      addressCounter_adderOutput_0, addressCounterIn_12, nx70, nx74, nx78, 
      nx82, nx139, nx149, nx159, nx169, nx179, nx189, nx199, nx209, nx219, 
      nx229, nx239, nx249, nx259, nx269, nx279, nx289, nx303, nx306, nx309, 
      nx314, nx319, nx324, nx329, nx384, nx386, nx388, nx390: std_logic ;

begin
   dataOut(15) <= dataOut_15_EXMPLR ;
   dataOut(14) <= dataOut_14_EXMPLR ;
   dataOut(13) <= dataOut_13_EXMPLR ;
   dataOut(12) <= dataOut_12_EXMPLR ;
   dataOut(11) <= dataOut_11_EXMPLR ;
   dataOut(10) <= dataOut_10_EXMPLR ;
   dataOut(9) <= dataOut_9_EXMPLR ;
   dataOut(8) <= dataOut_8_EXMPLR ;
   dataOut(7) <= dataOut_7_EXMPLR ;
   dataOut(6) <= dataOut_6_EXMPLR ;
   dataOut(5) <= dataOut_5_EXMPLR ;
   dataOut(4) <= dataOut_4_EXMPLR ;
   dataOut(3) <= dataOut_3_EXMPLR ;
   dataOut(2) <= dataOut_2_EXMPLR ;
   dataOut(1) <= dataOut_1_EXMPLR ;
   dataOut(0) <= dataOut_0_EXMPLR ;
   addressOut(12) <= addressOut_12_EXMPLR ;
   addressOut(11) <= addressOut_11_EXMPLR ;
   addressOut(10) <= addressOut_10_EXMPLR ;
   addressOut(9) <= addressOut_9_EXMPLR ;
   addressOut(8) <= addressOut_8_EXMPLR ;
   addressOut(7) <= addressOut_7_EXMPLR ;
   addressOut(6) <= addressOut_6_EXMPLR ;
   addressOut(5) <= addressOut_5_EXMPLR ;
   addressOut(4) <= addressOut_4_EXMPLR ;
   addressOut(3) <= addressOut_3_EXMPLR ;
   addressOut(2) <= addressOut_2_EXMPLR ;
   addressOut(1) <= addressOut_1_EXMPLR ;
   addressOut(0) <= addressOut_0_EXMPLR ;
   addressCounter_counterReg : RegWithLoad_13 port map ( D(12)=>
      addressCounter_adderOutput_12, D(11)=>addressCounter_adderOutput_11, 
      D(10)=>addressCounter_adderOutput_10, D(9)=>
      addressCounter_adderOutput_9, D(8)=>addressCounter_adderOutput_8, D(7)
      =>addressCounter_adderOutput_7, D(6)=>addressCounter_adderOutput_6, 
      D(5)=>addressCounter_adderOutput_5, D(4)=>addressCounter_adderOutput_4, 
      D(3)=>addressCounter_adderOutput_3, D(2)=>addressCounter_adderOutput_2, 
      D(1)=>addressCounter_adderOutput_1, D(0)=>addressCounter_adderOutput_0, 
      en=>enableCNNCounter, clk=>clk, rst=>rst, load=>addressCounterIn_12, 
      Q(12)=>addressOut_12_EXMPLR, Q(11)=>addressOut_11_EXMPLR, Q(10)=>
      addressOut_10_EXMPLR, Q(9)=>addressOut_9_EXMPLR, Q(8)=>
      addressOut_8_EXMPLR, Q(7)=>addressOut_7_EXMPLR, Q(6)=>
      addressOut_6_EXMPLR, Q(5)=>addressOut_5_EXMPLR, Q(4)=>
      addressOut_4_EXMPLR, Q(3)=>addressOut_3_EXMPLR, Q(2)=>
      addressOut_2_EXMPLR, Q(1)=>addressOut_1_EXMPLR, Q(0)=>
      addressOut_0_EXMPLR);
   ix81 : fake_gnd port map ( Y=>addressCounterIn_12);
   ix300 : inv01 port map ( Y=>addressCounter_adderOutput_0, A=>
      addressOut_0_EXMPLR);
   ix153 : xor2 port map ( Y=>addressCounter_adderOutput_1, A0=>
      addressOut_1_EXMPLR, A1=>addressOut_0_EXMPLR);
   ix147 : xnor2 port map ( Y=>addressCounter_adderOutput_2, A0=>
      addressOut_2_EXMPLR, A1=>nx303);
   ix304 : nand02 port map ( Y=>nx303, A0=>addressOut_1_EXMPLR, A1=>
      addressOut_0_EXMPLR);
   ix141 : xnor2 port map ( Y=>addressCounter_adderOutput_3, A0=>
      addressOut_3_EXMPLR, A1=>nx306);
   ix307 : nand03 port map ( Y=>nx306, A0=>addressOut_2_EXMPLR, A1=>
      addressOut_1_EXMPLR, A2=>addressOut_0_EXMPLR);
   ix135 : xnor2 port map ( Y=>addressCounter_adderOutput_4, A0=>
      addressOut_4_EXMPLR, A1=>nx309);
   ix310 : nand04 port map ( Y=>nx309, A0=>addressOut_3_EXMPLR, A1=>
      addressOut_2_EXMPLR, A2=>addressOut_1_EXMPLR, A3=>addressOut_0_EXMPLR
   );
   ix129 : xor2 port map ( Y=>addressCounter_adderOutput_5, A0=>
      addressOut_5_EXMPLR, A1=>nx70);
   ix71 : nor02ii port map ( Y=>nx70, A0=>nx309, A1=>addressOut_4_EXMPLR);
   ix123 : xnor2 port map ( Y=>addressCounter_adderOutput_6, A0=>
      addressOut_6_EXMPLR, A1=>nx314);
   ix315 : nand02 port map ( Y=>nx314, A0=>addressOut_5_EXMPLR, A1=>nx70);
   ix117 : xor2 port map ( Y=>addressCounter_adderOutput_7, A0=>
      addressOut_7_EXMPLR, A1=>nx74);
   ix75 : nor02ii port map ( Y=>nx74, A0=>nx314, A1=>addressOut_6_EXMPLR);
   ix111 : xnor2 port map ( Y=>addressCounter_adderOutput_8, A0=>
      addressOut_8_EXMPLR, A1=>nx319);
   ix320 : nand02 port map ( Y=>nx319, A0=>addressOut_7_EXMPLR, A1=>nx74);
   ix105 : xor2 port map ( Y=>addressCounter_adderOutput_9, A0=>
      addressOut_9_EXMPLR, A1=>nx78);
   ix82 : nor02ii port map ( Y=>nx78, A0=>nx319, A1=>addressOut_8_EXMPLR);
   ix99 : xnor2 port map ( Y=>addressCounter_adderOutput_10, A0=>
      addressOut_10_EXMPLR, A1=>nx324);
   ix325 : nand02 port map ( Y=>nx324, A0=>addressOut_9_EXMPLR, A1=>nx78);
   ix93 : xor2 port map ( Y=>addressCounter_adderOutput_11, A0=>
      addressOut_11_EXMPLR, A1=>nx82);
   ix84 : nor02ii port map ( Y=>nx82, A0=>nx324, A1=>addressOut_10_EXMPLR);
   ix87 : xnor2 port map ( Y=>addressCounter_adderOutput_12, A0=>
      addressOut_12_EXMPLR, A1=>nx329);
   ix330 : nand02 port map ( Y=>nx329, A0=>addressOut_11_EXMPLR, A1=>nx82);
   MyReg_reg_Q_0 : dffr port map ( Q=>dataOut_0_EXMPLR, QB=>OPEN, D=>nx139, 
      CLK=>clk, R=>rst);
   ix140 : mux21_ni port map ( Y=>nx139, A0=>dataOut_0_EXMPLR, A1=>dataIn(0), 
      S0=>nx386);
   MyReg_reg_Q_1 : dffr port map ( Q=>dataOut_1_EXMPLR, QB=>OPEN, D=>nx149, 
      CLK=>clk, R=>rst);
   ix150 : mux21_ni port map ( Y=>nx149, A0=>dataOut_1_EXMPLR, A1=>dataIn(1), 
      S0=>nx386);
   MyReg_reg_Q_2 : dffr port map ( Q=>dataOut_2_EXMPLR, QB=>OPEN, D=>nx159, 
      CLK=>clk, R=>rst);
   ix160 : mux21_ni port map ( Y=>nx159, A0=>dataOut_2_EXMPLR, A1=>dataIn(2), 
      S0=>nx386);
   MyReg_reg_Q_3 : dffr port map ( Q=>dataOut_3_EXMPLR, QB=>OPEN, D=>nx169, 
      CLK=>clk, R=>rst);
   ix170 : mux21_ni port map ( Y=>nx169, A0=>dataOut_3_EXMPLR, A1=>dataIn(3), 
      S0=>nx386);
   MyReg_reg_Q_4 : dffr port map ( Q=>dataOut_4_EXMPLR, QB=>OPEN, D=>nx179, 
      CLK=>clk, R=>rst);
   ix180 : mux21_ni port map ( Y=>nx179, A0=>dataOut_4_EXMPLR, A1=>dataIn(4), 
      S0=>nx386);
   MyReg_reg_Q_5 : dffr port map ( Q=>dataOut_5_EXMPLR, QB=>OPEN, D=>nx189, 
      CLK=>clk, R=>rst);
   ix190 : mux21_ni port map ( Y=>nx189, A0=>dataOut_5_EXMPLR, A1=>dataIn(5), 
      S0=>nx386);
   MyReg_reg_Q_6 : dffr port map ( Q=>dataOut_6_EXMPLR, QB=>OPEN, D=>nx199, 
      CLK=>clk, R=>rst);
   ix200 : mux21_ni port map ( Y=>nx199, A0=>dataOut_6_EXMPLR, A1=>dataIn(6), 
      S0=>nx386);
   MyReg_reg_Q_7 : dffr port map ( Q=>dataOut_7_EXMPLR, QB=>OPEN, D=>nx209, 
      CLK=>clk, R=>rst);
   ix210 : mux21_ni port map ( Y=>nx209, A0=>dataOut_7_EXMPLR, A1=>dataIn(7), 
      S0=>nx388);
   MyReg_reg_Q_8 : dffr port map ( Q=>dataOut_8_EXMPLR, QB=>OPEN, D=>nx219, 
      CLK=>clk, R=>rst);
   ix220 : mux21_ni port map ( Y=>nx219, A0=>dataOut_8_EXMPLR, A1=>dataIn(8), 
      S0=>nx388);
   MyReg_reg_Q_9 : dffr port map ( Q=>dataOut_9_EXMPLR, QB=>OPEN, D=>nx229, 
      CLK=>clk, R=>rst);
   ix230 : mux21_ni port map ( Y=>nx229, A0=>dataOut_9_EXMPLR, A1=>dataIn(9), 
      S0=>nx388);
   MyReg_reg_Q_10 : dffr port map ( Q=>dataOut_10_EXMPLR, QB=>OPEN, D=>nx239, 
      CLK=>clk, R=>rst);
   ix240 : mux21_ni port map ( Y=>nx239, A0=>dataOut_10_EXMPLR, A1=>
      dataIn(10), S0=>nx388);
   MyReg_reg_Q_11 : dffr port map ( Q=>dataOut_11_EXMPLR, QB=>OPEN, D=>nx249, 
      CLK=>clk, R=>rst);
   ix250 : mux21_ni port map ( Y=>nx249, A0=>dataOut_11_EXMPLR, A1=>
      dataIn(11), S0=>nx388);
   MyReg_reg_Q_12 : dffr port map ( Q=>dataOut_12_EXMPLR, QB=>OPEN, D=>nx259, 
      CLK=>clk, R=>rst);
   ix260 : mux21_ni port map ( Y=>nx259, A0=>dataOut_12_EXMPLR, A1=>
      dataIn(12), S0=>nx388);
   MyReg_reg_Q_13 : dffr port map ( Q=>dataOut_13_EXMPLR, QB=>OPEN, D=>nx269, 
      CLK=>clk, R=>rst);
   ix270 : mux21_ni port map ( Y=>nx269, A0=>dataOut_13_EXMPLR, A1=>
      dataIn(13), S0=>nx388);
   MyReg_reg_Q_14 : dffr port map ( Q=>dataOut_14_EXMPLR, QB=>OPEN, D=>nx279, 
      CLK=>clk, R=>rst);
   ix280 : mux21_ni port map ( Y=>nx279, A0=>dataOut_14_EXMPLR, A1=>
      dataIn(14), S0=>nx390);
   MyReg_reg_Q_15 : dffr port map ( Q=>dataOut_15_EXMPLR, QB=>OPEN, D=>nx289, 
      CLK=>clk, R=>rst);
   ix290 : mux21_ni port map ( Y=>nx289, A0=>dataOut_15_EXMPLR, A1=>
      dataIn(15), S0=>nx390);
   ix383 : inv01 port map ( Y=>nx384, A=>enableCNNRegister);
   ix385 : inv02 port map ( Y=>nx386, A=>nx384);
   ix387 : inv02 port map ( Y=>nx388, A=>nx384);
   ix389 : inv02 port map ( Y=>nx390, A=>nx384);
end DMACNN ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity RegWithLoad_16 is
   port (
      D : IN std_logic_vector (15 DOWNTO 0) ;
      en : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      load : IN std_logic ;
      Q : OUT std_logic_vector (15 DOWNTO 0)) ;
end RegWithLoad_16 ;

architecture RegWithLoadArch of RegWithLoad_16 is
   signal Q_15_EXMPLR, Q_14_EXMPLR, Q_13_EXMPLR, Q_12_EXMPLR, Q_11_EXMPLR, 
      Q_10_EXMPLR, Q_9_EXMPLR, Q_8_EXMPLR, Q_7_EXMPLR, Q_6_EXMPLR, 
      Q_5_EXMPLR, Q_4_EXMPLR, Q_3_EXMPLR, Q_2_EXMPLR, Q_1_EXMPLR, Q_0_EXMPLR, 
      nx2, nx10, nx14, nx22, nx26, nx34, nx38, nx46, nx50, nx58, nx62, nx70, 
      nx74, nx82, nx86, nx94, nx98, nx106, nx110, nx118, nx122, nx130, nx134, 
      nx142, nx146, nx154, nx158, nx166, nx170, nx178, nx182, nx190, nx194, 
      nx395, nx405, nx415, nx425, nx435, nx445, nx455, nx465, nx475, nx485, 
      nx495, nx505, nx515, nx525, nx535, nx545, nx565, nx652, nx654, nx656, 
      nx658, nx660, nx662, nx664, nx672, nx674, nx676, nx678, nx680, nx682, 
      nx684, nx686, nx688, nx690, nx692, nx694, nx696, nx698, nx700, nx702, 
      nx704, nx706, nx708, nx710, nx712, nx714, nx716, nx718: std_logic ;

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
   reg_Q_0 : dffsr_ni port map ( Q=>Q_0_EXMPLR, QB=>OPEN, D=>nx395, CLK=>clk, 
      S=>nx14, R=>nx10);
   ix396 : mux21_ni port map ( Y=>nx395, A0=>Q_0_EXMPLR, A1=>D(0), S0=>nx706
   );
   ix11 : oai21 port map ( Y=>nx10, A0=>D(0), A1=>nx662, B0=>nx652);
   ix566 : aoi21 port map ( Y=>nx565, A0=>nx706, A1=>load, B0=>rst);
   reg_Q_1 : dffsr_ni port map ( Q=>Q_1_EXMPLR, QB=>OPEN, D=>nx405, CLK=>clk, 
      S=>nx26, R=>nx22);
   ix406 : mux21_ni port map ( Y=>nx405, A0=>Q_1_EXMPLR, A1=>D(1), S0=>nx706
   );
   ix23 : oai21 port map ( Y=>nx22, A0=>D(1), A1=>nx662, B0=>nx652);
   reg_Q_2 : dffsr_ni port map ( Q=>Q_2_EXMPLR, QB=>OPEN, D=>nx415, CLK=>clk, 
      S=>nx38, R=>nx34);
   ix416 : mux21_ni port map ( Y=>nx415, A0=>Q_2_EXMPLR, A1=>D(2), S0=>nx706
   );
   ix35 : oai21 port map ( Y=>nx34, A0=>D(2), A1=>nx662, B0=>nx652);
   reg_Q_3 : dffsr_ni port map ( Q=>Q_3_EXMPLR, QB=>OPEN, D=>nx425, CLK=>clk, 
      S=>nx50, R=>nx46);
   ix426 : mux21_ni port map ( Y=>nx425, A0=>Q_3_EXMPLR, A1=>D(3), S0=>nx706
   );
   ix47 : oai21 port map ( Y=>nx46, A0=>D(3), A1=>nx662, B0=>nx654);
   reg_Q_4 : dffsr_ni port map ( Q=>Q_4_EXMPLR, QB=>OPEN, D=>nx435, CLK=>clk, 
      S=>nx62, R=>nx58);
   ix436 : mux21_ni port map ( Y=>nx435, A0=>Q_4_EXMPLR, A1=>D(4), S0=>nx706
   );
   ix59 : oai21 port map ( Y=>nx58, A0=>D(4), A1=>nx662, B0=>nx654);
   reg_Q_5 : dffsr_ni port map ( Q=>Q_5_EXMPLR, QB=>OPEN, D=>nx445, CLK=>clk, 
      S=>nx74, R=>nx70);
   ix446 : mux21_ni port map ( Y=>nx445, A0=>Q_5_EXMPLR, A1=>D(5), S0=>nx706
   );
   ix71 : oai21 port map ( Y=>nx70, A0=>D(5), A1=>nx662, B0=>nx654);
   reg_Q_6 : dffsr_ni port map ( Q=>Q_6_EXMPLR, QB=>OPEN, D=>nx455, CLK=>clk, 
      S=>nx86, R=>nx82);
   ix456 : mux21_ni port map ( Y=>nx455, A0=>Q_6_EXMPLR, A1=>D(6), S0=>nx708
   );
   ix83 : oai21 port map ( Y=>nx82, A0=>D(6), A1=>nx662, B0=>nx654);
   reg_Q_7 : dffsr_ni port map ( Q=>Q_7_EXMPLR, QB=>OPEN, D=>nx465, CLK=>clk, 
      S=>nx98, R=>nx94);
   ix466 : mux21_ni port map ( Y=>nx465, A0=>Q_7_EXMPLR, A1=>D(7), S0=>nx708
   );
   ix95 : oai21 port map ( Y=>nx94, A0=>D(7), A1=>nx664, B0=>nx656);
   reg_Q_8 : dffsr_ni port map ( Q=>Q_8_EXMPLR, QB=>OPEN, D=>nx475, CLK=>clk, 
      S=>nx110, R=>nx106);
   ix476 : mux21_ni port map ( Y=>nx475, A0=>Q_8_EXMPLR, A1=>D(8), S0=>nx708
   );
   ix107 : oai21 port map ( Y=>nx106, A0=>D(8), A1=>nx664, B0=>nx656);
   reg_Q_9 : dffsr_ni port map ( Q=>Q_9_EXMPLR, QB=>OPEN, D=>nx485, CLK=>clk, 
      S=>nx122, R=>nx118);
   ix486 : mux21_ni port map ( Y=>nx485, A0=>Q_9_EXMPLR, A1=>D(9), S0=>nx708
   );
   ix119 : oai21 port map ( Y=>nx118, A0=>D(9), A1=>nx664, B0=>nx656);
   reg_Q_10 : dffsr_ni port map ( Q=>Q_10_EXMPLR, QB=>OPEN, D=>nx495, CLK=>
      clk, S=>nx134, R=>nx130);
   ix496 : mux21_ni port map ( Y=>nx495, A0=>Q_10_EXMPLR, A1=>D(10), S0=>
      nx708);
   ix131 : oai21 port map ( Y=>nx130, A0=>D(10), A1=>nx664, B0=>nx658);
   reg_Q_11 : dffsr_ni port map ( Q=>Q_11_EXMPLR, QB=>OPEN, D=>nx505, CLK=>
      clk, S=>nx146, R=>nx142);
   ix506 : mux21_ni port map ( Y=>nx505, A0=>Q_11_EXMPLR, A1=>D(11), S0=>
      nx708);
   ix143 : oai21 port map ( Y=>nx142, A0=>D(11), A1=>nx664, B0=>nx658);
   reg_Q_12 : dffsr_ni port map ( Q=>Q_12_EXMPLR, QB=>OPEN, D=>nx515, CLK=>
      clk, S=>nx158, R=>nx154);
   ix516 : mux21_ni port map ( Y=>nx515, A0=>Q_12_EXMPLR, A1=>D(12), S0=>
      nx708);
   ix155 : oai21 port map ( Y=>nx154, A0=>D(12), A1=>nx664, B0=>nx658);
   reg_Q_13 : dffsr_ni port map ( Q=>Q_13_EXMPLR, QB=>OPEN, D=>nx525, CLK=>
      clk, S=>nx170, R=>nx166);
   ix526 : mux21_ni port map ( Y=>nx525, A0=>Q_13_EXMPLR, A1=>D(13), S0=>
      nx710);
   ix167 : oai21 port map ( Y=>nx166, A0=>D(13), A1=>nx664, B0=>nx658);
   reg_Q_14 : dffsr_ni port map ( Q=>Q_14_EXMPLR, QB=>OPEN, D=>nx535, CLK=>
      clk, S=>nx182, R=>nx178);
   ix536 : mux21_ni port map ( Y=>nx535, A0=>Q_14_EXMPLR, A1=>D(14), S0=>
      nx710);
   ix179 : oai21 port map ( Y=>nx178, A0=>D(14), A1=>nx714, B0=>nx660);
   reg_Q_15 : dffsr_ni port map ( Q=>Q_15_EXMPLR, QB=>OPEN, D=>nx545, CLK=>
      clk, S=>nx194, R=>nx190);
   ix546 : mux21_ni port map ( Y=>nx545, A0=>Q_15_EXMPLR, A1=>D(15), S0=>
      nx710);
   ix191 : oai21 port map ( Y=>nx190, A0=>D(15), A1=>nx714, B0=>nx660);
   ix3 : inv02 port map ( Y=>nx2, A=>nx565);
   ix651 : inv02 port map ( Y=>nx652, A=>rst);
   ix653 : inv02 port map ( Y=>nx654, A=>rst);
   ix655 : inv02 port map ( Y=>nx656, A=>rst);
   ix657 : inv02 port map ( Y=>nx658, A=>rst);
   ix659 : inv02 port map ( Y=>nx660, A=>rst);
   ix661 : inv02 port map ( Y=>nx662, A=>nx2);
   ix663 : inv02 port map ( Y=>nx664, A=>nx2);
   ix15 : nor03_2x port map ( Y=>nx14, A0=>nx714, A1=>nx672, A2=>rst);
   ix671 : inv01 port map ( Y=>nx672, A=>D(0));
   ix27 : nor03_2x port map ( Y=>nx26, A0=>nx714, A1=>nx674, A2=>rst);
   ix673 : inv01 port map ( Y=>nx674, A=>D(1));
   ix39 : nor03_2x port map ( Y=>nx38, A0=>nx714, A1=>nx676, A2=>rst);
   ix675 : inv01 port map ( Y=>nx676, A=>D(2));
   ix51 : nor03_2x port map ( Y=>nx50, A0=>nx714, A1=>nx678, A2=>rst);
   ix677 : inv01 port map ( Y=>nx678, A=>D(3));
   ix63 : nor03_2x port map ( Y=>nx62, A0=>nx714, A1=>nx680, A2=>rst);
   ix679 : inv01 port map ( Y=>nx680, A=>D(4));
   ix75 : nor03_2x port map ( Y=>nx74, A0=>nx716, A1=>nx682, A2=>rst);
   ix681 : inv01 port map ( Y=>nx682, A=>D(5));
   ix87 : nor03_2x port map ( Y=>nx86, A0=>nx716, A1=>nx684, A2=>rst);
   ix683 : inv01 port map ( Y=>nx684, A=>D(6));
   ix99 : nor03_2x port map ( Y=>nx98, A0=>nx716, A1=>nx686, A2=>rst);
   ix685 : inv01 port map ( Y=>nx686, A=>D(7));
   ix111 : nor03_2x port map ( Y=>nx110, A0=>nx716, A1=>nx688, A2=>rst);
   ix687 : inv01 port map ( Y=>nx688, A=>D(8));
   ix123 : nor03_2x port map ( Y=>nx122, A0=>nx716, A1=>nx690, A2=>rst);
   ix689 : inv01 port map ( Y=>nx690, A=>D(9));
   ix135 : nor03_2x port map ( Y=>nx134, A0=>nx716, A1=>nx692, A2=>rst);
   ix691 : inv01 port map ( Y=>nx692, A=>D(10));
   ix147 : nor03_2x port map ( Y=>nx146, A0=>nx716, A1=>nx694, A2=>rst);
   ix693 : inv01 port map ( Y=>nx694, A=>D(11));
   ix159 : nor03_2x port map ( Y=>nx158, A0=>nx718, A1=>nx696, A2=>rst);
   ix695 : inv01 port map ( Y=>nx696, A=>D(12));
   ix171 : nor03_2x port map ( Y=>nx170, A0=>nx718, A1=>nx698, A2=>rst);
   ix697 : inv01 port map ( Y=>nx698, A=>D(13));
   ix183 : nor03_2x port map ( Y=>nx182, A0=>nx712, A1=>nx700, A2=>rst);
   ix699 : inv01 port map ( Y=>nx700, A=>D(14));
   ix195 : nor03_2x port map ( Y=>nx194, A0=>nx712, A1=>nx702, A2=>rst);
   ix701 : inv01 port map ( Y=>nx702, A=>D(15));
   ix703 : inv01 port map ( Y=>nx704, A=>en);
   ix705 : inv02 port map ( Y=>nx706, A=>nx704);
   ix707 : inv02 port map ( Y=>nx708, A=>nx704);
   ix709 : inv02 port map ( Y=>nx710, A=>nx704);
   ix711 : inv01 port map ( Y=>nx712, A=>nx2);
   ix713 : inv04 port map ( Y=>nx714, A=>nx2);
   ix715 : inv04 port map ( Y=>nx716, A=>nx2);
   ix717 : inv04 port map ( Y=>nx718, A=>nx2);
end RegWithLoadArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity DownCounterAsyncLoad_16 is
   port (
      loadData : IN std_logic_vector (15 DOWNTO 0) ;
      en : IN std_logic ;
      load : IN std_logic ;
      rst : IN std_logic ;
      clk : IN std_logic ;
      counterOutput : OUT std_logic_vector (15 DOWNTO 0)) ;
end DownCounterAsyncLoad_16 ;

architecture DownCounterAsyncLoadArch of DownCounterAsyncLoad_16 is
   component RegWithLoad_16
      port (
         D : IN std_logic_vector (15 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         load : IN std_logic ;
         Q : OUT std_logic_vector (15 DOWNTO 0)) ;
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
      counterInput_1, counterInput_0, nx14, nx18, nx30, nx36, nx48, nx54, 
      nx66, nx72, nx84, nx90, nx102, nx108, nx120, nx126, nx138, nx144, 
      nx156, nx162, nx174, nx180, nx192, nx198, nx210, nx216, nx228, nx234, 
      nx246, nx252, nx262, nx137, nx224, nx227, nx229, nx231: std_logic ;

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
   counterReg : RegWithLoad_16 port map ( D(15)=>counterInput_15, D(14)=>
      counterInput_14, D(13)=>counterInput_13, D(12)=>counterInput_12, D(11)
      =>counterInput_11, D(10)=>counterInput_10, D(9)=>counterInput_9, D(8)
      =>counterInput_8, D(7)=>counterInput_7, D(6)=>counterInput_6, D(5)=>
      counterInput_5, D(4)=>counterInput_4, D(3)=>counterInput_3, D(2)=>
      counterInput_2, D(1)=>counterInput_1, D(0)=>counterInput_0, en=>en, 
      clk=>clk, rst=>rst, load=>nx227, Q(15)=>counterOutput_15_EXMPLR, Q(14)
      =>counterOutput_14_EXMPLR, Q(13)=>counterOutput_13_EXMPLR, Q(12)=>
      counterOutput_12_EXMPLR, Q(11)=>counterOutput_11_EXMPLR, Q(10)=>
      counterOutput_10_EXMPLR, Q(9)=>counterOutput_9_EXMPLR, Q(8)=>
      counterOutput_8_EXMPLR, Q(7)=>counterOutput_7_EXMPLR, Q(6)=>
      counterOutput_6_EXMPLR, Q(5)=>counterOutput_5_EXMPLR, Q(4)=>
      counterOutput_4_EXMPLR, Q(3)=>counterOutput_3_EXMPLR, Q(2)=>
      counterOutput_2_EXMPLR, Q(1)=>counterOutput_1_EXMPLR, Q(0)=>
      counterOutput_0_EXMPLR);
   ix9 : oai21 port map ( Y=>counterInput_0, A0=>nx227, A1=>
      counterOutput_0_EXMPLR, B0=>nx137);
   ix138 : nand02 port map ( Y=>nx137, A0=>loadData(0), A1=>nx227);
   ix27 : mux21_ni port map ( Y=>counterInput_1, A0=>nx18, A1=>loadData(1), 
      S0=>nx227);
   ix19 : xnor2 port map ( Y=>nx18, A0=>counterOutput_1_EXMPLR, A1=>
      counterOutput_0_EXMPLR);
   ix45 : mux21_ni port map ( Y=>counterInput_2, A0=>nx36, A1=>loadData(2), 
      S0=>nx227);
   ix37 : xor2 port map ( Y=>nx36, A0=>counterOutput_2_EXMPLR, A1=>nx14);
   ix15 : nor02_2x port map ( Y=>nx14, A0=>counterOutput_1_EXMPLR, A1=>
      counterOutput_0_EXMPLR);
   ix63 : mux21_ni port map ( Y=>counterInput_3, A0=>nx54, A1=>loadData(3), 
      S0=>nx227);
   ix55 : xor2 port map ( Y=>nx54, A0=>counterOutput_3_EXMPLR, A1=>nx30);
   ix31 : nor03_2x port map ( Y=>nx30, A0=>counterOutput_2_EXMPLR, A1=>
      counterOutput_1_EXMPLR, A2=>counterOutput_0_EXMPLR);
   ix81 : mux21_ni port map ( Y=>counterInput_4, A0=>nx72, A1=>loadData(4), 
      S0=>nx227);
   ix73 : xor2 port map ( Y=>nx72, A0=>counterOutput_4_EXMPLR, A1=>nx48);
   ix49 : nor04 port map ( Y=>nx48, A0=>counterOutput_3_EXMPLR, A1=>
      counterOutput_2_EXMPLR, A2=>counterOutput_1_EXMPLR, A3=>
      counterOutput_0_EXMPLR);
   ix99 : mux21_ni port map ( Y=>counterInput_5, A0=>nx90, A1=>loadData(5), 
      S0=>nx229);
   ix91 : xor2 port map ( Y=>nx90, A0=>counterOutput_5_EXMPLR, A1=>nx66);
   ix67 : nor02ii port map ( Y=>nx66, A0=>counterOutput_4_EXMPLR, A1=>nx48);
   ix117 : mux21_ni port map ( Y=>counterInput_6, A0=>nx108, A1=>loadData(6), 
      S0=>nx229);
   ix109 : xor2 port map ( Y=>nx108, A0=>counterOutput_6_EXMPLR, A1=>nx84);
   ix88 : nor02ii port map ( Y=>nx84, A0=>counterOutput_5_EXMPLR, A1=>nx66);
   ix135 : mux21_ni port map ( Y=>counterInput_7, A0=>nx126, A1=>loadData(7), 
      S0=>nx229);
   ix127 : xor2 port map ( Y=>nx126, A0=>counterOutput_7_EXMPLR, A1=>nx102);
   ix103 : nor02ii port map ( Y=>nx102, A0=>counterOutput_6_EXMPLR, A1=>nx84
   );
   ix153 : mux21_ni port map ( Y=>counterInput_8, A0=>nx144, A1=>loadData(8), 
      S0=>nx229);
   ix145 : xor2 port map ( Y=>nx144, A0=>counterOutput_8_EXMPLR, A1=>nx120);
   ix121 : nor02ii port map ( Y=>nx120, A0=>counterOutput_7_EXMPLR, A1=>
      nx102);
   ix171 : mux21_ni port map ( Y=>counterInput_9, A0=>nx162, A1=>loadData(9), 
      S0=>nx229);
   ix163 : xor2 port map ( Y=>nx162, A0=>counterOutput_9_EXMPLR, A1=>nx138);
   ix139 : nor02ii port map ( Y=>nx138, A0=>counterOutput_8_EXMPLR, A1=>
      nx120);
   ix189 : mux21_ni port map ( Y=>counterInput_10, A0=>nx180, A1=>
      loadData(10), S0=>nx229);
   ix181 : xor2 port map ( Y=>nx180, A0=>counterOutput_10_EXMPLR, A1=>nx156
   );
   ix157 : nor02ii port map ( Y=>nx156, A0=>counterOutput_9_EXMPLR, A1=>
      nx138);
   ix207 : mux21_ni port map ( Y=>counterInput_11, A0=>nx198, A1=>
      loadData(11), S0=>nx229);
   ix199 : xor2 port map ( Y=>nx198, A0=>counterOutput_11_EXMPLR, A1=>nx174
   );
   ix175 : nor02ii port map ( Y=>nx174, A0=>counterOutput_10_EXMPLR, A1=>
      nx156);
   ix225 : mux21_ni port map ( Y=>counterInput_12, A0=>nx216, A1=>
      loadData(12), S0=>nx231);
   ix217 : xor2 port map ( Y=>nx216, A0=>counterOutput_12_EXMPLR, A1=>nx192
   );
   ix193 : nor02ii port map ( Y=>nx192, A0=>counterOutput_11_EXMPLR, A1=>
      nx174);
   ix243 : mux21_ni port map ( Y=>counterInput_13, A0=>nx234, A1=>
      loadData(13), S0=>nx231);
   ix235 : xor2 port map ( Y=>nx234, A0=>counterOutput_13_EXMPLR, A1=>nx210
   );
   ix211 : nor02ii port map ( Y=>nx210, A0=>counterOutput_12_EXMPLR, A1=>
      nx192);
   ix261 : mux21_ni port map ( Y=>counterInput_14, A0=>nx252, A1=>
      loadData(14), S0=>nx231);
   ix253 : xor2 port map ( Y=>nx252, A0=>counterOutput_14_EXMPLR, A1=>nx228
   );
   ix229 : nor02ii port map ( Y=>nx228, A0=>counterOutput_13_EXMPLR, A1=>
      nx210);
   ix271 : mux21_ni port map ( Y=>counterInput_15, A0=>nx262, A1=>
      loadData(15), S0=>nx231);
   ix263 : xor2 port map ( Y=>nx262, A0=>counterOutput_15_EXMPLR, A1=>nx246
   );
   ix247 : nor02ii port map ( Y=>nx246, A0=>counterOutput_14_EXMPLR, A1=>
      nx228);
   ix223 : inv01 port map ( Y=>nx224, A=>load);
   ix226 : inv02 port map ( Y=>nx227, A=>nx224);
   ix228 : inv02 port map ( Y=>nx229, A=>nx224);
   ix230 : inv02 port map ( Y=>nx231, A=>nx224);
end DownCounterAsyncLoadArch ;

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
      Q : INOUT std_logic_vector (15 DOWNTO 0) ;
      result : OUT std_logic_vector (3 DOWNTO 0)) ;
end IOInterface_16_4 ;

architecture IOInterfaceArch of IOInterface_16_4 is
   component DownCounterAsyncLoad_16
      port (
         loadData : IN std_logic_vector (15 DOWNTO 0) ;
         en : IN std_logic ;
         load : IN std_logic ;
         rst : IN std_logic ;
         clk : IN std_logic ;
         counterOutput : OUT std_logic_vector (15 DOWNTO 0)) ;
   
   end component ;
   signal myGlobalCounterEnable, globalCounterOutput_15, 
      globalCounterOutput_14, globalCounterOutput_13, globalCounterOutput_12, 
      globalCounterOutput_11, globalCounterOutput_10, globalCounterOutput_9, 
      globalCounterOutput_8, globalCounterOutput_7, globalCounterOutput_6, 
      globalCounterOutput_5, globalCounterOutput_4, globalCounterOutput_3, 
      globalCounterOutput_2, globalCounterOutput_1, globalCounterOutput_0, 
      zeros_15, nx12, nx26, nx42, nx56, nx193, nx203, nx213, nx223, nx233, 
      nx243, nx253, nx263, nx273, nx283, nx293, nx303, nx313, nx323, nx333, 
      nx343, nx349: std_logic ;

begin
   GlobalCounter : DownCounterAsyncLoad_16 port map ( loadData(15)=>Din(15), 
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
   ix350 : fake_vcc port map ( Y=>nx349);
   ix133 : fake_gnd port map ( Y=>zeros_15);
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
   ix97 : or02 port map ( Y=>myGlobalCounterEnable, A0=>globalCounterEnable, 
      A1=>globalCounterLoad);
   tri_result_0 : tri01 port map ( Y=>result(0), A=>nx349, E=>zeros_15);
   tri_result_1 : tri01 port map ( Y=>result(1), A=>nx349, E=>zeros_15);
   tri_result_2 : tri01 port map ( Y=>result(2), A=>nx349, E=>zeros_15);
   tri_result_3 : tri01 port map ( Y=>result(3), A=>nx349, E=>zeros_15);
   DataReg_reg_Q_0 : dffr port map ( Q=>Q(0), QB=>OPEN, D=>nx193, CLK=>clk, 
      R=>rst);
   ix194 : mux21_ni port map ( Y=>nx193, A0=>Q(0), A1=>Din(0), S0=>INTR);
   DataReg_reg_Q_1 : dffr port map ( Q=>Q(1), QB=>OPEN, D=>nx203, CLK=>clk, 
      R=>rst);
   ix204 : mux21_ni port map ( Y=>nx203, A0=>Q(1), A1=>Din(1), S0=>INTR);
   DataReg_reg_Q_2 : dffr port map ( Q=>Q(2), QB=>OPEN, D=>nx213, CLK=>clk, 
      R=>rst);
   ix214 : mux21_ni port map ( Y=>nx213, A0=>Q(2), A1=>Din(2), S0=>INTR);
   DataReg_reg_Q_3 : dffr port map ( Q=>Q(3), QB=>OPEN, D=>nx223, CLK=>clk, 
      R=>rst);
   ix224 : mux21_ni port map ( Y=>nx223, A0=>Q(3), A1=>Din(3), S0=>INTR);
   DataReg_reg_Q_4 : dffr port map ( Q=>Q(4), QB=>OPEN, D=>nx233, CLK=>clk, 
      R=>rst);
   ix234 : mux21_ni port map ( Y=>nx233, A0=>Q(4), A1=>Din(4), S0=>INTR);
   DataReg_reg_Q_5 : dffr port map ( Q=>Q(5), QB=>OPEN, D=>nx243, CLK=>clk, 
      R=>rst);
   ix244 : mux21_ni port map ( Y=>nx243, A0=>Q(5), A1=>Din(5), S0=>INTR);
   DataReg_reg_Q_6 : dffr port map ( Q=>Q(6), QB=>OPEN, D=>nx253, CLK=>clk, 
      R=>rst);
   ix254 : mux21_ni port map ( Y=>nx253, A0=>Q(6), A1=>Din(6), S0=>INTR);
   DataReg_reg_Q_7 : dffr port map ( Q=>Q(7), QB=>OPEN, D=>nx263, CLK=>clk, 
      R=>rst);
   ix264 : mux21_ni port map ( Y=>nx263, A0=>Q(7), A1=>Din(7), S0=>INTR);
   DataReg_reg_Q_8 : dffr port map ( Q=>Q(8), QB=>OPEN, D=>nx273, CLK=>clk, 
      R=>rst);
   ix274 : mux21_ni port map ( Y=>nx273, A0=>Q(8), A1=>Din(8), S0=>INTR);
   DataReg_reg_Q_9 : dffr port map ( Q=>Q(9), QB=>OPEN, D=>nx283, CLK=>clk, 
      R=>rst);
   ix284 : mux21_ni port map ( Y=>nx283, A0=>Q(9), A1=>Din(9), S0=>INTR);
   DataReg_reg_Q_10 : dffr port map ( Q=>Q(10), QB=>OPEN, D=>nx293, CLK=>clk, 
      R=>rst);
   ix294 : mux21_ni port map ( Y=>nx293, A0=>Q(10), A1=>Din(10), S0=>INTR);
   DataReg_reg_Q_11 : dffr port map ( Q=>Q(11), QB=>OPEN, D=>nx303, CLK=>clk, 
      R=>rst);
   ix304 : mux21_ni port map ( Y=>nx303, A0=>Q(11), A1=>Din(11), S0=>INTR);
   DataReg_reg_Q_12 : dffr port map ( Q=>Q(12), QB=>OPEN, D=>nx313, CLK=>clk, 
      R=>rst);
   ix314 : mux21_ni port map ( Y=>nx313, A0=>Q(12), A1=>Din(12), S0=>INTR);
   DataReg_reg_Q_13 : dffr port map ( Q=>Q(13), QB=>OPEN, D=>nx323, CLK=>clk, 
      R=>rst);
   ix324 : mux21_ni port map ( Y=>nx323, A0=>Q(13), A1=>Din(13), S0=>INTR);
   DataReg_reg_Q_14 : dffr port map ( Q=>Q(14), QB=>OPEN, D=>nx333, CLK=>clk, 
      R=>rst);
   ix334 : mux21_ni port map ( Y=>nx333, A0=>Q(14), A1=>Din(14), S0=>INTR);
   DataReg_reg_Q_15 : dffr port map ( Q=>Q(15), QB=>OPEN, D=>nx343, CLK=>clk, 
      R=>rst);
   ix344 : mux21_ni port map ( Y=>nx343, A0=>Q(15), A1=>Din(15), S0=>INTR);

end IOInterfaceArch ;

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
      toCNN : OUT std_logic ;
      toFC : OUT std_logic) ;
end Controller_16_4 ;

architecture ControllerArch_unfold_2133 of Controller_16_4 is
   signal doneWithPhase_EXMPLR, busy_EXMPLR, doneDMAImageDelayed, NOT_clk, 
      zeroStateDelayed, nx20, CNNOrFC, stateCounter_counterOutput_0, nx48, 
      nx50, nx52, nx64, nx66, INTRDelayedSq, nx94, nx98, busyFFQ, nx114, 
      nx45, nx55, nx71, nx73, nx79, nx80, nx91, nx102, nx107, nx115, nx119, 
      nx124, nx139, nx150, nx152: std_logic ;

begin
   busy <= busy_EXMPLR ;
   doneWithPhase <= doneWithPhase_EXMPLR ;
   interfaceRegEnable <= FCRegisterEnable ;
   interfaceMuxSel <= FCRegisterEnable ;
   interfaceMuxEnable <= FCRegisterEnable ;
   FCCounterEnable <= FCRegisterEnable ;
   toCNN <= FCRegisterEnable ;
   toFC <= FCRegisterEnable ;
   ix21 : fake_gnd port map ( Y=>FCRegisterEnable);
   ix121 : or02 port map ( Y=>busy_EXMPLR, A0=>busyFFQ, A1=>INTR);
   busyFF_reg_Q : dffr port map ( Q=>busyFFQ, QB=>OPEN, D=>busy_EXMPLR, CLK
      =>clk, R=>nx114);
   ix115 : nand02 port map ( Y=>nx114, A0=>nx71, A1=>nx80);
   ix72 : nor02ii port map ( Y=>nx71, A0=>doneDMAFC, A1=>nx73);
   ix74 : aoi21 port map ( Y=>nx73, A0=>decompZeroState, A1=>
      doneDMAImageDelayed, B0=>doneDMACNN);
   imgLatcher_reg_Q : dffr port map ( Q=>doneDMAImageDelayed, QB=>nx79, D=>
      doneDMAImage, CLK=>NOT_clk, R=>rst);
   ix78 : inv01 port map ( Y=>NOT_clk, A=>clk);
   ix82 : inv01 port map ( Y=>nx80, A=>zeroState);
   ix79 : and02 port map ( Y=>globalCounterLoad, A0=>zeroState, A1=>INTR);
   ix113 : oai21 port map ( Y=>imageCounterEnable, A0=>zeroState, A1=>nx79, 
      B0=>nx91);
   ix92 : nand02 port map ( Y=>nx91, A0=>nx80, A1=>INTRDelayed);
   INTRFF1_reg_Q : dffr port map ( Q=>INTRDelayed, QB=>OPEN, D=>nx20, CLK=>
      NOT_clk, R=>rst);
   ix23 : nor02ii port map ( Y=>nx20, A0=>zeroStateDelayed, A1=>INTR);
   zeroLatch_reg_Q : dffr port map ( Q=>zeroStateDelayed, QB=>OPEN, D=>
      zeroState, CLK=>NOT_clk, R=>rst);
   ix107 : inv01 port map ( Y=>decompDecrementorEnable, A=>nx102);
   ix103 : oai21 port map ( Y=>nx102, A0=>INTRDelayed, A1=>doneDMAImage, B0
      =>imageLoad);
   ix85 : nor02ii port map ( Y=>imageLoad, A0=>imageOrCNN, A1=>load);
   ix108 : nand02 port map ( Y=>nx107, A0=>load, A1=>imageOrCNN);
   ix56 : mux21 port map ( Y=>nx55, A0=>nx115, A1=>nx124, S0=>nx119);
   stateCounter_counterReg_reg_Q_0 : dffr port map ( Q=>
      stateCounter_counterOutput_0, QB=>OPEN, D=>nx45, CLK=>NOT_clk, R=>rst
   );
   ix46 : xnor2 port map ( Y=>nx45, A0=>stateCounter_counterOutput_0, A1=>
      nx119);
   ix120 : nand02 port map ( Y=>nx119, A0=>imageOrCNN, A1=>
      doneWithPhase_EXMPLR);
   stateCounter_counterReg_reg_Q_1 : dffr port map ( Q=>CNNOrFC, QB=>nx124, 
      D=>nx55, CLK=>NOT_clk, R=>rst);
   FCRamEn_reg_Q : dffr port map ( Q=>FCRamEnable, QB=>OPEN, D=>nx50, CLK=>
      clk, R=>nx52);
   ix51 : or02 port map ( Y=>nx50, A0=>nx48, A1=>FCRamEnable);
   ix49 : nor03_2x port map ( Y=>nx48, A0=>nx91, A1=>nx124, A2=>nx107);
   ix53 : or02 port map ( Y=>nx52, A0=>rst, A1=>doneDMAFC);
   CNNRamEn_reg_Q : dffr port map ( Q=>CNNRamEnable, QB=>OPEN, D=>nx64, CLK
      =>clk, R=>nx66);
   ix65 : or02 port map ( Y=>nx64, A0=>CNNRegisterEnable, A1=>CNNRamEnable);
   ix63 : nor03_2x port map ( Y=>CNNRegisterEnable, A0=>nx91, A1=>CNNOrFC, 
      A2=>nx107);
   ix67 : or02 port map ( Y=>nx66, A0=>rst, A1=>doneDMACNN);
   imageRamEn_reg_Q : dffr port map ( Q=>imageRamEnable, QB=>OPEN, D=>nx94, 
      CLK=>clk, R=>nx98);
   ix95 : or02 port map ( Y=>nx94, A0=>imageRegisterEnable, A1=>
      imageRamEnable);
   ix93 : inv01 port map ( Y=>imageRegisterEnable, A=>nx139);
   ix140 : oai21 port map ( Y=>nx139, A0=>doneDMAImageDelayed, A1=>
      INTRDelayedSq, B0=>imageLoad);
   INTRFF2_reg_Q : dffr port map ( Q=>INTRDelayedSq, QB=>OPEN, D=>
      INTRDelayed, CLK=>NOT_clk, R=>rst);
   ix99 : or03 port map ( Y=>nx98, A0=>decompZeroState, A1=>rst, A2=>
      doneDMAImage);
   ix81 : nand02 port map ( Y=>globalCounterEnable, A0=>nx150, A1=>nx71);
   ix149 : inv01 port map ( Y=>nx150, A=>globalCounterLoad);
   ix77 : and03 port map ( Y=>CNNCounterEnable, A0=>nx152, A1=>doneDMACNN, 
      A2=>nx124);
   ix151 : inv01 port map ( Y=>nx152, A=>nx107);
   ix116 : xor2 port map ( Y=>nx115, A0=>nx124, A1=>
      stateCounter_counterOutput_0);
   ix13 : nor02ii port map ( Y=>doneWithPhase_EXMPLR, A0=>nx71, A1=>
      zeroState);
end ControllerArch_unfold_2133 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity DownCounterAsyncLoad_6 is
   port (
      loadData : IN std_logic_vector (5 DOWNTO 0) ;
      en : IN std_logic ;
      load : IN std_logic ;
      rst : IN std_logic ;
      clk : IN std_logic ;
      counterOutput : OUT std_logic_vector (5 DOWNTO 0)) ;
end DownCounterAsyncLoad_6 ;

architecture DownCounterAsyncLoadArch of DownCounterAsyncLoad_6 is
   signal counterOutput_5_EXMPLR, counterOutput_4_EXMPLR, 
      counterOutput_3_EXMPLR, counterOutput_2_EXMPLR, counterOutput_1_EXMPLR, 
      counterOutput_0_EXMPLR, nx8, nx20, nx24, nx32, nx36, nx44, nx71, nx54, 
      nx60, nx66, nx74, nx80, nx84, nx90, nx96, nx104, nx110, nx114, nx120, 
      nx126, nx134, nx140, nx144, nx148, nx156, nx162, nx166, nx79, nx89, 
      nx99, nx109, nx119, nx129, nx149, nx157, nx209, nx211, nx213, nx219, 
      nx221, nx223, nx225: std_logic ;

begin
   counterOutput(5) <= counterOutput_5_EXMPLR ;
   counterOutput(4) <= counterOutput_4_EXMPLR ;
   counterOutput(3) <= counterOutput_3_EXMPLR ;
   counterOutput(2) <= counterOutput_2_EXMPLR ;
   counterOutput(1) <= counterOutput_1_EXMPLR ;
   counterOutput(0) <= counterOutput_0_EXMPLR ;
   counterReg_reg_Q_0 : dffsr_ni port map ( Q=>counterOutput_0_EXMPLR, QB=>
      OPEN, D=>nx79, CLK=>clk, S=>nx24, R=>nx20);
   ix80 : mux21_ni port map ( Y=>nx79, A0=>counterOutput_0_EXMPLR, A1=>nx8, 
      S0=>nx219);
   ix9 : oai21 port map ( Y=>nx8, A0=>nx223, A1=>counterOutput_0_EXMPLR, B0
      =>nx149);
   ix150 : nand02 port map ( Y=>nx149, A0=>loadData(0), A1=>nx223);
   ix25 : and04 port map ( Y=>nx24, A0=>nx219, A1=>nx223, A2=>nx209, A3=>
      loadData(0));
   ix21 : oai21 port map ( Y=>nx20, A0=>nx213, A1=>nx8, B0=>nx209);
   ix158 : aoi21 port map ( Y=>nx157, A0=>nx219, A1=>nx223, B0=>rst);
   counterReg_reg_Q_1 : dffsr_ni port map ( Q=>counterOutput_1_EXMPLR, QB=>
      OPEN, D=>nx89, CLK=>clk, S=>nx54, R=>nx71);
   ix90 : mux21_ni port map ( Y=>nx89, A0=>counterOutput_1_EXMPLR, A1=>nx44, 
      S0=>nx219);
   ix45 : mux21_ni port map ( Y=>nx44, A0=>nx36, A1=>loadData(1), S0=>nx223
   );
   ix37 : xnor2 port map ( Y=>nx36, A0=>counterOutput_0_EXMPLR, A1=>
      counterOutput_1_EXMPLR);
   ix55 : and04 port map ( Y=>nx54, A0=>nx219, A1=>nx223, A2=>nx209, A3=>
      loadData(1));
   ix53 : oai21 port map ( Y=>nx71, A0=>nx213, A1=>nx44, B0=>nx209);
   counterReg_reg_Q_2 : dffsr_ni port map ( Q=>counterOutput_2_EXMPLR, QB=>
      OPEN, D=>nx99, CLK=>clk, S=>nx84, R=>nx80);
   ix100 : mux21_ni port map ( Y=>nx99, A0=>counterOutput_2_EXMPLR, A1=>nx74, 
      S0=>nx219);
   ix75 : mux21_ni port map ( Y=>nx74, A0=>nx66, A1=>loadData(2), S0=>nx223
   );
   ix67 : xor2 port map ( Y=>nx66, A0=>nx32, A1=>counterOutput_2_EXMPLR);
   ix33 : nor02_2x port map ( Y=>nx32, A0=>counterOutput_0_EXMPLR, A1=>
      counterOutput_1_EXMPLR);
   ix85 : and04 port map ( Y=>nx84, A0=>nx219, A1=>nx225, A2=>nx209, A3=>
      loadData(2));
   ix81 : oai21 port map ( Y=>nx80, A0=>nx213, A1=>nx74, B0=>nx209);
   counterReg_reg_Q_3 : dffsr_ni port map ( Q=>counterOutput_3_EXMPLR, QB=>
      OPEN, D=>nx109, CLK=>clk, S=>nx114, R=>nx110);
   ix110 : mux21_ni port map ( Y=>nx109, A0=>counterOutput_3_EXMPLR, A1=>
      nx104, S0=>nx221);
   ix105 : mux21_ni port map ( Y=>nx104, A0=>nx96, A1=>loadData(3), S0=>
      nx225);
   ix97 : xor2 port map ( Y=>nx96, A0=>nx60, A1=>counterOutput_3_EXMPLR);
   ix61 : nor03_2x port map ( Y=>nx60, A0=>counterOutput_0_EXMPLR, A1=>
      counterOutput_1_EXMPLR, A2=>counterOutput_2_EXMPLR);
   ix115 : and04 port map ( Y=>nx114, A0=>nx221, A1=>nx225, A2=>nx209, A3=>
      loadData(3));
   ix111 : oai21 port map ( Y=>nx110, A0=>nx213, A1=>nx104, B0=>nx211);
   counterReg_reg_Q_4 : dffsr_ni port map ( Q=>counterOutput_4_EXMPLR, QB=>
      OPEN, D=>nx119, CLK=>clk, S=>nx144, R=>nx140);
   ix120 : mux21_ni port map ( Y=>nx119, A0=>counterOutput_4_EXMPLR, A1=>
      nx134, S0=>nx221);
   ix135 : mux21_ni port map ( Y=>nx134, A0=>nx126, A1=>loadData(4), S0=>
      nx225);
   ix127 : xor2 port map ( Y=>nx126, A0=>nx90, A1=>counterOutput_4_EXMPLR);
   ix91 : nor04 port map ( Y=>nx90, A0=>counterOutput_0_EXMPLR, A1=>
      counterOutput_1_EXMPLR, A2=>counterOutput_2_EXMPLR, A3=>
      counterOutput_3_EXMPLR);
   ix145 : and04 port map ( Y=>nx144, A0=>nx221, A1=>nx225, A2=>nx211, A3=>
      loadData(4));
   ix141 : oai21 port map ( Y=>nx140, A0=>nx213, A1=>nx134, B0=>nx211);
   counterReg_reg_Q_5 : dffsr_ni port map ( Q=>counterOutput_5_EXMPLR, QB=>
      OPEN, D=>nx129, CLK=>clk, S=>nx166, R=>nx162);
   ix130 : mux21_ni port map ( Y=>nx129, A0=>counterOutput_5_EXMPLR, A1=>
      nx156, S0=>nx221);
   ix157 : mux21_ni port map ( Y=>nx156, A0=>nx148, A1=>loadData(5), S0=>
      nx225);
   ix149 : xor2 port map ( Y=>nx148, A0=>counterOutput_5_EXMPLR, A1=>nx120);
   ix121 : nor02ii port map ( Y=>nx120, A0=>counterOutput_4_EXMPLR, A1=>nx90
   );
   ix167 : and04 port map ( Y=>nx166, A0=>nx221, A1=>nx225, A2=>nx211, A3=>
      loadData(5));
   ix163 : oai21 port map ( Y=>nx162, A0=>nx156, A1=>nx213, B0=>nx211);
   ix208 : inv02 port map ( Y=>nx209, A=>rst);
   ix210 : inv02 port map ( Y=>nx211, A=>rst);
   ix212 : buf02 port map ( Y=>nx213, A=>nx157);
   ix218 : buf02 port map ( Y=>nx219, A=>en);
   ix220 : buf02 port map ( Y=>nx221, A=>en);
   ix222 : buf02 port map ( Y=>nx223, A=>load);
   ix224 : buf02 port map ( Y=>nx225, A=>load);
end DownCounterAsyncLoadArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity RegWithLoad_13_unfolded0 is
   port (
      D : IN std_logic_vector (12 DOWNTO 0) ;
      en : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      load : IN std_logic ;
      Q : OUT std_logic_vector (12 DOWNTO 0)) ;
end RegWithLoad_13_unfolded0 ;

architecture RegWithLoadArch of RegWithLoad_13_unfolded0 is
   signal Q_12_EXMPLR, Q_11_EXMPLR, Q_10_EXMPLR, Q_9_EXMPLR, Q_8_EXMPLR, 
      Q_7_EXMPLR, Q_6_EXMPLR, Q_5_EXMPLR, Q_4_EXMPLR, Q_3_EXMPLR, Q_2_EXMPLR, 
      Q_1_EXMPLR, Q_0_EXMPLR, nx10, nx14, nx22, nx26, nx34, nx38, nx46, nx50, 
      nx58, nx62, nx70, nx74, nx82, nx86, nx94, nx98, nx106, nx110, nx118, 
      nx122, nx130, nx134, nx142, nx146, nx154, nx158, nx341, nx351, nx361, 
      nx371, nx381, nx391, nx401, nx411, nx421, nx431, nx441, nx451, nx461, 
      nx481, nx551, nx553, nx555, nx557, nx559, nx561, nx567, nx569, nx575, 
      nx577, nx579, nx581, nx583, nx585, nx587, nx589, nx591, nx593, nx595, 
      nx597, nx599, nx601, nx603, nx605, nx607: std_logic ;

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
   reg_Q_0 : dffsr_ni port map ( Q=>Q_0_EXMPLR, QB=>OPEN, D=>nx341, CLK=>clk, 
      S=>nx14, R=>nx10);
   ix342 : mux21_ni port map ( Y=>nx341, A0=>Q_0_EXMPLR, A1=>D(0), S0=>nx601
   );
   ix11 : oai21 port map ( Y=>nx10, A0=>D(0), A1=>nx559, B0=>nx551);
   ix482 : aoi21 port map ( Y=>nx481, A0=>nx601, A1=>load, B0=>rst);
   reg_Q_1 : dffsr_ni port map ( Q=>Q_1_EXMPLR, QB=>OPEN, D=>nx351, CLK=>clk, 
      S=>nx26, R=>nx22);
   ix352 : mux21_ni port map ( Y=>nx351, A0=>Q_1_EXMPLR, A1=>D(1), S0=>nx601
   );
   ix23 : oai21 port map ( Y=>nx22, A0=>D(1), A1=>nx559, B0=>nx551);
   reg_Q_2 : dffsr_ni port map ( Q=>Q_2_EXMPLR, QB=>OPEN, D=>nx361, CLK=>clk, 
      S=>nx38, R=>nx34);
   ix362 : mux21_ni port map ( Y=>nx361, A0=>Q_2_EXMPLR, A1=>D(2), S0=>nx601
   );
   ix35 : oai21 port map ( Y=>nx34, A0=>D(2), A1=>nx559, B0=>nx551);
   reg_Q_3 : dffsr_ni port map ( Q=>Q_3_EXMPLR, QB=>OPEN, D=>nx371, CLK=>clk, 
      S=>nx50, R=>nx46);
   ix372 : mux21_ni port map ( Y=>nx371, A0=>Q_3_EXMPLR, A1=>D(3), S0=>nx601
   );
   ix47 : oai21 port map ( Y=>nx46, A0=>D(3), A1=>nx559, B0=>nx553);
   reg_Q_4 : dffsr_ni port map ( Q=>Q_4_EXMPLR, QB=>OPEN, D=>nx381, CLK=>clk, 
      S=>nx62, R=>nx58);
   ix382 : mux21_ni port map ( Y=>nx381, A0=>Q_4_EXMPLR, A1=>D(4), S0=>nx601
   );
   ix59 : oai21 port map ( Y=>nx58, A0=>D(4), A1=>nx559, B0=>nx553);
   reg_Q_5 : dffsr_ni port map ( Q=>Q_5_EXMPLR, QB=>OPEN, D=>nx391, CLK=>clk, 
      S=>nx74, R=>nx70);
   ix392 : mux21_ni port map ( Y=>nx391, A0=>Q_5_EXMPLR, A1=>D(5), S0=>nx601
   );
   ix71 : oai21 port map ( Y=>nx70, A0=>D(5), A1=>nx559, B0=>nx553);
   reg_Q_6 : dffsr_ni port map ( Q=>Q_6_EXMPLR, QB=>OPEN, D=>nx401, CLK=>clk, 
      S=>nx86, R=>nx82);
   ix402 : mux21_ni port map ( Y=>nx401, A0=>Q_6_EXMPLR, A1=>D(6), S0=>nx603
   );
   ix83 : oai21 port map ( Y=>nx82, A0=>D(6), A1=>nx559, B0=>nx553);
   reg_Q_7 : dffsr_ni port map ( Q=>Q_7_EXMPLR, QB=>OPEN, D=>nx411, CLK=>clk, 
      S=>nx98, R=>nx94);
   ix412 : mux21_ni port map ( Y=>nx411, A0=>Q_7_EXMPLR, A1=>D(7), S0=>nx603
   );
   ix95 : oai21 port map ( Y=>nx94, A0=>D(7), A1=>nx607, B0=>nx555);
   reg_Q_8 : dffsr_ni port map ( Q=>Q_8_EXMPLR, QB=>OPEN, D=>nx421, CLK=>clk, 
      S=>nx110, R=>nx106);
   ix422 : mux21_ni port map ( Y=>nx421, A0=>Q_8_EXMPLR, A1=>D(8), S0=>nx603
   );
   ix107 : oai21 port map ( Y=>nx106, A0=>D(8), A1=>nx607, B0=>nx555);
   reg_Q_9 : dffsr_ni port map ( Q=>Q_9_EXMPLR, QB=>OPEN, D=>nx431, CLK=>clk, 
      S=>nx122, R=>nx118);
   ix432 : mux21_ni port map ( Y=>nx431, A0=>Q_9_EXMPLR, A1=>D(9), S0=>nx603
   );
   ix119 : oai21 port map ( Y=>nx118, A0=>D(9), A1=>nx607, B0=>nx555);
   reg_Q_10 : dffsr_ni port map ( Q=>Q_10_EXMPLR, QB=>OPEN, D=>nx441, CLK=>
      clk, S=>nx134, R=>nx130);
   ix442 : mux21_ni port map ( Y=>nx441, A0=>Q_10_EXMPLR, A1=>D(10), S0=>
      nx603);
   ix131 : oai21 port map ( Y=>nx130, A0=>D(10), A1=>nx607, B0=>nx557);
   reg_Q_11 : dffsr_ni port map ( Q=>Q_11_EXMPLR, QB=>OPEN, D=>nx451, CLK=>
      clk, S=>nx146, R=>nx142);
   ix452 : mux21_ni port map ( Y=>nx451, A0=>Q_11_EXMPLR, A1=>D(11), S0=>
      nx603);
   ix143 : oai21 port map ( Y=>nx142, A0=>D(11), A1=>nx607, B0=>nx557);
   reg_Q_12 : dffsr_ni port map ( Q=>Q_12_EXMPLR, QB=>OPEN, D=>nx461, CLK=>
      clk, S=>nx158, R=>nx154);
   ix462 : mux21_ni port map ( Y=>nx461, A0=>Q_12_EXMPLR, A1=>D(12), S0=>
      nx603);
   ix155 : oai21 port map ( Y=>nx154, A0=>D(12), A1=>nx607, B0=>nx557);
   ix550 : inv02 port map ( Y=>nx551, A=>rst);
   ix552 : inv02 port map ( Y=>nx553, A=>rst);
   ix554 : inv02 port map ( Y=>nx555, A=>rst);
   ix556 : inv02 port map ( Y=>nx557, A=>rst);
   ix558 : inv02 port map ( Y=>nx559, A=>nx567);
   ix560 : inv02 port map ( Y=>nx561, A=>nx569);
   ix566 : inv01 port map ( Y=>nx567, A=>nx481);
   ix568 : inv01 port map ( Y=>nx569, A=>nx605);
   ix15 : nor03_2x port map ( Y=>nx14, A0=>nx607, A1=>nx575, A2=>rst);
   ix574 : inv01 port map ( Y=>nx575, A=>D(0));
   ix27 : nor03_2x port map ( Y=>nx26, A0=>nx561, A1=>nx577, A2=>rst);
   ix576 : inv01 port map ( Y=>nx577, A=>D(1));
   ix39 : nor03_2x port map ( Y=>nx38, A0=>nx561, A1=>nx579, A2=>rst);
   ix578 : inv01 port map ( Y=>nx579, A=>D(2));
   ix51 : nor03_2x port map ( Y=>nx50, A0=>nx561, A1=>nx581, A2=>rst);
   ix580 : inv01 port map ( Y=>nx581, A=>D(3));
   ix63 : nor03_2x port map ( Y=>nx62, A0=>nx561, A1=>nx583, A2=>rst);
   ix582 : inv01 port map ( Y=>nx583, A=>D(4));
   ix75 : nor03_2x port map ( Y=>nx74, A0=>nx561, A1=>nx585, A2=>rst);
   ix584 : inv01 port map ( Y=>nx585, A=>D(5));
   ix87 : nor03_2x port map ( Y=>nx86, A0=>nx561, A1=>nx587, A2=>rst);
   ix586 : inv01 port map ( Y=>nx587, A=>D(6));
   ix99 : nor03_2x port map ( Y=>nx98, A0=>nx605, A1=>nx589, A2=>rst);
   ix588 : inv01 port map ( Y=>nx589, A=>D(7));
   ix111 : nor03_2x port map ( Y=>nx110, A0=>nx605, A1=>nx591, A2=>rst);
   ix590 : inv01 port map ( Y=>nx591, A=>D(8));
   ix123 : nor03_2x port map ( Y=>nx122, A0=>nx605, A1=>nx593, A2=>rst);
   ix592 : inv01 port map ( Y=>nx593, A=>D(9));
   ix135 : nor03_2x port map ( Y=>nx134, A0=>nx605, A1=>nx595, A2=>rst);
   ix594 : inv01 port map ( Y=>nx595, A=>D(10));
   ix147 : nor03_2x port map ( Y=>nx146, A0=>nx605, A1=>nx597, A2=>rst);
   ix596 : inv01 port map ( Y=>nx597, A=>D(11));
   ix159 : nor03_2x port map ( Y=>nx158, A0=>nx605, A1=>nx599, A2=>rst);
   ix598 : inv01 port map ( Y=>nx599, A=>D(12));
   ix600 : buf02 port map ( Y=>nx601, A=>en);
   ix602 : buf02 port map ( Y=>nx603, A=>en);
   ix604 : inv02 port map ( Y=>nx605, A=>nx567);
   ix606 : inv02 port map ( Y=>nx607, A=>nx569);
end RegWithLoadArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity UpCounterAsyncLoad_13 is
   port (
      loadData : IN std_logic_vector (12 DOWNTO 0) ;
      en : IN std_logic ;
      load : IN std_logic ;
      rst : IN std_logic ;
      clk : IN std_logic ;
      counterOutput : OUT std_logic_vector (12 DOWNTO 0)) ;
end UpCounterAsyncLoad_13 ;

architecture UpCounterAsyncLoad_unfold_2844_0 of UpCounterAsyncLoad_13 is
   component RegWithLoad_13_unfolded0
      port (
         D : IN std_logic_vector (12 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         load : IN std_logic ;
         Q : OUT std_logic_vector (12 DOWNTO 0)) ;
   end component ;
   signal counterOutput_12_EXMPLR, counterOutput_11_EXMPLR, 
      counterOutput_10_EXMPLR, counterOutput_9_EXMPLR, 
      counterOutput_8_EXMPLR, counterOutput_7_EXMPLR, counterOutput_6_EXMPLR, 
      counterOutput_5_EXMPLR, counterOutput_4_EXMPLR, counterOutput_3_EXMPLR, 
      counterOutput_2_EXMPLR, counterOutput_1_EXMPLR, counterOutput_0_EXMPLR, 
      counterInput_12, counterInput_11, counterInput_10, counterInput_9, 
      counterInput_8, counterInput_7, counterInput_6, counterInput_5, 
      counterInput_4, counterInput_3, counterInput_2, counterInput_1, 
      counterInput_0, nx2, nx4, nx6, nx8, nx10, nx12, nx14, nx16, nx20, nx32, 
      nx58, nx64, nx80, nx94, nx108, nx122, nx136, nx150, nx164, nx178, nx53, 
      nx63, nx71, nx73, nx79, nx81, nx89, nx97, nx99, nx105, nx113, nx115, 
      nx121, nx127, nx129, nx133, nx139, nx141, nx148, nx151, nx153, nx155, 
      nx157: std_logic ;

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
   counterReg : RegWithLoad_13_unfolded0 port map ( D(12)=>counterInput_12, 
      D(11)=>counterInput_11, D(10)=>counterInput_10, D(9)=>counterInput_9, 
      D(8)=>counterInput_8, D(7)=>counterInput_7, D(6)=>counterInput_6, D(5)
      =>counterInput_5, D(4)=>counterInput_4, D(3)=>counterInput_3, D(2)=>
      counterInput_2, D(1)=>counterInput_1, D(0)=>counterInput_0, en=>en, 
      clk=>clk, rst=>rst, load=>nx151, Q(12)=>counterOutput_12_EXMPLR, Q(11)
      =>counterOutput_11_EXMPLR, Q(10)=>counterOutput_10_EXMPLR, Q(9)=>
      counterOutput_9_EXMPLR, Q(8)=>counterOutput_8_EXMPLR, Q(7)=>
      counterOutput_7_EXMPLR, Q(6)=>counterOutput_6_EXMPLR, Q(5)=>
      counterOutput_5_EXMPLR, Q(4)=>counterOutput_4_EXMPLR, Q(3)=>
      counterOutput_3_EXMPLR, Q(2)=>counterOutput_2_EXMPLR, Q(1)=>
      counterOutput_1_EXMPLR, Q(0)=>counterOutput_0_EXMPLR);
   ix57 : oai21 port map ( Y=>counterInput_0, A0=>nx151, A1=>
      counterOutput_0_EXMPLR, B0=>nx53);
   ix54 : nand02 port map ( Y=>nx53, A0=>loadData(0), A1=>nx151);
   ix71 : ao22 port map ( Y=>counterInput_1, A0=>loadData(1), A1=>nx151, B0
      =>nx58, B1=>nx64);
   ix59 : or02 port map ( Y=>nx58, A0=>counterOutput_0_EXMPLR, A1=>
      counterOutput_1_EXMPLR);
   ix65 : aoi21 port map ( Y=>nx64, A0=>counterOutput_1_EXMPLR, A1=>
      counterOutput_0_EXMPLR, B0=>nx151);
   ix85 : ao21 port map ( Y=>counterInput_2, A0=>loadData(2), A1=>nx151, B0
      =>nx80);
   ix81 : nor03_2x port map ( Y=>nx80, A0=>nx63, A1=>nx151, A2=>nx2);
   ix64 : aoi21 port map ( Y=>nx63, A0=>counterOutput_1_EXMPLR, A1=>
      counterOutput_0_EXMPLR, B0=>counterOutput_2_EXMPLR);
   ix99 : ao21 port map ( Y=>counterInput_3, A0=>loadData(3), A1=>nx153, B0
      =>nx94);
   ix95 : nor03_2x port map ( Y=>nx94, A0=>nx71, A1=>nx153, A2=>nx4);
   ix72 : nor02ii port map ( Y=>nx71, A0=>counterOutput_3_EXMPLR, A1=>nx73);
   ix74 : nand03 port map ( Y=>nx73, A0=>counterOutput_2_EXMPLR, A1=>
      counterOutput_1_EXMPLR, A2=>counterOutput_0_EXMPLR);
   ix113 : ao21 port map ( Y=>counterInput_4, A0=>loadData(4), A1=>nx153, B0
      =>nx108);
   ix109 : nor03_2x port map ( Y=>nx108, A0=>nx79, A1=>nx153, A2=>nx6);
   ix80 : nor02ii port map ( Y=>nx79, A0=>counterOutput_4_EXMPLR, A1=>nx81);
   ix82 : nand04 port map ( Y=>nx81, A0=>counterOutput_3_EXMPLR, A1=>
      counterOutput_2_EXMPLR, A2=>counterOutput_1_EXMPLR, A3=>
      counterOutput_0_EXMPLR);
   ix7 : nor02ii port map ( Y=>nx6, A0=>nx81, A1=>counterOutput_4_EXMPLR);
   ix127 : ao21 port map ( Y=>counterInput_5, A0=>loadData(5), A1=>nx153, B0
      =>nx122);
   ix123 : nor03_2x port map ( Y=>nx122, A0=>nx89, A1=>nx153, A2=>nx8);
   ix90 : nor02_2x port map ( Y=>nx89, A0=>nx6, A1=>counterOutput_5_EXMPLR);
   ix141 : ao21 port map ( Y=>counterInput_6, A0=>loadData(6), A1=>nx153, B0
      =>nx136);
   ix137 : nor03_2x port map ( Y=>nx136, A0=>nx97, A1=>nx155, A2=>nx10);
   ix98 : nor02ii port map ( Y=>nx97, A0=>counterOutput_6_EXMPLR, A1=>nx99);
   ix100 : nand02 port map ( Y=>nx99, A0=>counterOutput_5_EXMPLR, A1=>nx6);
   ix11 : nor02ii port map ( Y=>nx10, A0=>nx99, A1=>counterOutput_6_EXMPLR);
   ix155 : ao21 port map ( Y=>counterInput_7, A0=>loadData(7), A1=>nx155, B0
      =>nx150);
   ix151 : nor03_2x port map ( Y=>nx150, A0=>nx105, A1=>nx155, A2=>nx12);
   ix106 : nor02_2x port map ( Y=>nx105, A0=>nx10, A1=>
      counterOutput_7_EXMPLR);
   ix169 : ao21 port map ( Y=>counterInput_8, A0=>loadData(8), A1=>nx155, B0
      =>nx164);
   ix165 : nor03_2x port map ( Y=>nx164, A0=>nx113, A1=>nx155, A2=>nx14);
   ix114 : nor02ii port map ( Y=>nx113, A0=>counterOutput_8_EXMPLR, A1=>
      nx115);
   ix116 : nand02 port map ( Y=>nx115, A0=>counterOutput_7_EXMPLR, A1=>nx10
   );
   ix15 : nor02ii port map ( Y=>nx14, A0=>nx115, A1=>counterOutput_8_EXMPLR
   );
   ix183 : ao21 port map ( Y=>counterInput_9, A0=>nx155, A1=>loadData(9), B0
      =>nx178);
   ix179 : nor03_2x port map ( Y=>nx178, A0=>nx121, A1=>nx155, A2=>nx16);
   ix122 : nor02_2x port map ( Y=>nx121, A0=>nx14, A1=>
      counterOutput_9_EXMPLR);
   ix29 : nor03_2x port map ( Y=>counterInput_10, A0=>nx127, A1=>nx157, A2=>
      nx20);
   ix128 : nor02ii port map ( Y=>nx127, A0=>counterOutput_10_EXMPLR, A1=>
      nx129);
   ix130 : nand02 port map ( Y=>nx129, A0=>counterOutput_9_EXMPLR, A1=>nx14
   );
   ix21 : nor02ii port map ( Y=>nx20, A0=>nx129, A1=>counterOutput_10_EXMPLR
   );
   ix41 : nor03_2x port map ( Y=>counterInput_11, A0=>nx133, A1=>nx157, A2=>
      nx32);
   ix134 : nor02_2x port map ( Y=>nx133, A0=>nx20, A1=>
      counterOutput_11_EXMPLR);
   ix47 : nor02_2x port map ( Y=>counterInput_12, A0=>nx157, A1=>nx139);
   ix140 : xor2 port map ( Y=>nx139, A0=>counterOutput_12_EXMPLR, A1=>nx141
   );
   ix142 : nand02 port map ( Y=>nx141, A0=>counterOutput_11_EXMPLR, A1=>nx20
   );
   ix33 : inv01 port map ( Y=>nx32, A=>nx141);
   ix17 : inv01 port map ( Y=>nx16, A=>nx129);
   ix13 : inv01 port map ( Y=>nx12, A=>nx115);
   ix9 : inv01 port map ( Y=>nx8, A=>nx99);
   ix5 : inv01 port map ( Y=>nx4, A=>nx81);
   ix3 : inv01 port map ( Y=>nx2, A=>nx73);
   ix147 : inv01 port map ( Y=>nx148, A=>load);
   ix149 : inv02 port map ( Y=>nx151, A=>nx148);
   ix152 : inv02 port map ( Y=>nx153, A=>nx148);
   ix154 : inv02 port map ( Y=>nx155, A=>nx148);
   ix156 : inv02 port map ( Y=>nx157, A=>nx148);
end UpCounterAsyncLoad_unfold_2844_0 ;

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
      CNNDMAAddressOut : OUT std_logic_vector (12 DOWNTO 0) ;
      CNNDMADataOut : OUT std_logic_vector (15 DOWNTO 0) ;
      FCRamAddress : OUT std_logic_vector (15 DOWNTO 0) ;
      FCRamDin : OUT std_logic_vector (79 DOWNTO 0) ;
      result : OUT std_logic_vector (3 DOWNTO 0)) ;
end IOChip ;

architecture IOChipArch of IOChip is
   component DMACNN
      port (
         dataIn : IN std_logic_vector (15 DOWNTO 0) ;
         clk : IN std_logic ;
         enableCNNCounter : IN std_logic ;
         enableCNNRegister : IN std_logic ;
         rst : IN std_logic ;
         dataOut : OUT std_logic_vector (15 DOWNTO 0) ;
         addressOut : OUT std_logic_vector (12 DOWNTO 0)) ;
   end component ;
   component IOInterface_16_4
      port (
         Din : IN std_logic_vector (15 DOWNTO 0) ;
         INTR : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         globalCounterEnable : IN std_logic ;
         globalCounterLoad : IN std_logic ;
         zeroState : OUT std_logic ;
         Q : INOUT std_logic_vector (15 DOWNTO 0) ;
         result : OUT std_logic_vector (3 DOWNTO 0)) ;
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
         toCNN : OUT std_logic ;
         toFC : OUT std_logic) ;
   end component ;
   component DownCounterAsyncLoad_6
      port (
         loadData : IN std_logic_vector (5 DOWNTO 0) ;
         en : IN std_logic ;
         load : IN std_logic ;
         rst : IN std_logic ;
         clk : IN std_logic ;
         counterOutput : OUT std_logic_vector (5 DOWNTO 0)) ;
   
   end component ;
   component UpCounterAsyncLoad_13
      port (
         loadData : IN std_logic_vector (12 DOWNTO 0) ;
         en : IN std_logic ;
         load : IN std_logic ;
         rst : IN std_logic ;
         clk : IN std_logic ;
         counterOutput : OUT std_logic_vector (12 DOWNTO 0)) ;
   
   end component ;
   signal imageDMADataOut_0_EXMPLR, decompZeroState, CNNCounterEnable, 
      decompDecrementorEnable, CNNRegisterEnable, imageCounterEnable, 
      imageRegisterEnable, imageLoad, INTRDelayed, interfaceOutput_15, 
      interfaceOutput_14, interfaceOutput_13, interfaceOutput_12, 
      interfaceOutput_11, interfaceOutput_10, interfaceOutput_9, 
      interfaceOutput_8, interfaceOutput_7, interfaceOutput_6, 
      interfaceOutput_5, interfaceOutput_4, interfaceOutput_3, 
      interfaceOutput_2, interfaceOutput_1, interfaceOutput_0, 
      io_globalCounterEnable, io_zeroState, io_globalCounterLoad, 
      decomp_countOut_5, decomp_countOut_4, decomp_countOut_3, 
      decomp_countOut_2, decomp_countOut_1, decomp_countOut_0, 
      imageDMADataOut_15_EXMPLR, decompDataOut_0, nx472, nx482, nx486, nx491
   : std_logic ;
   
   signal DANGLING : std_logic_vector (6 downto 0 );

begin
   imageDMADataOut(15) <= imageDMADataOut_15_EXMPLR ;
   imageDMADataOut(14) <= imageDMADataOut_15_EXMPLR ;
   imageDMADataOut(13) <= imageDMADataOut_15_EXMPLR ;
   imageDMADataOut(12) <= imageDMADataOut_15_EXMPLR ;
   imageDMADataOut(11) <= imageDMADataOut_15_EXMPLR ;
   imageDMADataOut(10) <= imageDMADataOut_15_EXMPLR ;
   imageDMADataOut(9) <= imageDMADataOut_15_EXMPLR ;
   imageDMADataOut(8) <= imageDMADataOut_15_EXMPLR ;
   imageDMADataOut(7) <= imageDMADataOut_15_EXMPLR ;
   imageDMADataOut(6) <= imageDMADataOut_15_EXMPLR ;
   imageDMADataOut(5) <= imageDMADataOut_15_EXMPLR ;
   imageDMADataOut(4) <= imageDMADataOut_15_EXMPLR ;
   imageDMADataOut(3) <= imageDMADataOut_15_EXMPLR ;
   imageDMADataOut(2) <= imageDMADataOut_15_EXMPLR ;
   imageDMADataOut(1) <= imageDMADataOut_15_EXMPLR ;
   imageDMADataOut(0) <= imageDMADataOut_0_EXMPLR ;
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
      CNNDMADataOut(1), dataOut(0)=>CNNDMADataOut(0), addressOut(12)=>
      CNNDMAAddressOut(12), addressOut(11)=>CNNDMAAddressOut(11), 
      addressOut(10)=>CNNDMAAddressOut(10), addressOut(9)=>
      CNNDMAAddressOut(9), addressOut(8)=>CNNDMAAddressOut(8), addressOut(7)
      =>CNNDMAAddressOut(7), addressOut(6)=>CNNDMAAddressOut(6), 
      addressOut(5)=>CNNDMAAddressOut(5), addressOut(4)=>CNNDMAAddressOut(4), 
      addressOut(3)=>CNNDMAAddressOut(3), addressOut(2)=>CNNDMAAddressOut(2), 
      addressOut(1)=>CNNDMAAddressOut(1), addressOut(0)=>CNNDMAAddressOut(0)
   );
   io_Interface : IOInterface_16_4 port map ( Din(15)=>din(15), Din(14)=>
      din(14), Din(13)=>din(13), Din(12)=>din(12), Din(11)=>din(11), Din(10)
      =>din(10), Din(9)=>din(9), Din(8)=>din(8), Din(7)=>din(7), Din(6)=>
      din(6), Din(5)=>din(5), Din(4)=>din(4), Din(3)=>din(3), Din(2)=>din(2), 
      Din(1)=>din(1), Din(0)=>din(0), INTR=>INTR, clk=>clk, rst=>rst, 
      globalCounterEnable=>io_globalCounterEnable, globalCounterLoad=>
      io_globalCounterLoad, zeroState=>io_zeroState, Q(15)=>
      interfaceOutput_15, Q(14)=>interfaceOutput_14, Q(13)=>
      interfaceOutput_13, Q(12)=>interfaceOutput_12, Q(11)=>
      interfaceOutput_11, Q(10)=>interfaceOutput_10, Q(9)=>interfaceOutput_9, 
      Q(8)=>interfaceOutput_8, Q(7)=>interfaceOutput_7, Q(6)=>
      interfaceOutput_6, Q(5)=>interfaceOutput_5, Q(4)=>interfaceOutput_4, 
      Q(3)=>interfaceOutput_3, Q(2)=>interfaceOutput_2, Q(1)=>
      interfaceOutput_1, Q(0)=>interfaceOutput_0, result(3)=>result(3), 
      result(2)=>result(2), result(1)=>result(1), result(0)=>result(0));
   io_Controller : Controller_16_4 port map ( doneDMAFC=>doneDMAFC, 
      doneDMACNN=>doneDMACNN, doneDMAImage=>doneDMAImage, INTR=>INTR, load=>
      load, clk=>clk, processing=>imageDMADataOut_15_EXMPLR, imageOrCNN=>
      imageOrCNN, zeroState=>io_zeroState, decompZeroState=>decompZeroState, 
      rst=>rst, INTRDelayed=>INTRDelayed, globalCounterLoad=>
      io_globalCounterLoad, imageLoad=>imageLoad, imageRegisterEnable=>
      imageRegisterEnable, imageRamEnable=>imgRamWrite, CNNRegisterEnable=>
      CNNRegisterEnable, CNNRamEnable=>CNNRamWrite, FCRegisterEnable=>
      DANGLING(0), FCRamEnable=>FCRamWrite, busy=>busy, doneWithPhase=>
      doneWithPhase, interfaceRegEnable=>DANGLING(1), interfaceMuxSel=>
      DANGLING(2), interfaceMuxEnable=>DANGLING(3), CNNCounterEnable=>
      CNNCounterEnable, FCCounterEnable=>DANGLING(4), 
      decompDecrementorEnable=>decompDecrementorEnable, imageCounterEnable=>
      imageCounterEnable, globalCounterEnable=>io_globalCounterEnable, toCNN
      =>DANGLING(5), toFC=>DANGLING(6));
   decomp_Counter : DownCounterAsyncLoad_6 port map ( loadData(5)=>
      interfaceOutput_5, loadData(4)=>interfaceOutput_4, loadData(3)=>
      interfaceOutput_3, loadData(2)=>interfaceOutput_2, loadData(1)=>
      interfaceOutput_1, loadData(0)=>interfaceOutput_0, en=>
      decompDecrementorEnable, load=>INTRDelayed, rst=>rst, clk=>clk, 
      counterOutput(5)=>decomp_countOut_5, counterOutput(4)=>
      decomp_countOut_4, counterOutput(3)=>decomp_countOut_3, 
      counterOutput(2)=>decomp_countOut_2, counterOutput(1)=>
      decomp_countOut_1, counterOutput(0)=>decomp_countOut_0);
   imageDMA_addressCounter : UpCounterAsyncLoad_13 port map ( loadData(12)=>
      imageDMADataOut_15_EXMPLR, loadData(11)=>imageDMADataOut_15_EXMPLR, 
      loadData(10)=>imageDMADataOut_15_EXMPLR, loadData(9)=>
      interfaceOutput_15, loadData(8)=>interfaceOutput_14, loadData(7)=>
      interfaceOutput_13, loadData(6)=>interfaceOutput_12, loadData(5)=>
      interfaceOutput_11, loadData(4)=>interfaceOutput_10, loadData(3)=>
      interfaceOutput_9, loadData(2)=>interfaceOutput_8, loadData(1)=>
      interfaceOutput_7, loadData(0)=>interfaceOutput_6, en=>
      imageCounterEnable, load=>INTRDelayed, rst=>rst, clk=>clk, 
      counterOutput(12)=>imageDMAAddressOut(12), counterOutput(11)=>
      imageDMAAddressOut(11), counterOutput(10)=>imageDMAAddressOut(10), 
      counterOutput(9)=>imageDMAAddressOut(9), counterOutput(8)=>
      imageDMAAddressOut(8), counterOutput(7)=>imageDMAAddressOut(7), 
      counterOutput(6)=>imageDMAAddressOut(6), counterOutput(5)=>
      imageDMAAddressOut(5), counterOutput(4)=>imageDMAAddressOut(4), 
      counterOutput(3)=>imageDMAAddressOut(3), counterOutput(2)=>
      imageDMAAddressOut(2), counterOutput(1)=>imageDMAAddressOut(1), 
      counterOutput(0)=>imageDMAAddressOut(0));
   ix487 : fake_vcc port map ( Y=>nx486);
   ix454 : fake_gnd port map ( Y=>imageDMADataOut_15_EXMPLR);
   ix29 : nor04 port map ( Y=>decompZeroState, A0=>decomp_countOut_3, A1=>
      decomp_countOut_5, A2=>decomp_countOut_4, A3=>nx491);
   ix492 : or03 port map ( Y=>nx491, A0=>decomp_countOut_1, A1=>
      decomp_countOut_2, A2=>decomp_countOut_0);
   tri_FCRamDin_0 : tri01 port map ( Y=>FCRamDin(0), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_1 : tri01 port map ( Y=>FCRamDin(1), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_2 : tri01 port map ( Y=>FCRamDin(2), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_3 : tri01 port map ( Y=>FCRamDin(3), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_4 : tri01 port map ( Y=>FCRamDin(4), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_5 : tri01 port map ( Y=>FCRamDin(5), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_6 : tri01 port map ( Y=>FCRamDin(6), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_7 : tri01 port map ( Y=>FCRamDin(7), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_8 : tri01 port map ( Y=>FCRamDin(8), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_9 : tri01 port map ( Y=>FCRamDin(9), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_10 : tri01 port map ( Y=>FCRamDin(10), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_11 : tri01 port map ( Y=>FCRamDin(11), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_12 : tri01 port map ( Y=>FCRamDin(12), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_13 : tri01 port map ( Y=>FCRamDin(13), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_14 : tri01 port map ( Y=>FCRamDin(14), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_15 : tri01 port map ( Y=>FCRamDin(15), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_16 : tri01 port map ( Y=>FCRamDin(16), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_17 : tri01 port map ( Y=>FCRamDin(17), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_18 : tri01 port map ( Y=>FCRamDin(18), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_19 : tri01 port map ( Y=>FCRamDin(19), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_20 : tri01 port map ( Y=>FCRamDin(20), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_21 : tri01 port map ( Y=>FCRamDin(21), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_22 : tri01 port map ( Y=>FCRamDin(22), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_23 : tri01 port map ( Y=>FCRamDin(23), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_24 : tri01 port map ( Y=>FCRamDin(24), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_25 : tri01 port map ( Y=>FCRamDin(25), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_26 : tri01 port map ( Y=>FCRamDin(26), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_27 : tri01 port map ( Y=>FCRamDin(27), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_28 : tri01 port map ( Y=>FCRamDin(28), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_29 : tri01 port map ( Y=>FCRamDin(29), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_30 : tri01 port map ( Y=>FCRamDin(30), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_31 : tri01 port map ( Y=>FCRamDin(31), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_32 : tri01 port map ( Y=>FCRamDin(32), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_33 : tri01 port map ( Y=>FCRamDin(33), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_34 : tri01 port map ( Y=>FCRamDin(34), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_35 : tri01 port map ( Y=>FCRamDin(35), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_36 : tri01 port map ( Y=>FCRamDin(36), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_37 : tri01 port map ( Y=>FCRamDin(37), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_38 : tri01 port map ( Y=>FCRamDin(38), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_39 : tri01 port map ( Y=>FCRamDin(39), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_40 : tri01 port map ( Y=>FCRamDin(40), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_41 : tri01 port map ( Y=>FCRamDin(41), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_42 : tri01 port map ( Y=>FCRamDin(42), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_43 : tri01 port map ( Y=>FCRamDin(43), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_44 : tri01 port map ( Y=>FCRamDin(44), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_45 : tri01 port map ( Y=>FCRamDin(45), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_46 : tri01 port map ( Y=>FCRamDin(46), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_47 : tri01 port map ( Y=>FCRamDin(47), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_48 : tri01 port map ( Y=>FCRamDin(48), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_49 : tri01 port map ( Y=>FCRamDin(49), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_50 : tri01 port map ( Y=>FCRamDin(50), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_51 : tri01 port map ( Y=>FCRamDin(51), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_52 : tri01 port map ( Y=>FCRamDin(52), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_53 : tri01 port map ( Y=>FCRamDin(53), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_54 : tri01 port map ( Y=>FCRamDin(54), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_55 : tri01 port map ( Y=>FCRamDin(55), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_56 : tri01 port map ( Y=>FCRamDin(56), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_57 : tri01 port map ( Y=>FCRamDin(57), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_58 : tri01 port map ( Y=>FCRamDin(58), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_59 : tri01 port map ( Y=>FCRamDin(59), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_60 : tri01 port map ( Y=>FCRamDin(60), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_61 : tri01 port map ( Y=>FCRamDin(61), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_62 : tri01 port map ( Y=>FCRamDin(62), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_63 : tri01 port map ( Y=>FCRamDin(63), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_64 : tri01 port map ( Y=>FCRamDin(64), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_65 : tri01 port map ( Y=>FCRamDin(65), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_66 : tri01 port map ( Y=>FCRamDin(66), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_67 : tri01 port map ( Y=>FCRamDin(67), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_68 : tri01 port map ( Y=>FCRamDin(68), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_69 : tri01 port map ( Y=>FCRamDin(69), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_70 : tri01 port map ( Y=>FCRamDin(70), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_71 : tri01 port map ( Y=>FCRamDin(71), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_72 : tri01 port map ( Y=>FCRamDin(72), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_73 : tri01 port map ( Y=>FCRamDin(73), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_74 : tri01 port map ( Y=>FCRamDin(74), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_75 : tri01 port map ( Y=>FCRamDin(75), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_76 : tri01 port map ( Y=>FCRamDin(76), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_77 : tri01 port map ( Y=>FCRamDin(77), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_78 : tri01 port map ( Y=>FCRamDin(78), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamDin_79 : tri01 port map ( Y=>FCRamDin(79), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamAddress_0 : tri01 port map ( Y=>FCRamAddress(0), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamAddress_1 : tri01 port map ( Y=>FCRamAddress(1), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamAddress_2 : tri01 port map ( Y=>FCRamAddress(2), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamAddress_3 : tri01 port map ( Y=>FCRamAddress(3), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamAddress_4 : tri01 port map ( Y=>FCRamAddress(4), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamAddress_5 : tri01 port map ( Y=>FCRamAddress(5), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamAddress_6 : tri01 port map ( Y=>FCRamAddress(6), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamAddress_7 : tri01 port map ( Y=>FCRamAddress(7), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamAddress_8 : tri01 port map ( Y=>FCRamAddress(8), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamAddress_9 : tri01 port map ( Y=>FCRamAddress(9), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamAddress_10 : tri01 port map ( Y=>FCRamAddress(10), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamAddress_11 : tri01 port map ( Y=>FCRamAddress(11), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamAddress_12 : tri01 port map ( Y=>FCRamAddress(12), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamAddress_13 : tri01 port map ( Y=>FCRamAddress(13), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamAddress_14 : tri01 port map ( Y=>FCRamAddress(14), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   tri_FCRamAddress_15 : tri01 port map ( Y=>FCRamAddress(15), A=>nx486, E=>
      imageDMADataOut_15_EXMPLR);
   imageDMA_MyReg_reg_Q_0 : dffr port map ( Q=>imageDMADataOut_0_EXMPLR, QB
      =>OPEN, D=>nx482, CLK=>clk, R=>rst);
   ix483 : mux21_ni port map ( Y=>nx482, A0=>imageDMADataOut_0_EXMPLR, A1=>
      decompDataOut_0, S0=>imageRegisterEnable);
   decomp_MyReg_reg_Q_0 : dffr port map ( Q=>decompDataOut_0, QB=>OPEN, D=>
      nx472, CLK=>clk, R=>rst);
   ix473 : or02 port map ( Y=>nx472, A0=>decompDataOut_0, A1=>imageLoad);

end IOChipArch ;


