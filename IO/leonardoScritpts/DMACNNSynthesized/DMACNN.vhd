
-- 
-- Definition of  DMACNN
-- 
--      Mon Apr 22 17:13:56 2019
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
      nx180, nx190, nx200, nx210, nx220, nx230, nx240: std_logic ;

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
   ix121 : mux21_ni port map ( Y=>nx120, A0=>Q_0_EXMPLR, A1=>D(0), S0=>en);
   reg_Q_1 : dffr port map ( Q=>Q_1_EXMPLR, QB=>OPEN, D=>nx130, CLK=>clk, R
      =>rst);
   ix131 : mux21_ni port map ( Y=>nx130, A0=>Q_1_EXMPLR, A1=>D(1), S0=>en);
   reg_Q_2 : dffr port map ( Q=>Q_2_EXMPLR, QB=>OPEN, D=>nx140, CLK=>clk, R
      =>rst);
   ix141 : mux21_ni port map ( Y=>nx140, A0=>Q_2_EXMPLR, A1=>D(2), S0=>en);
   reg_Q_3 : dffr port map ( Q=>Q_3_EXMPLR, QB=>OPEN, D=>nx150, CLK=>clk, R
      =>rst);
   ix151 : mux21_ni port map ( Y=>nx150, A0=>Q_3_EXMPLR, A1=>D(3), S0=>en);
   reg_Q_4 : dffr port map ( Q=>Q_4_EXMPLR, QB=>OPEN, D=>nx160, CLK=>clk, R
      =>rst);
   ix161 : mux21_ni port map ( Y=>nx160, A0=>Q_4_EXMPLR, A1=>D(4), S0=>en);
   reg_Q_5 : dffr port map ( Q=>Q_5_EXMPLR, QB=>OPEN, D=>nx170, CLK=>clk, R
      =>rst);
   ix171 : mux21_ni port map ( Y=>nx170, A0=>Q_5_EXMPLR, A1=>D(5), S0=>en);
   reg_Q_6 : dffr port map ( Q=>Q_6_EXMPLR, QB=>OPEN, D=>nx180, CLK=>clk, R
      =>rst);
   ix181 : mux21_ni port map ( Y=>nx180, A0=>Q_6_EXMPLR, A1=>D(6), S0=>en);
   reg_Q_7 : dffr port map ( Q=>Q_7_EXMPLR, QB=>OPEN, D=>nx190, CLK=>clk, R
      =>rst);
   ix191 : mux21_ni port map ( Y=>nx190, A0=>Q_7_EXMPLR, A1=>D(7), S0=>en);
   reg_Q_8 : dffr port map ( Q=>Q_8_EXMPLR, QB=>OPEN, D=>nx200, CLK=>clk, R
      =>rst);
   ix201 : mux21_ni port map ( Y=>nx200, A0=>Q_8_EXMPLR, A1=>D(8), S0=>en);
   reg_Q_9 : dffr port map ( Q=>Q_9_EXMPLR, QB=>OPEN, D=>nx210, CLK=>clk, R
      =>rst);
   ix211 : mux21_ni port map ( Y=>nx210, A0=>Q_9_EXMPLR, A1=>D(9), S0=>en);
   reg_Q_10 : dffr port map ( Q=>Q_10_EXMPLR, QB=>OPEN, D=>nx220, CLK=>clk, 
      R=>rst);
   ix221 : mux21_ni port map ( Y=>nx220, A0=>Q_10_EXMPLR, A1=>D(10), S0=>en
   );
   reg_Q_11 : dffr port map ( Q=>Q_11_EXMPLR, QB=>OPEN, D=>nx230, CLK=>clk, 
      R=>rst);
   ix231 : mux21_ni port map ( Y=>nx230, A0=>Q_11_EXMPLR, A1=>D(11), S0=>en
   );
   reg_Q_12 : dffr port map ( Q=>Q_12_EXMPLR, QB=>OPEN, D=>nx240, CLK=>clk, 
      R=>rst);
   ix241 : mux21_ni port map ( Y=>nx240, A0=>Q_12_EXMPLR, A1=>D(12), S0=>en
   );
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
      nx314, nx319, nx324, nx329: std_logic ;

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
      S0=>enableCNNRegister);
   MyReg_reg_Q_1 : dffr port map ( Q=>dataOut_1_EXMPLR, QB=>OPEN, D=>nx149, 
      CLK=>clk, R=>rst);
   ix150 : mux21_ni port map ( Y=>nx149, A0=>dataOut_1_EXMPLR, A1=>dataIn(1), 
      S0=>enableCNNRegister);
   MyReg_reg_Q_2 : dffr port map ( Q=>dataOut_2_EXMPLR, QB=>OPEN, D=>nx159, 
      CLK=>clk, R=>rst);
   ix160 : mux21_ni port map ( Y=>nx159, A0=>dataOut_2_EXMPLR, A1=>dataIn(2), 
      S0=>enableCNNRegister);
   MyReg_reg_Q_3 : dffr port map ( Q=>dataOut_3_EXMPLR, QB=>OPEN, D=>nx169, 
      CLK=>clk, R=>rst);
   ix170 : mux21_ni port map ( Y=>nx169, A0=>dataOut_3_EXMPLR, A1=>dataIn(3), 
      S0=>enableCNNRegister);
   MyReg_reg_Q_4 : dffr port map ( Q=>dataOut_4_EXMPLR, QB=>OPEN, D=>nx179, 
      CLK=>clk, R=>rst);
   ix180 : mux21_ni port map ( Y=>nx179, A0=>dataOut_4_EXMPLR, A1=>dataIn(4), 
      S0=>enableCNNRegister);
   MyReg_reg_Q_5 : dffr port map ( Q=>dataOut_5_EXMPLR, QB=>OPEN, D=>nx189, 
      CLK=>clk, R=>rst);
   ix190 : mux21_ni port map ( Y=>nx189, A0=>dataOut_5_EXMPLR, A1=>dataIn(5), 
      S0=>enableCNNRegister);
   MyReg_reg_Q_6 : dffr port map ( Q=>dataOut_6_EXMPLR, QB=>OPEN, D=>nx199, 
      CLK=>clk, R=>rst);
   ix200 : mux21_ni port map ( Y=>nx199, A0=>dataOut_6_EXMPLR, A1=>dataIn(6), 
      S0=>enableCNNRegister);
   MyReg_reg_Q_7 : dffr port map ( Q=>dataOut_7_EXMPLR, QB=>OPEN, D=>nx209, 
      CLK=>clk, R=>rst);
   ix210 : mux21_ni port map ( Y=>nx209, A0=>dataOut_7_EXMPLR, A1=>dataIn(7), 
      S0=>enableCNNRegister);
   MyReg_reg_Q_8 : dffr port map ( Q=>dataOut_8_EXMPLR, QB=>OPEN, D=>nx219, 
      CLK=>clk, R=>rst);
   ix220 : mux21_ni port map ( Y=>nx219, A0=>dataOut_8_EXMPLR, A1=>dataIn(8), 
      S0=>enableCNNRegister);
   MyReg_reg_Q_9 : dffr port map ( Q=>dataOut_9_EXMPLR, QB=>OPEN, D=>nx229, 
      CLK=>clk, R=>rst);
   ix230 : mux21_ni port map ( Y=>nx229, A0=>dataOut_9_EXMPLR, A1=>dataIn(9), 
      S0=>enableCNNRegister);
   MyReg_reg_Q_10 : dffr port map ( Q=>dataOut_10_EXMPLR, QB=>OPEN, D=>nx239, 
      CLK=>clk, R=>rst);
   ix240 : mux21_ni port map ( Y=>nx239, A0=>dataOut_10_EXMPLR, A1=>
      dataIn(10), S0=>enableCNNRegister);
   MyReg_reg_Q_11 : dffr port map ( Q=>dataOut_11_EXMPLR, QB=>OPEN, D=>nx249, 
      CLK=>clk, R=>rst);
   ix250 : mux21_ni port map ( Y=>nx249, A0=>dataOut_11_EXMPLR, A1=>
      dataIn(11), S0=>enableCNNRegister);
   MyReg_reg_Q_12 : dffr port map ( Q=>dataOut_12_EXMPLR, QB=>OPEN, D=>nx259, 
      CLK=>clk, R=>rst);
   ix260 : mux21_ni port map ( Y=>nx259, A0=>dataOut_12_EXMPLR, A1=>
      dataIn(12), S0=>enableCNNRegister);
   MyReg_reg_Q_13 : dffr port map ( Q=>dataOut_13_EXMPLR, QB=>OPEN, D=>nx269, 
      CLK=>clk, R=>rst);
   ix270 : mux21_ni port map ( Y=>nx269, A0=>dataOut_13_EXMPLR, A1=>
      dataIn(13), S0=>enableCNNRegister);
   MyReg_reg_Q_14 : dffr port map ( Q=>dataOut_14_EXMPLR, QB=>OPEN, D=>nx279, 
      CLK=>clk, R=>rst);
   ix280 : mux21_ni port map ( Y=>nx279, A0=>dataOut_14_EXMPLR, A1=>
      dataIn(14), S0=>enableCNNRegister);
   MyReg_reg_Q_15 : dffr port map ( Q=>dataOut_15_EXMPLR, QB=>OPEN, D=>nx289, 
      CLK=>clk, R=>rst);
   ix290 : mux21_ni port map ( Y=>nx289, A0=>dataOut_15_EXMPLR, A1=>
      dataIn(15), S0=>enableCNNRegister);
end DMACNN ;


