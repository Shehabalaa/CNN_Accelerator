
-- 
-- Definition of  Controller
-- 
--      Mon Apr 22 17:17:59 2019
--      
--      LeonardoSpectrum Level 3, 2018a.2
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity Controller is
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
end Controller ;

architecture ControllerArch of Controller is
   signal doneWithPhase_EXMPLR, busy_EXMPLR, stateCounterQ_0, 
      doneDMAImageDelayed, NOT_clk, nx24, CNNOrFC, zeroStateDelayed, nx50, 
      nx66, nx68, nx84, nx86, INTRDelayedSq, nx116, nx120, busyFFQ, nx154, 
      nx161, nx171, nx184, nx186, nx191, nx192, nx198, nx204, nx208, nx210, 
      nx221, nx231, nx236, nx254, nx265, nx267, nx269: std_logic ;

begin
   busy <= busy_EXMPLR ;
   doneWithPhase <= doneWithPhase_EXMPLR ;
   interfaceMuxSel <= imageOrCNN ;
   interfaceMuxEnable <= load ;
   ix143 : or02 port map ( Y=>busy_EXMPLR, A0=>busyFFQ, A1=>INTR);
   busyFF_reg_Q : dffr port map ( Q=>busyFFQ, QB=>OPEN, D=>busy_EXMPLR, CLK
      =>clk, R=>nx154);
   ix139 : nand02 port map ( Y=>nx154, A0=>nx184, A1=>nx192);
   ix185 : nor02ii port map ( Y=>nx184, A0=>doneDMAFC, A1=>nx186);
   ix187 : aoi21 port map ( Y=>nx186, A0=>decompZeroState, A1=>
      doneDMAImageDelayed, B0=>doneDMACNN);
   imgLatcher_reg_Q : dffr port map ( Q=>doneDMAImageDelayed, QB=>nx191, D=>
      doneDMAImage, CLK=>NOT_clk, R=>rst);
   ix190 : inv01 port map ( Y=>NOT_clk, A=>clk);
   ix193 : inv01 port map ( Y=>nx192, A=>zeroState);
   stateCounter_counterReg_reg_Q_0 : dffr port map ( Q=>stateCounterQ_0, QB
      =>OPEN, D=>nx161, CLK=>NOT_clk, R=>rst);
   ix162 : xnor2 port map ( Y=>nx161, A0=>stateCounterQ_0, A1=>nx198);
   ix199 : nand02 port map ( Y=>nx198, A0=>imageOrCNN, A1=>
      doneWithPhase_EXMPLR);
   ix25 : nand02 port map ( Y=>nx24, A0=>nx204, A1=>imageOrCNN);
   imageLatcher_reg_Q : dffr port map ( Q=>OPEN, QB=>nx204, D=>nx24, CLK=>
      clk, R=>rst);
   ix172 : mux21 port map ( Y=>nx171, A0=>nx208, A1=>nx210, S0=>nx198);
   stateCounter_counterReg_reg_Q_1 : dffr port map ( Q=>CNNOrFC, QB=>nx210, 
      D=>nx171, CLK=>NOT_clk, R=>rst);
   ix99 : and02 port map ( Y=>globalCounterLoad, A0=>zeroState, A1=>INTR);
   ix138 : oai21 port map ( Y=>imageCounterEnable, A0=>zeroState, A1=>nx191, 
      B0=>nx221);
   ix222 : nand02 port map ( Y=>nx221, A0=>nx192, A1=>INTRDelayed);
   INTRFF1_reg_Q : dffr port map ( Q=>INTRDelayed, QB=>OPEN, D=>nx50, CLK=>
      NOT_clk, R=>rst);
   zeroLatch_reg_Q : dffr port map ( Q=>zeroStateDelayed, QB=>OPEN, D=>
      zeroState, CLK=>NOT_clk, R=>rst);
   ix129 : inv01 port map ( Y=>decompDecrementorEnable, A=>nx231);
   ix232 : oai21 port map ( Y=>nx231, A0=>INTRDelayed, A1=>doneDMAImage, B0
      =>imageLoad);
   ix107 : nor02ii port map ( Y=>imageLoad, A0=>imageOrCNN, A1=>load);
   ix77 : and04 port map ( Y=>FCCounterEnable, A0=>load, A1=>imageOrCNN, A2
      =>doneDMAFC, A3=>CNNOrFC);
   ix237 : nand02 port map ( Y=>nx236, A0=>load, A1=>imageOrCNN);
   ix103 : and02 port map ( Y=>interfaceRegEnable, A0=>load, A1=>INTR);
   FCRamEn_reg_Q : dffr port map ( Q=>FCRamEnable, QB=>OPEN, D=>nx66, CLK=>
      clk, R=>nx68);
   ix67 : or02 port map ( Y=>nx66, A0=>FCRegisterEnable, A1=>FCRamEnable);
   ix65 : nor03_2x port map ( Y=>FCRegisterEnable, A0=>nx221, A1=>nx210, A2
      =>nx236);
   ix69 : or02 port map ( Y=>nx68, A0=>rst, A1=>doneDMAFC);
   CNNRamEn_reg_Q : dffr port map ( Q=>CNNRamEnable, QB=>OPEN, D=>nx84, CLK
      =>clk, R=>nx86);
   ix85 : or02 port map ( Y=>nx84, A0=>CNNRegisterEnable, A1=>CNNRamEnable);
   ix83 : nor03_2x port map ( Y=>CNNRegisterEnable, A0=>nx221, A1=>CNNOrFC, 
      A2=>nx236);
   ix87 : or02 port map ( Y=>nx86, A0=>rst, A1=>doneDMACNN);
   imageRamEn_reg_Q : dffr port map ( Q=>imageRamEnable, QB=>OPEN, D=>nx116, 
      CLK=>clk, R=>nx120);
   ix117 : or02 port map ( Y=>nx116, A0=>imageRegisterEnable, A1=>
      imageRamEnable);
   ix115 : inv01 port map ( Y=>imageRegisterEnable, A=>nx254);
   ix255 : oai21 port map ( Y=>nx254, A0=>doneDMAImageDelayed, A1=>
      INTRDelayedSq, B0=>imageLoad);
   INTRFF2_reg_Q : dffr port map ( Q=>INTRDelayedSq, QB=>OPEN, D=>
      INTRDelayed, CLK=>NOT_clk, R=>rst);
   ix121 : or03 port map ( Y=>nx120, A0=>decompZeroState, A1=>rst, A2=>
      doneDMAImage);
   ix39 : nor03_2x port map ( Y=>toFC, A0=>nx265, A1=>nx204, A2=>nx210);
   ix264 : inv01 port map ( Y=>nx265, A=>stateCounterQ_0);
   ix13 : nor02ii port map ( Y=>doneWithPhase_EXMPLR, A0=>nx184, A1=>
      zeroState);
   ix209 : xor2 port map ( Y=>nx208, A0=>nx210, A1=>stateCounterQ_0);
   ix43 : and02 port map ( Y=>toCNN, A0=>doneDMAImage, A1=>nx210);
   ix101 : nand02 port map ( Y=>globalCounterEnable, A0=>nx267, A1=>nx184);
   ix266 : inv01 port map ( Y=>nx267, A=>globalCounterLoad);
   ix51 : nor02ii port map ( Y=>nx50, A0=>zeroStateDelayed, A1=>INTR);
   ix97 : and03 port map ( Y=>CNNCounterEnable, A0=>nx269, A1=>doneDMACNN, 
      A2=>nx210);
   ix268 : inv01 port map ( Y=>nx269, A=>nx236);
end ControllerArch ;


