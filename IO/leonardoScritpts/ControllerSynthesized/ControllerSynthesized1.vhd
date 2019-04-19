
-- 
-- Definition of  Controller
-- 
--      Fri Apr 19 15:45:12 2019
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
      clk : IN std_logic ;
      processing : IN std_logic ;
      imageOrCNN : IN std_logic ;
      zeroState : IN std_logic ;
      decompZeroState : IN std_logic ;
      rst : IN std_logic ;
      INTRDelayed : INOUT std_logic ;
      load : IN std_logic ;
      globalCounterLoad : INOUT std_logic ;
      imageLoad : INOUT std_logic ;
      busy : OUT std_logic ;
      doneWithPhase : OUT std_logic ;
      interfaceRegEnable : OUT std_logic ;
      interfaceMuxSel : OUT std_logic ;
      interfaceMuxEnable : OUT std_logic ;
      CNNCounterEnable : OUT std_logic ;
      CNNRegisterEnable : OUT std_logic ;
      decompDecrementorEnable : OUT std_logic ;
      imageCounterEnable : OUT std_logic ;
      imageRegisterEnable : OUT std_logic ;
      globalCounterEnable : OUT std_logic ;
      toCNN : OUT std_logic ;
      toFC : OUT std_logic) ;
end Controller ;

architecture ControllerArch of Controller is
   signal doneWithPhase_EXMPLR, busy_EXMPLR, stateCounterQ_0, nx18, CNNOrFC, 
      nx44, INTRDelayedSq, busyFFQ, nx86, nx111, nx121, nx134, nx136, nx138, 
      nx144, nx150, nx154, nx156, nx159, nx166, nx173, nx178, nx181, nx190, 
      nx192: std_logic ;

begin
   busy <= busy_EXMPLR ;
   doneWithPhase <= doneWithPhase_EXMPLR ;
   interfaceMuxSel <= imageOrCNN ;
   interfaceMuxEnable <= load ;
   ix93 : or02 port map ( Y=>busy_EXMPLR, A0=>busyFFQ, A1=>INTR);
   busyFF_reg_Q : dffr port map ( Q=>busyFFQ, QB=>OPEN, D=>busy_EXMPLR, CLK
      =>clk, R=>nx86);
   ix87 : nand02 port map ( Y=>nx86, A0=>nx134, A1=>nx138);
   ix135 : nor02ii port map ( Y=>nx134, A0=>doneDMAFC, A1=>nx136);
   ix137 : aoi21 port map ( Y=>nx136, A0=>decompZeroState, A1=>doneDMAImage, 
      B0=>doneDMACNN);
   ix139 : inv01 port map ( Y=>nx138, A=>zeroState);
   stateCounter_counterReg_reg_Q_0 : dffr port map ( Q=>stateCounterQ_0, QB
      =>OPEN, D=>nx111, CLK=>clk, R=>rst);
   ix112 : xnor2 port map ( Y=>nx111, A0=>stateCounterQ_0, A1=>nx144);
   ix145 : nand02 port map ( Y=>nx144, A0=>imageOrCNN, A1=>
      doneWithPhase_EXMPLR);
   ix19 : nand02 port map ( Y=>nx18, A0=>nx150, A1=>imageOrCNN);
   imageLatcher_reg_Q : dffr port map ( Q=>OPEN, QB=>nx150, D=>nx18, CLK=>
      clk, R=>rst);
   ix122 : mux21 port map ( Y=>nx121, A0=>nx154, A1=>nx156, S0=>nx144);
   stateCounter_counterReg_reg_Q_1 : dffr port map ( Q=>CNNOrFC, QB=>nx156, 
      D=>nx121, CLK=>clk, R=>rst);
   ix160 : inv01 port map ( Y=>nx159, A=>doneDMAImage);
   ix59 : and02 port map ( Y=>globalCounterLoad, A0=>zeroState, A1=>INTR);
   ix79 : inv01 port map ( Y=>imageRegisterEnable, A=>nx166);
   ix167 : oai21 port map ( Y=>nx166, A0=>INTRDelayedSq, A1=>doneDMAImage, 
      B0=>imageLoad);
   INTRFF2_reg_Q : dffr port map ( Q=>INTRDelayedSq, QB=>OPEN, D=>
      INTRDelayed, CLK=>clk, R=>rst);
   INTRFF1_reg_Q : dffr port map ( Q=>INTRDelayed, QB=>nx173, D=>nx44, CLK=>
      clk, R=>rst);
   ix67 : nor02ii port map ( Y=>imageLoad, A0=>imageOrCNN, A1=>load);
   ix85 : aoi21 port map ( Y=>imageCounterEnable, A0=>nx173, A1=>nx159, B0=>
      zeroState);
   ix71 : inv01 port map ( Y=>decompDecrementorEnable, A=>nx178);
   ix179 : oai21 port map ( Y=>nx178, A0=>INTRDelayed, A1=>doneDMAImage, B0
      =>imageLoad);
   ix55 : nor03_2x port map ( Y=>CNNRegisterEnable, A0=>nx181, A1=>zeroState, 
      A2=>nx173);
   ix182 : nand03 port map ( Y=>nx181, A0=>CNNOrFC, A1=>load, A2=>imageOrCNN
   );
   ix57 : and04 port map ( Y=>CNNCounterEnable, A0=>doneDMACNN, A1=>CNNOrFC, 
      A2=>load, A3=>imageOrCNN);
   ix63 : and02 port map ( Y=>interfaceRegEnable, A0=>load, A1=>INTR);
   ix33 : nor03_2x port map ( Y=>toFC, A0=>nx190, A1=>nx150, A2=>nx156);
   ix189 : inv01 port map ( Y=>nx190, A=>stateCounterQ_0);
   ix7 : nor02ii port map ( Y=>doneWithPhase_EXMPLR, A0=>nx134, A1=>
      zeroState);
   ix155 : xor2 port map ( Y=>nx154, A0=>nx156, A1=>stateCounterQ_0);
   ix37 : and02 port map ( Y=>toCNN, A0=>doneDMAImage, A1=>nx156);
   ix61 : nand02 port map ( Y=>globalCounterEnable, A0=>nx192, A1=>nx134);
   ix191 : inv01 port map ( Y=>nx192, A=>globalCounterLoad);
   ix45 : nor02ii port map ( Y=>nx44, A0=>zeroState, A1=>INTR);
end ControllerArch ;


