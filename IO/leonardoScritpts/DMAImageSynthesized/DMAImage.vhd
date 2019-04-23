
-- 
-- Definition of  DMAImage
-- 
--      Mon Apr 22 18:50:39 2019
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

architecture RegWithLoadArch of RegWithLoad_13 is
   signal Q_12_EXMPLR, Q_11_EXMPLR, Q_10_EXMPLR, Q_9_EXMPLR, Q_8_EXMPLR, 
      Q_7_EXMPLR, Q_6_EXMPLR, Q_5_EXMPLR, Q_4_EXMPLR, Q_3_EXMPLR, Q_2_EXMPLR, 
      Q_1_EXMPLR, Q_0_EXMPLR, nx10, nx14, nx22, nx26, nx34, nx38, nx46, nx50, 
      nx58, nx62, nx70, nx74, nx82, nx86, nx94, nx98, nx106, nx110, nx118, 
      nx122, nx130, nx134, nx142, nx146, nx154, nx158, nx341, nx351, nx361, 
      nx371, nx381, nx391, nx401, nx411, nx421, nx431, nx441, nx451, nx461, 
      nx481, nx551, nx553, nx555, nx557, nx559, nx561, nx567, nx569, nx575, 
      nx577, nx579, nx581, nx583, nx585, nx587, nx589, nx591, nx593, nx595, 
      nx597, nx599, nx601, nx603: std_logic ;

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
   ix342 : mux21_ni port map ( Y=>nx341, A0=>Q_0_EXMPLR, A1=>D(0), S0=>en);
   ix11 : oai21 port map ( Y=>nx10, A0=>D(0), A1=>nx559, B0=>nx551);
   ix482 : aoi21 port map ( Y=>nx481, A0=>en, A1=>load, B0=>rst);
   reg_Q_1 : dffsr_ni port map ( Q=>Q_1_EXMPLR, QB=>OPEN, D=>nx351, CLK=>clk, 
      S=>nx26, R=>nx22);
   ix352 : mux21_ni port map ( Y=>nx351, A0=>Q_1_EXMPLR, A1=>D(1), S0=>en);
   ix23 : oai21 port map ( Y=>nx22, A0=>D(1), A1=>nx559, B0=>nx551);
   reg_Q_2 : dffsr_ni port map ( Q=>Q_2_EXMPLR, QB=>OPEN, D=>nx361, CLK=>clk, 
      S=>nx38, R=>nx34);
   ix362 : mux21_ni port map ( Y=>nx361, A0=>Q_2_EXMPLR, A1=>D(2), S0=>en);
   ix35 : oai21 port map ( Y=>nx34, A0=>D(2), A1=>nx559, B0=>nx551);
   reg_Q_3 : dffsr_ni port map ( Q=>Q_3_EXMPLR, QB=>OPEN, D=>nx371, CLK=>clk, 
      S=>nx50, R=>nx46);
   ix372 : mux21_ni port map ( Y=>nx371, A0=>Q_3_EXMPLR, A1=>D(3), S0=>en);
   ix47 : oai21 port map ( Y=>nx46, A0=>D(3), A1=>nx559, B0=>nx553);
   reg_Q_4 : dffsr_ni port map ( Q=>Q_4_EXMPLR, QB=>OPEN, D=>nx381, CLK=>clk, 
      S=>nx62, R=>nx58);
   ix382 : mux21_ni port map ( Y=>nx381, A0=>Q_4_EXMPLR, A1=>D(4), S0=>en);
   ix59 : oai21 port map ( Y=>nx58, A0=>D(4), A1=>nx559, B0=>nx553);
   reg_Q_5 : dffsr_ni port map ( Q=>Q_5_EXMPLR, QB=>OPEN, D=>nx391, CLK=>clk, 
      S=>nx74, R=>nx70);
   ix392 : mux21_ni port map ( Y=>nx391, A0=>Q_5_EXMPLR, A1=>D(5), S0=>en);
   ix71 : oai21 port map ( Y=>nx70, A0=>D(5), A1=>nx559, B0=>nx553);
   reg_Q_6 : dffsr_ni port map ( Q=>Q_6_EXMPLR, QB=>OPEN, D=>nx401, CLK=>clk, 
      S=>nx86, R=>nx82);
   ix402 : mux21_ni port map ( Y=>nx401, A0=>Q_6_EXMPLR, A1=>D(6), S0=>en);
   ix83 : oai21 port map ( Y=>nx82, A0=>D(6), A1=>nx559, B0=>nx553);
   reg_Q_7 : dffsr_ni port map ( Q=>Q_7_EXMPLR, QB=>OPEN, D=>nx411, CLK=>clk, 
      S=>nx98, R=>nx94);
   ix412 : mux21_ni port map ( Y=>nx411, A0=>Q_7_EXMPLR, A1=>D(7), S0=>en);
   ix95 : oai21 port map ( Y=>nx94, A0=>D(7), A1=>nx603, B0=>nx555);
   reg_Q_8 : dffsr_ni port map ( Q=>Q_8_EXMPLR, QB=>OPEN, D=>nx421, CLK=>clk, 
      S=>nx110, R=>nx106);
   ix422 : mux21_ni port map ( Y=>nx421, A0=>Q_8_EXMPLR, A1=>D(8), S0=>en);
   ix107 : oai21 port map ( Y=>nx106, A0=>D(8), A1=>nx603, B0=>nx555);
   reg_Q_9 : dffsr_ni port map ( Q=>Q_9_EXMPLR, QB=>OPEN, D=>nx431, CLK=>clk, 
      S=>nx122, R=>nx118);
   ix432 : mux21_ni port map ( Y=>nx431, A0=>Q_9_EXMPLR, A1=>D(9), S0=>en);
   ix119 : oai21 port map ( Y=>nx118, A0=>D(9), A1=>nx603, B0=>nx555);
   reg_Q_10 : dffsr_ni port map ( Q=>Q_10_EXMPLR, QB=>OPEN, D=>nx441, CLK=>
      clk, S=>nx134, R=>nx130);
   ix442 : mux21_ni port map ( Y=>nx441, A0=>Q_10_EXMPLR, A1=>D(10), S0=>en
   );
   ix131 : oai21 port map ( Y=>nx130, A0=>D(10), A1=>nx603, B0=>nx557);
   reg_Q_11 : dffsr_ni port map ( Q=>Q_11_EXMPLR, QB=>OPEN, D=>nx451, CLK=>
      clk, S=>nx146, R=>nx142);
   ix452 : mux21_ni port map ( Y=>nx451, A0=>Q_11_EXMPLR, A1=>D(11), S0=>en
   );
   ix143 : oai21 port map ( Y=>nx142, A0=>D(11), A1=>nx603, B0=>nx557);
   reg_Q_12 : dffsr_ni port map ( Q=>Q_12_EXMPLR, QB=>OPEN, D=>nx461, CLK=>
      clk, S=>nx158, R=>nx154);
   ix462 : mux21_ni port map ( Y=>nx461, A0=>Q_12_EXMPLR, A1=>D(12), S0=>en
   );
   ix155 : oai21 port map ( Y=>nx154, A0=>D(12), A1=>nx603, B0=>nx557);
   ix550 : inv02 port map ( Y=>nx551, A=>rst);
   ix552 : inv02 port map ( Y=>nx553, A=>rst);
   ix554 : inv02 port map ( Y=>nx555, A=>rst);
   ix556 : inv02 port map ( Y=>nx557, A=>rst);
   ix558 : inv02 port map ( Y=>nx559, A=>nx567);
   ix560 : inv02 port map ( Y=>nx561, A=>nx569);
   ix566 : inv01 port map ( Y=>nx567, A=>nx481);
   ix568 : inv01 port map ( Y=>nx569, A=>nx601);
   ix15 : nor03_2x port map ( Y=>nx14, A0=>nx603, A1=>nx575, A2=>rst);
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
   ix99 : nor03_2x port map ( Y=>nx98, A0=>nx601, A1=>nx589, A2=>rst);
   ix588 : inv01 port map ( Y=>nx589, A=>D(7));
   ix111 : nor03_2x port map ( Y=>nx110, A0=>nx601, A1=>nx591, A2=>rst);
   ix590 : inv01 port map ( Y=>nx591, A=>D(8));
   ix123 : nor03_2x port map ( Y=>nx122, A0=>nx601, A1=>nx593, A2=>rst);
   ix592 : inv01 port map ( Y=>nx593, A=>D(9));
   ix135 : nor03_2x port map ( Y=>nx134, A0=>nx601, A1=>nx595, A2=>rst);
   ix594 : inv01 port map ( Y=>nx595, A=>D(10));
   ix147 : nor03_2x port map ( Y=>nx146, A0=>nx601, A1=>nx597, A2=>rst);
   ix596 : inv01 port map ( Y=>nx597, A=>D(11));
   ix159 : nor03_2x port map ( Y=>nx158, A0=>nx601, A1=>nx599, A2=>rst);
   ix598 : inv01 port map ( Y=>nx599, A=>D(12));
   ix600 : inv02 port map ( Y=>nx601, A=>nx567);
   ix602 : inv02 port map ( Y=>nx603, A=>nx569);
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

