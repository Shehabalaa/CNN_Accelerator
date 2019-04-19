
-- 
-- Definition of  DMACNN
-- 
--      Fri Apr 19 16:03:46 2019
--      
--      LeonardoSpectrum Level 3, 2018a.2
-- 

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

architecture RegWithLoadArch_unfold_3197 of RegWithLoad_16 is
   signal Q_15_EXMPLR, Q_14_EXMPLR, Q_13_EXMPLR, Q_12_EXMPLR, Q_11_EXMPLR, 
      Q_10_EXMPLR, Q_9_EXMPLR, Q_8_EXMPLR, Q_7_EXMPLR, Q_6_EXMPLR, 
      Q_5_EXMPLR, Q_4_EXMPLR, Q_3_EXMPLR, Q_2_EXMPLR, Q_1_EXMPLR, Q_0_EXMPLR, 
      nx126, nx136, nx146, nx156, nx166, nx176, nx186, nx196, nx206, nx216, 
      nx226, nx236, nx246, nx256, nx266, nx276: std_logic ;

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
   reg_Q_0 : dffr port map ( Q=>Q_0_EXMPLR, QB=>OPEN, D=>nx126, CLK=>clk, R
      =>rst);
   ix127 : mux21_ni port map ( Y=>nx126, A0=>Q_0_EXMPLR, A1=>D(0), S0=>en);
   reg_Q_1 : dffr port map ( Q=>Q_1_EXMPLR, QB=>OPEN, D=>nx136, CLK=>clk, R
      =>rst);
   ix137 : mux21_ni port map ( Y=>nx136, A0=>Q_1_EXMPLR, A1=>D(1), S0=>en);
   reg_Q_2 : dffr port map ( Q=>Q_2_EXMPLR, QB=>OPEN, D=>nx146, CLK=>clk, R
      =>rst);
   ix147 : mux21_ni port map ( Y=>nx146, A0=>Q_2_EXMPLR, A1=>D(2), S0=>en);
   reg_Q_3 : dffr port map ( Q=>Q_3_EXMPLR, QB=>OPEN, D=>nx156, CLK=>clk, R
      =>rst);
   ix157 : mux21_ni port map ( Y=>nx156, A0=>Q_3_EXMPLR, A1=>D(3), S0=>en);
   reg_Q_4 : dffr port map ( Q=>Q_4_EXMPLR, QB=>OPEN, D=>nx166, CLK=>clk, R
      =>rst);
   ix167 : mux21_ni port map ( Y=>nx166, A0=>Q_4_EXMPLR, A1=>D(4), S0=>en);
   reg_Q_5 : dffr port map ( Q=>Q_5_EXMPLR, QB=>OPEN, D=>nx176, CLK=>clk, R
      =>rst);
   ix177 : mux21_ni port map ( Y=>nx176, A0=>Q_5_EXMPLR, A1=>D(5), S0=>en);
   reg_Q_6 : dffr port map ( Q=>Q_6_EXMPLR, QB=>OPEN, D=>nx186, CLK=>clk, R
      =>rst);
   ix187 : mux21_ni port map ( Y=>nx186, A0=>Q_6_EXMPLR, A1=>D(6), S0=>en);
   reg_Q_7 : dffr port map ( Q=>Q_7_EXMPLR, QB=>OPEN, D=>nx196, CLK=>clk, R
      =>rst);
   ix197 : mux21_ni port map ( Y=>nx196, A0=>Q_7_EXMPLR, A1=>D(7), S0=>en);
   reg_Q_8 : dffr port map ( Q=>Q_8_EXMPLR, QB=>OPEN, D=>nx206, CLK=>clk, R
      =>rst);
   ix207 : mux21_ni port map ( Y=>nx206, A0=>Q_8_EXMPLR, A1=>D(8), S0=>en);
   reg_Q_9 : dffr port map ( Q=>Q_9_EXMPLR, QB=>OPEN, D=>nx216, CLK=>clk, R
      =>rst);
   ix217 : mux21_ni port map ( Y=>nx216, A0=>Q_9_EXMPLR, A1=>D(9), S0=>en);
   reg_Q_10 : dffr port map ( Q=>Q_10_EXMPLR, QB=>OPEN, D=>nx226, CLK=>clk, 
      R=>rst);
   ix227 : mux21_ni port map ( Y=>nx226, A0=>Q_10_EXMPLR, A1=>D(10), S0=>en
   );
   reg_Q_11 : dffr port map ( Q=>Q_11_EXMPLR, QB=>OPEN, D=>nx236, CLK=>clk, 
      R=>rst);
   ix237 : mux21_ni port map ( Y=>nx236, A0=>Q_11_EXMPLR, A1=>D(11), S0=>en
   );
   reg_Q_12 : dffr port map ( Q=>Q_12_EXMPLR, QB=>OPEN, D=>nx246, CLK=>clk, 
      R=>rst);
   ix247 : mux21_ni port map ( Y=>nx246, A0=>Q_12_EXMPLR, A1=>D(12), S0=>en
   );
   reg_Q_13 : dffr port map ( Q=>Q_13_EXMPLR, QB=>OPEN, D=>nx256, CLK=>clk, 
      R=>rst);
   ix257 : mux21_ni port map ( Y=>nx256, A0=>Q_13_EXMPLR, A1=>D(13), S0=>en
   );
   reg_Q_14 : dffr port map ( Q=>Q_14_EXMPLR, QB=>OPEN, D=>nx266, CLK=>clk, 
      R=>rst);
   ix267 : mux21_ni port map ( Y=>nx266, A0=>Q_14_EXMPLR, A1=>D(14), S0=>en
   );
   reg_Q_15 : dffr port map ( Q=>Q_15_EXMPLR, QB=>OPEN, D=>nx276, CLK=>clk, 
      R=>rst);
   ix277 : mux21_ni port map ( Y=>nx276, A0=>Q_15_EXMPLR, A1=>D(15), S0=>en
   );
