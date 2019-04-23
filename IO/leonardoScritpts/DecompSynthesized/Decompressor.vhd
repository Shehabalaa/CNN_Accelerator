
-- 
-- Definition of  Decompressor
-- 
--      Mon Apr 22 17:51:45 2019
--      
--      LeonardoSpectrum Level 3, 2018a.2
-- 

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
      nx99, nx109, nx119, nx129, nx149, nx157, nx209, nx211, nx213: 
   std_logic ;

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
      S0=>en);
   ix9 : oai21 port map ( Y=>nx8, A0=>load, A1=>counterOutput_0_EXMPLR, B0=>
      nx149);
   ix150 : nand02 port map ( Y=>nx149, A0=>loadData(0), A1=>load);
   ix25 : and04 port map ( Y=>nx24, A0=>en, A1=>load, A2=>nx209, A3=>
      loadData(0));
   ix21 : oai21 port map ( Y=>nx20, A0=>nx213, A1=>nx8, B0=>nx209);
   ix158 : aoi21 port map ( Y=>nx157, A0=>en, A1=>load, B0=>rst);
   counterReg_reg_Q_1 : dffsr_ni port map ( Q=>counterOutput_1_EXMPLR, QB=>
      OPEN, D=>nx89, CLK=>clk, S=>nx54, R=>nx71);
   ix90 : mux21_ni port map ( Y=>nx89, A0=>counterOutput_1_EXMPLR, A1=>nx44, 
      S0=>en);
   ix45 : mux21_ni port map ( Y=>nx44, A0=>nx36, A1=>loadData(1), S0=>load);
   ix37 : xnor2 port map ( Y=>nx36, A0=>counterOutput_0_EXMPLR, A1=>
      counterOutput_1_EXMPLR);
   ix55 : and04 port map ( Y=>nx54, A0=>en, A1=>load, A2=>nx209, A3=>
      loadData(1));
   ix53 : oai21 port map ( Y=>nx71, A0=>nx213, A1=>nx44, B0=>nx209);
   counterReg_reg_Q_2 : dffsr_ni port map ( Q=>counterOutput_2_EXMPLR, QB=>
      OPEN, D=>nx99, CLK=>clk, S=>nx84, R=>nx80);
   ix100 : mux21_ni port map ( Y=>nx99, A0=>counterOutput_2_EXMPLR, A1=>nx74, 
      S0=>en);
   ix75 : mux21_ni port map ( Y=>nx74, A0=>nx66, A1=>loadData(2), S0=>load);
   ix67 : xor2 port map ( Y=>nx66, A0=>nx32, A1=>counterOutput_2_EXMPLR);
   ix33 : nor02_2x port map ( Y=>nx32, A0=>counterOutput_0_EXMPLR, A1=>
      counterOutput_1_EXMPLR);
   ix85 : and04 port map ( Y=>nx84, A0=>en, A1=>load, A2=>nx209, A3=>
      loadData(2));
   ix81 : oai21 port map ( Y=>nx80, A0=>nx213, A1=>nx74, B0=>nx209);
   counterReg_reg_Q_3 : dffsr_ni port map ( Q=>counterOutput_3_EXMPLR, QB=>
      OPEN, D=>nx109, CLK=>clk, S=>nx114, R=>nx110);
   ix110 : mux21_ni port map ( Y=>nx109, A0=>counterOutput_3_EXMPLR, A1=>
      nx104, S0=>en);
   ix105 : mux21_ni port map ( Y=>nx104, A0=>nx96, A1=>loadData(3), S0=>load
   );
   ix97 : xor2 port map ( Y=>nx96, A0=>nx60, A1=>counterOutput_3_EXMPLR);
   ix61 : nor03_2x port map ( Y=>nx60, A0=>counterOutput_0_EXMPLR, A1=>
      counterOutput_1_EXMPLR, A2=>counterOutput_2_EXMPLR);
   ix115 : and04 port map ( Y=>nx114, A0=>en, A1=>load, A2=>nx209, A3=>
      loadData(3));
   ix111 : oai21 port map ( Y=>nx110, A0=>nx213, A1=>nx104, B0=>nx211);
   counterReg_reg_Q_4 : dffsr_ni port map ( Q=>counterOutput_4_EXMPLR, QB=>
      OPEN, D=>nx119, CLK=>clk, S=>nx144, R=>nx140);
   ix120 : mux21_ni port map ( Y=>nx119, A0=>counterOutput_4_EXMPLR, A1=>
      nx134, S0=>en);
   ix135 : mux21_ni port map ( Y=>nx134, A0=>nx126, A1=>loadData(4), S0=>
      load);
   ix127 : xor2 port map ( Y=>nx126, A0=>nx90, A1=>counterOutput_4_EXMPLR);
   ix91 : nor04 port map ( Y=>nx90, A0=>counterOutput_0_EXMPLR, A1=>
      counterOutput_1_EXMPLR, A2=>counterOutput_2_EXMPLR, A3=>
      counterOutput_3_EXMPLR);
   ix145 : and04 port map ( Y=>nx144, A0=>en, A1=>load, A2=>nx211, A3=>
      loadData(4));
   ix141 : oai21 port map ( Y=>nx140, A0=>nx213, A1=>nx134, B0=>nx211);
   counterReg_reg_Q_5 : dffsr_ni port map ( Q=>counterOutput_5_EXMPLR, QB=>
      OPEN, D=>nx129, CLK=>clk, S=>nx166, R=>nx162);
   ix130 : mux21_ni port map ( Y=>nx129, A0=>counterOutput_5_EXMPLR, A1=>
      nx156, S0=>en);
   ix157 : mux21_ni port map ( Y=>nx156, A0=>nx148, A1=>loadData(5), S0=>
      load);
   ix149 : xor2 port map ( Y=>nx148, A0=>counterOutput_5_EXMPLR, A1=>nx120);
   ix121 : nor02ii port map ( Y=>nx120, A0=>counterOutput_4_EXMPLR, A1=>nx90
   );
   ix167 : and04 port map ( Y=>nx166, A0=>en, A1=>load, A2=>nx211, A3=>
      loadData(5));
   ix163 : oai21 port map ( Y=>nx162, A0=>nx156, A1=>nx213, B0=>nx211);
   ix208 : inv02 port map ( Y=>nx209, A=>rst);
   ix210 : inv02 port map ( Y=>nx211, A=>rst);
   ix212 : buf02 port map ( Y=>nx213, A=>nx157);