architecture UpCounterAsyncLoad_unfold_2844 of UpCounterAsyncLoad_13 is
   component RegWithLoad_13
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
      nx121, nx127, nx129, nx133, nx139, nx141: std_logic ;

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
   counterReg : RegWithLoad_13 port map ( D(12)=>counterInput_12, D(11)=>
      counterInput_11, D(10)=>counterInput_10, D(9)=>counterInput_9, D(8)=>
      counterInput_8, D(7)=>counterInput_7, D(6)=>counterInput_6, D(5)=>
      counterInput_5, D(4)=>counterInput_4, D(3)=>counterInput_3, D(2)=>
      counterInput_2, D(1)=>counterInput_1, D(0)=>counterInput_0, en=>en, 
      clk=>clk, rst=>rst, load=>load, Q(12)=>counterOutput_12_EXMPLR, Q(11)
      =>counterOutput_11_EXMPLR, Q(10)=>counterOutput_10_EXMPLR, Q(9)=>
      counterOutput_9_EXMPLR, Q(8)=>counterOutput_8_EXMPLR, Q(7)=>
      counterOutput_7_EXMPLR, Q(6)=>counterOutput_6_EXMPLR, Q(5)=>
      counterOutput_5_EXMPLR, Q(4)=>counterOutput_4_EXMPLR, Q(3)=>
      counterOutput_3_EXMPLR, Q(2)=>counterOutput_2_EXMPLR, Q(1)=>
      counterOutput_1_EXMPLR, Q(0)=>counterOutput_0_EXMPLR);
   ix57 : oai21 port map ( Y=>counterInput_0, A0=>load, A1=>
      counterOutput_0_EXMPLR, B0=>nx53);
   ix54 : nand02 port map ( Y=>nx53, A0=>loadData(0), A1=>load);
   ix71 : ao22 port map ( Y=>counterInput_1, A0=>loadData(1), A1=>load, B0=>
      nx58, B1=>nx64);
   ix59 : or02 port map ( Y=>nx58, A0=>counterOutput_0_EXMPLR, A1=>
      counterOutput_1_EXMPLR);
   ix65 : aoi21 port map ( Y=>nx64, A0=>counterOutput_1_EXMPLR, A1=>
      counterOutput_0_EXMPLR, B0=>load);
   ix85 : ao21 port map ( Y=>counterInput_2, A0=>loadData(2), A1=>load, B0=>
      nx80);
   ix81 : nor03_2x port map ( Y=>nx80, A0=>nx63, A1=>load, A2=>nx2);
   ix64 : aoi21 port map ( Y=>nx63, A0=>counterOutput_1_EXMPLR, A1=>
      counterOutput_0_EXMPLR, B0=>counterOutput_2_EXMPLR);
   ix99 : ao21 port map ( Y=>counterInput_3, A0=>loadData(3), A1=>load, B0=>
      nx94);
   ix95 : nor03_2x port map ( Y=>nx94, A0=>nx71, A1=>load, A2=>nx4);
   ix72 : nor02ii port map ( Y=>nx71, A0=>counterOutput_3_EXMPLR, A1=>nx73);
   ix74 : nand03 port map ( Y=>nx73, A0=>counterOutput_2_EXMPLR, A1=>
      counterOutput_1_EXMPLR, A2=>counterOutput_0_EXMPLR);
   ix113 : ao21 port map ( Y=>counterInput_4, A0=>loadData(4), A1=>load, B0
      =>nx108);
   ix109 : nor03_2x port map ( Y=>nx108, A0=>nx79, A1=>load, A2=>nx6);
   ix80 : nor02ii port map ( Y=>nx79, A0=>counterOutput_4_EXMPLR, A1=>nx81);
   ix82 : nand04 port map ( Y=>nx81, A0=>counterOutput_3_EXMPLR, A1=>
      counterOutput_2_EXMPLR, A2=>counterOutput_1_EXMPLR, A3=>
      counterOutput_0_EXMPLR);
   ix7 : nor02ii port map ( Y=>nx6, A0=>nx81, A1=>counterOutput_4_EXMPLR);
   ix127 : ao21 port map ( Y=>counterInput_5, A0=>loadData(5), A1=>load, B0
      =>nx122);
   ix123 : nor03_2x port map ( Y=>nx122, A0=>nx89, A1=>load, A2=>nx8);
   ix90 : nor02_2x port map ( Y=>nx89, A0=>nx6, A1=>counterOutput_5_EXMPLR);
   ix141 : ao21 port map ( Y=>counterInput_6, A0=>loadData(6), A1=>load, B0
      =>nx136);
   ix137 : nor03_2x port map ( Y=>nx136, A0=>nx97, A1=>load, A2=>nx10);
   ix98 : nor02ii port map ( Y=>nx97, A0=>counterOutput_6_EXMPLR, A1=>nx99);
   ix100 : nand02 port map ( Y=>nx99, A0=>counterOutput_5_EXMPLR, A1=>nx6);
   ix11 : nor02ii port map ( Y=>nx10, A0=>nx99, A1=>counterOutput_6_EXMPLR);
   ix155 : ao21 port map ( Y=>counterInput_7, A0=>loadData(7), A1=>load, B0
      =>nx150);
   ix151 : nor03_2x port map ( Y=>nx150, A0=>nx105, A1=>load, A2=>nx12);
   ix106 : nor02_2x port map ( Y=>nx105, A0=>nx10, A1=>
      counterOutput_7_EXMPLR);
   ix169 : ao21 port map ( Y=>counterInput_8, A0=>loadData(8), A1=>load, B0
      =>nx164);
   ix165 : nor03_2x port map ( Y=>nx164, A0=>nx113, A1=>load, A2=>nx14);
   ix114 : nor02ii port map ( Y=>nx113, A0=>counterOutput_8_EXMPLR, A1=>
      nx115);
   ix116 : nand02 port map ( Y=>nx115, A0=>counterOutput_7_EXMPLR, A1=>nx10
   );
   ix15 : nor02ii port map ( Y=>nx14, A0=>nx115, A1=>counterOutput_8_EXMPLR
   );
   ix183 : ao21 port map ( Y=>counterInput_9, A0=>load, A1=>loadData(9), B0
      =>nx178);
   ix179 : nor03_2x port map ( Y=>nx178, A0=>nx121, A1=>load, A2=>nx16);
   ix122 : nor02_2x port map ( Y=>nx121, A0=>nx14, A1=>
      counterOutput_9_EXMPLR);
   ix29 : nor03_2x port map ( Y=>counterInput_10, A0=>nx127, A1=>load, A2=>
      nx20);
   ix128 : nor02ii port map ( Y=>nx127, A0=>counterOutput_10_EXMPLR, A1=>
      nx129);
   ix130 : nand02 port map ( Y=>nx129, A0=>counterOutput_9_EXMPLR, A1=>nx14
   );
   ix21 : nor02ii port map ( Y=>nx20, A0=>nx129, A1=>counterOutput_10_EXMPLR
   );
   ix41 : nor03_2x port map ( Y=>counterInput_11, A0=>nx133, A1=>load, A2=>
      nx32);
   ix134 : nor02_2x port map ( Y=>nx133, A0=>nx20, A1=>
      counterOutput_11_EXMPLR);
   ix47 : nor02_2x port map ( Y=>counterInput_12, A0=>load, A1=>nx139);
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
end UpCounterAsyncLoad_unfold_2844 ;

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
   component UpCounterAsyncLoad_13
      port (
         loadData : IN std_logic_vector (12 DOWNTO 0) ;
         en : IN std_logic ;
         load : IN std_logic ;
         rst : IN std_logic ;
         clk : IN std_logic ;
         counterOutput : OUT std_logic_vector (12 DOWNTO 0)) ;
   
   end component ;
   signal dataOut_7_EXMPLR, dataOut_6_EXMPLR, dataOut_5_EXMPLR, 
      dataOut_4_EXMPLR, dataOut_3_EXMPLR, dataOut_2_EXMPLR, dataOut_1_EXMPLR, 
      dataOut_0_EXMPLR, dataOut_15_EXMPLR, nx105, nx115, nx125, nx135, nx145, 
      nx155, nx165, nx175: std_logic ;