end RegWithLoadArch_unfold_3197 ;

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
      addressOut : OUT std_logic_vector (15 DOWNTO 0)) ;
end DMACNN ;

architecture DMACNN of DMACNN is
   component RegWithLoad_16
      port (
         D : IN std_logic_vector (15 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         load : IN std_logic ;
         Q : OUT std_logic_vector (15 DOWNTO 0)) ;
   end component ;
   signal dataOut_15_EXMPLR, dataOut_14_EXMPLR, dataOut_13_EXMPLR, 
      dataOut_12_EXMPLR, dataOut_11_EXMPLR, dataOut_10_EXMPLR, 
      dataOut_9_EXMPLR, dataOut_8_EXMPLR, dataOut_7_EXMPLR, dataOut_6_EXMPLR, 
      dataOut_5_EXMPLR, dataOut_4_EXMPLR, dataOut_3_EXMPLR, dataOut_2_EXMPLR, 
      dataOut_1_EXMPLR, dataOut_0_EXMPLR, addressOut_15_EXMPLR, 
      addressOut_14_EXMPLR, addressOut_13_EXMPLR, addressOut_12_EXMPLR, 
      addressOut_11_EXMPLR, addressOut_10_EXMPLR, addressOut_9_EXMPLR, 
      addressOut_8_EXMPLR, addressOut_7_EXMPLR, addressOut_6_EXMPLR, 
      addressOut_5_EXMPLR, addressOut_4_EXMPLR, addressOut_3_EXMPLR, 
      addressOut_2_EXMPLR, addressOut_1_EXMPLR, addressOut_0_EXMPLR, 
      addressCounter_adderOutput_15, addressCounter_adderOutput_14, 
      addressCounter_adderOutput_13, addressCounter_adderOutput_12, 
      addressCounter_adderOutput_11, addressCounter_adderOutput_10, 
      addressCounter_adderOutput_9, addressCounter_adderOutput_8, 
      addressCounter_adderOutput_7, addressCounter_adderOutput_6, 
      addressCounter_adderOutput_5, addressCounter_adderOutput_4, 
      addressCounter_adderOutput_3, addressCounter_adderOutput_2, 
      addressCounter_adderOutput_1, addressCounter_adderOutput_0, 
      addressCounterIn_15, nx70, nx74, nx78, nx82, nx86, nx90, nx143, nx153, 
      nx163, nx173, nx183, nx193, nx203, nx213, nx223, nx233, nx243, nx253, 
      nx263, nx273, nx283, nx293, nx307, nx310, nx313, nx318, nx323, nx328, 
      nx333, nx338: std_logic ;

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
   addressOut(15) <= addressOut_15_EXMPLR ;
   addressOut(14) <= addressOut_14_EXMPLR ;
   addressOut(13) <= addressOut_13_EXMPLR ;
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
   addressCounter_counterReg : RegWithLoad_16 port map ( D(15)=>
      addressCounter_adderOutput_15, D(14)=>addressCounter_adderOutput_14, 
      D(13)=>addressCounter_adderOutput_13, D(12)=>
      addressCounter_adderOutput_12, D(11)=>addressCounter_adderOutput_11, 
      D(10)=>addressCounter_adderOutput_10, D(9)=>
      addressCounter_adderOutput_9, D(8)=>addressCounter_adderOutput_8, D(7)
      =>addressCounter_adderOutput_7, D(6)=>addressCounter_adderOutput_6, 
      D(5)=>addressCounter_adderOutput_5, D(4)=>addressCounter_adderOutput_4, 
      D(3)=>addressCounter_adderOutput_3, D(2)=>addressCounter_adderOutput_2, 
      D(1)=>addressCounter_adderOutput_1, D(0)=>addressCounter_adderOutput_0, 
      en=>enableCNNCounter, clk=>clk, rst=>rst, load=>addressCounterIn_15, 
      Q(15)=>addressOut_15_EXMPLR, Q(14)=>addressOut_14_EXMPLR, Q(13)=>
      addressOut_13_EXMPLR, Q(12)=>addressOut_12_EXMPLR, Q(11)=>
      addressOut_11_EXMPLR, Q(10)=>addressOut_10_EXMPLR, Q(9)=>
      addressOut_9_EXMPLR, Q(8)=>addressOut_8_EXMPLR, Q(7)=>
      addressOut_7_EXMPLR, Q(6)=>addressOut_6_EXMPLR, Q(5)=>
      addressOut_5_EXMPLR, Q(4)=>addressOut_4_EXMPLR, Q(3)=>
      addressOut_3_EXMPLR, Q(2)=>addressOut_2_EXMPLR, Q(1)=>
      addressOut_1_EXMPLR, Q(0)=>addressOut_0_EXMPLR);
   ix84 : fake_gnd port map ( Y=>addressCounterIn_15);
   ix304 : inv01 port map ( Y=>addressCounter_adderOutput_0, A=>
      addressOut_0_EXMPLR);
   ix177 : xor2 port map ( Y=>addressCounter_adderOutput_1, A0=>
      addressOut_1_EXMPLR, A1=>addressOut_0_EXMPLR);
   ix171 : xnor2 port map ( Y=>addressCounter_adderOutput_2, A0=>
      addressOut_2_EXMPLR, A1=>nx307);
   ix308 : nand02 port map ( Y=>nx307, A0=>addressOut_1_EXMPLR, A1=>
      addressOut_0_EXMPLR);
   ix165 : xnor2 port map ( Y=>addressCounter_adderOutput_3, A0=>
      addressOut_3_EXMPLR, A1=>nx310);
   ix311 : nand03 port map ( Y=>nx310, A0=>addressOut_2_EXMPLR, A1=>
      addressOut_1_EXMPLR, A2=>addressOut_0_EXMPLR);
   ix159 : xnor2 port map ( Y=>addressCounter_adderOutput_4, A0=>
      addressOut_4_EXMPLR, A1=>nx313);
   ix314 : nand04 port map ( Y=>nx313, A0=>addressOut_3_EXMPLR, A1=>
      addressOut_2_EXMPLR, A2=>addressOut_1_EXMPLR, A3=>addressOut_0_EXMPLR
   );
   ix153 : xor2 port map ( Y=>addressCounter_adderOutput_5, A0=>
      addressOut_5_EXMPLR, A1=>nx70);
   ix71 : nor02ii port map ( Y=>nx70, A0=>nx313, A1=>addressOut_4_EXMPLR);
   ix147 : xnor2 port map ( Y=>addressCounter_adderOutput_6, A0=>
      addressOut_6_EXMPLR, A1=>nx318);
   ix319 : nand02 port map ( Y=>nx318, A0=>addressOut_5_EXMPLR, A1=>nx70);
   ix141 : xor2 port map ( Y=>addressCounter_adderOutput_7, A0=>
      addressOut_7_EXMPLR, A1=>nx74);
   ix75 : nor02ii port map ( Y=>nx74, A0=>nx318, A1=>addressOut_6_EXMPLR);
   ix135 : xnor2 port map ( Y=>addressCounter_adderOutput_8, A0=>
      addressOut_8_EXMPLR, A1=>nx323);
   ix324 : nand02 port map ( Y=>nx323, A0=>addressOut_7_EXMPLR, A1=>nx74);
   ix129 : xor2 port map ( Y=>addressCounter_adderOutput_9, A0=>
      addressOut_9_EXMPLR, A1=>nx78);
   ix79 : nor02ii port map ( Y=>nx78, A0=>nx323, A1=>addressOut_8_EXMPLR);
   ix123 : xnor2 port map ( Y=>addressCounter_adderOutput_10, A0=>
      addressOut_10_EXMPLR, A1=>nx328);
   ix329 : nand02 port map ( Y=>nx328, A0=>addressOut_9_EXMPLR, A1=>nx78);
   ix117 : xor2 port map ( Y=>addressCounter_adderOutput_11, A0=>
      addressOut_11_EXMPLR, A1=>nx82);
   ix83 : nor02ii port map ( Y=>nx82, A0=>nx328, A1=>addressOut_10_EXMPLR);
   ix111 : xnor2 port map ( Y=>addressCounter_adderOutput_12, A0=>
      addressOut_12_EXMPLR, A1=>nx333);
   ix334 : nand02 port map ( Y=>nx333, A0=>addressOut_11_EXMPLR, A1=>nx82);
   ix105 : xor2 port map ( Y=>addressCounter_adderOutput_13, A0=>
      addressOut_13_EXMPLR, A1=>nx86);
   ix87 : nor02ii port map ( Y=>nx86, A0=>nx333, A1=>addressOut_12_EXMPLR);
   ix99 : xnor2 port map ( Y=>addressCounter_adderOutput_14, A0=>
      addressOut_14_EXMPLR, A1=>nx338);
   ix339 : nand02 port map ( Y=>nx338, A0=>addressOut_13_EXMPLR, A1=>nx86);
   ix93 : xor2 port map ( Y=>addressCounter_adderOutput_15, A0=>
      addressOut_15_EXMPLR, A1=>nx90);
   ix91 : nor02ii port map ( Y=>nx90, A0=>nx338, A1=>addressOut_14_EXMPLR);
   MyReg_reg_Q_0 : dffr port map ( Q=>dataOut_0_EXMPLR, QB=>OPEN, D=>nx143, 
      CLK=>clk, R=>rst);
   ix144 : mux21_ni port map ( Y=>nx143, A0=>dataOut_0_EXMPLR, A1=>dataIn(0), 
      S0=>enableCNNRegister);
   MyReg_reg_Q_1 : dffr port map ( Q=>dataOut_1_EXMPLR, QB=>OPEN, D=>nx153, 
      CLK=>clk, R=>rst);
   ix154 : mux21_ni port map ( Y=>nx153, A0=>dataOut_1_EXMPLR, A1=>dataIn(1), 
      S0=>enableCNNRegister);
   MyReg_reg_Q_2 : dffr port map ( Q=>dataOut_2_EXMPLR, QB=>OPEN, D=>nx163, 
      CLK=>clk, R=>rst);
   ix164 : mux21_ni port map ( Y=>nx163, A0=>dataOut_2_EXMPLR, A1=>dataIn(2), 
      S0=>enableCNNRegister);
   MyReg_reg_Q_3 : dffr port map ( Q=>dataOut_3_EXMPLR, QB=>OPEN, D=>nx173, 
      CLK=>clk, R=>rst);
   ix174 : mux21_ni port map ( Y=>nx173, A0=>dataOut_3_EXMPLR, A1=>dataIn(3), 
      S0=>enableCNNRegister);
   MyReg_reg_Q_4 : dffr port map ( Q=>dataOut_4_EXMPLR, QB=>OPEN, D=>nx183, 
      CLK=>clk, R=>rst);
   ix184 : mux21_ni port map ( Y=>nx183, A0=>dataOut_4_EXMPLR, A1=>dataIn(4), 
      S0=>enableCNNRegister);
   MyReg_reg_Q_5 : dffr port map ( Q=>dataOut_5_EXMPLR, QB=>OPEN, D=>nx193, 
      CLK=>clk, R=>rst);
   ix194 : mux21_ni port map ( Y=>nx193, A0=>dataOut_5_EXMPLR, A1=>dataIn(5), 
      S0=>enableCNNRegister);
   MyReg_reg_Q_6 : dffr port map ( Q=>dataOut_6_EXMPLR, QB=>OPEN, D=>nx203, 
      CLK=>clk, R=>rst);
   ix204 : mux21_ni port map ( Y=>nx203, A0=>dataOut_6_EXMPLR, A1=>dataIn(6), 
      S0=>enableCNNRegister);
   MyReg_reg_Q_7 : dffr port map ( Q=>dataOut_7_EXMPLR, QB=>OPEN, D=>nx213, 
      CLK=>clk, R=>rst);
   ix214 : mux21_ni port map ( Y=>nx213, A0=>dataOut_7_EXMPLR, A1=>dataIn(7), 
      S0=>enableCNNRegister);
   MyReg_reg_Q_8 : dffr port map ( Q=>dataOut_8_EXMPLR, QB=>OPEN, D=>nx223, 
      CLK=>clk, R=>rst);
   ix224 : mux21_ni port map ( Y=>nx223, A0=>dataOut_8_EXMPLR, A1=>dataIn(8), 
      S0=>enableCNNRegister);
   MyReg_reg_Q_9 : dffr port map ( Q=>dataOut_9_EXMPLR, QB=>OPEN, D=>nx233, 
      CLK=>clk, R=>rst);
   ix234 : mux21_ni port map ( Y=>nx233, A0=>dataOut_9_EXMPLR, A1=>dataIn(9), 
      S0=>enableCNNRegister);
   MyReg_reg_Q_10 : dffr port map ( Q=>dataOut_10_EXMPLR, QB=>OPEN, D=>nx243, 
      CLK=>clk, R=>rst);
   ix244 : mux21_ni port map ( Y=>nx243, A0=>dataOut_10_EXMPLR, A1=>
      dataIn(10), S0=>enableCNNRegister);
   MyReg_reg_Q_11 : dffr port map ( Q=>dataOut_11_EXMPLR, QB=>OPEN, D=>nx253, 
      CLK=>clk, R=>rst);
   ix254 : mux21_ni port map ( Y=>nx253, A0=>dataOut_11_EXMPLR, A1=>
      dataIn(11), S0=>enableCNNRegister);
   MyReg_reg_Q_12 : dffr port map ( Q=>dataOut_12_EXMPLR, QB=>OPEN, D=>nx263, 
      CLK=>clk, R=>rst);
   ix264 : mux21_ni port map ( Y=>nx263, A0=>dataOut_12_EXMPLR, A1=>
      dataIn(12), S0=>enableCNNRegister);
   MyReg_reg_Q_13 : dffr port map ( Q=>dataOut_13_EXMPLR, QB=>OPEN, D=>nx273, 
      CLK=>clk, R=>rst);
   ix274 : mux21_ni port map ( Y=>nx273, A0=>dataOut_13_EXMPLR, A1=>
      dataIn(13), S0=>enableCNNRegister);
   MyReg_reg_Q_14 : dffr port map ( Q=>dataOut_14_EXMPLR, QB=>OPEN, D=>nx283, 
      CLK=>clk, R=>rst);
   ix284 : mux21_ni port map ( Y=>nx283, A0=>dataOut_14_EXMPLR, A1=>
      dataIn(14), S0=>enableCNNRegister);
   MyReg_reg_Q_15 : dffr port map ( Q=>dataOut_15_EXMPLR, QB=>OPEN, D=>nx293, 
      CLK=>clk, R=>rst);
   ix294 : mux21_ni port map ( Y=>nx293, A0=>dataOut_15_EXMPLR, A1=>
      dataIn(15), S0=>enableCNNRegister);
end DMACNN ;