end DownCounterAsyncLoadArch ;

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
   component DownCounterAsyncLoad_6
      port (
         loadData : IN std_logic_vector (5 DOWNTO 0) ;
         en : IN std_logic ;
         load : IN std_logic ;
         rst : IN std_logic ;
         clk : IN std_logic ;
         counterOutput : OUT std_logic_vector (5 DOWNTO 0)) ;
   
   end component ;
   signal dataOut_0_EXMPLR, countOut_5, countOut_4, countOut_3, countOut_2, 
      countOut_1, countOut_0, dataOut_7_EXMPLR, nx53, nx65: std_logic ;

begin
   dataOut(7) <= dataOut_7_EXMPLR ;
   dataOut(6) <= dataOut_7_EXMPLR ;
   dataOut(5) <= dataOut_7_EXMPLR ;
   dataOut(4) <= dataOut_7_EXMPLR ;
   dataOut(3) <= dataOut_7_EXMPLR ;
   dataOut(2) <= dataOut_7_EXMPLR ;
   dataOut(1) <= dataOut_7_EXMPLR ;
   dataOut(0) <= dataOut_0_EXMPLR ;
   Counter : DownCounterAsyncLoad_6 port map ( loadData(5)=>dataIn(5), 
      loadData(4)=>dataIn(4), loadData(3)=>dataIn(3), loadData(2)=>dataIn(2), 
      loadData(1)=>dataIn(1), loadData(0)=>dataIn(0), en=>en, load=>
      intrDelayed, rst=>rst, clk=>clk, counterOutput(5)=>countOut_5, 
      counterOutput(4)=>countOut_4, counterOutput(3)=>countOut_3, 
      counterOutput(2)=>countOut_2, counterOutput(1)=>countOut_1, 
      counterOutput(0)=>countOut_0);
   ix36 : fake_gnd port map ( Y=>dataOut_7_EXMPLR);
   MyReg_reg_Q_0 : dffr port map ( Q=>dataOut_0_EXMPLR, QB=>OPEN, D=>nx53, 
      CLK=>clk, R=>rst);
   ix54 : or02 port map ( Y=>nx53, A0=>dataOut_0_EXMPLR, A1=>imageLoad);
   ix27 : nor04 port map ( Y=>zeroState, A0=>countOut_3, A1=>countOut_5, A2
      =>countOut_4, A3=>nx65);
   ix66 : or03 port map ( Y=>nx65, A0=>countOut_0, A1=>countOut_2, A2=>
      countOut_1);
end DecompressorArchitecture ;