begin
   dataOut(15) <= dataOut_15_EXMPLR ;
   dataOut(14) <= dataOut_15_EXMPLR ;
   dataOut(13) <= dataOut_15_EXMPLR ;
   dataOut(12) <= dataOut_15_EXMPLR ;
   dataOut(11) <= dataOut_15_EXMPLR ;
   dataOut(10) <= dataOut_15_EXMPLR ;
   dataOut(9) <= dataOut_15_EXMPLR ;
   dataOut(8) <= dataOut_15_EXMPLR ;
   dataOut(7) <= dataOut_7_EXMPLR ;
   dataOut(6) <= dataOut_6_EXMPLR ;
   dataOut(5) <= dataOut_5_EXMPLR ;
   dataOut(4) <= dataOut_4_EXMPLR ;
   dataOut(3) <= dataOut_3_EXMPLR ;
   dataOut(2) <= dataOut_2_EXMPLR ;
   dataOut(1) <= dataOut_1_EXMPLR ;
   dataOut(0) <= dataOut_0_EXMPLR ;
   addressCounter : UpCounterAsyncLoad_13 port map ( loadData(12)=>
      dataOut_15_EXMPLR, loadData(11)=>dataOut_15_EXMPLR, loadData(10)=>
      dataOut_15_EXMPLR, loadData(9)=>addressIn(9), loadData(8)=>
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
   ix79 : fake_gnd port map ( Y=>dataOut_15_EXMPLR);
   MyReg_reg_Q_0 : dffr port map ( Q=>dataOut_0_EXMPLR, QB=>OPEN, D=>nx105, 
      CLK=>clk, R=>rst);
   ix106 : mux21_ni port map ( Y=>nx105, A0=>dataOut_0_EXMPLR, A1=>dataIn(0), 
      S0=>enableImageRegister);
   MyReg_reg_Q_1 : dffr port map ( Q=>dataOut_1_EXMPLR, QB=>OPEN, D=>nx115, 
      CLK=>clk, R=>rst);
   ix116 : mux21_ni port map ( Y=>nx115, A0=>dataOut_1_EXMPLR, A1=>dataIn(1), 
      S0=>enableImageRegister);
   MyReg_reg_Q_2 : dffr port map ( Q=>dataOut_2_EXMPLR, QB=>OPEN, D=>nx125, 
      CLK=>clk, R=>rst);
   ix126 : mux21_ni port map ( Y=>nx125, A0=>dataOut_2_EXMPLR, A1=>dataIn(2), 
      S0=>enableImageRegister);
   MyReg_reg_Q_3 : dffr port map ( Q=>dataOut_3_EXMPLR, QB=>OPEN, D=>nx135, 
      CLK=>clk, R=>rst);
   ix136 : mux21_ni port map ( Y=>nx135, A0=>dataOut_3_EXMPLR, A1=>dataIn(3), 
      S0=>enableImageRegister);
   MyReg_reg_Q_4 : dffr port map ( Q=>dataOut_4_EXMPLR, QB=>OPEN, D=>nx145, 
      CLK=>clk, R=>rst);
   ix146 : mux21_ni port map ( Y=>nx145, A0=>dataOut_4_EXMPLR, A1=>dataIn(4), 
      S0=>enableImageRegister);
   MyReg_reg_Q_5 : dffr port map ( Q=>dataOut_5_EXMPLR, QB=>OPEN, D=>nx155, 
      CLK=>clk, R=>rst);
   ix156 : mux21_ni port map ( Y=>nx155, A0=>dataOut_5_EXMPLR, A1=>dataIn(5), 
      S0=>enableImageRegister);
   MyReg_reg_Q_6 : dffr port map ( Q=>dataOut_6_EXMPLR, QB=>OPEN, D=>nx165, 
      CLK=>clk, R=>rst);
   ix166 : mux21_ni port map ( Y=>nx165, A0=>dataOut_6_EXMPLR, A1=>dataIn(6), 
      S0=>enableImageRegister);
   MyReg_reg_Q_7 : dffr port map ( Q=>dataOut_7_EXMPLR, QB=>OPEN, D=>nx175, 
      CLK=>clk, R=>rst);
   ix176 : mux21_ni port map ( Y=>nx175, A0=>dataOut_7_EXMPLR, A1=>dataIn(7), 
      S0=>enableImageRegister);
end DMAImage ;


