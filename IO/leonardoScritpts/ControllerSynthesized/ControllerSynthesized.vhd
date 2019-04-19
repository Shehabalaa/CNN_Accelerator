
-- 
-- Definition of  Controller
-- 
--      Fri Apr 19 13:20:33 2019
--      
--      LeonardoSpectrum Level 3, 2018a.2
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;

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
   component UpCounterAsyncLoad_2
      port (
         loadData : IN std_logic_vector (1 DOWNTO 0) ;
         en : IN std_logic ;
         load : IN std_logic ;
         rst : IN std_logic ;
         clk : IN std_logic ;
         counterOutput : OUT std_logic_vector (1 DOWNTO 0)) ;
   
   end component ;
   signal doneWithPhase_EXMPLR, busy_EXMPLR, stateCounterEnable, CNNOrFC, 
      stateCounterQ_0, stateCounterLoad, doneImage, nx2, nx30, INTRDelayedSq, 
      busyFFQ, nx74, nx111, nx113, nx115, nx124, nx127, nx134, nx141, nx146, 
      nx149, nx158: std_logic ;

begin
   busy <= busy_EXMPLR ;
   doneWithPhase <= doneWithPhase_EXMPLR ;
   interfaceMuxSel <= imageOrCNN ;
   interfaceMuxEnable <= load ;
   stateCounter : UpCounterAsyncLoad_2 port map ( loadData(1)=>
      stateCounterLoad, loadData(0)=>stateCounterLoad, en=>
      stateCounterEnable, load=>stateCounterLoad, rst=>rst, clk=>clk, 
      counterOutput(1)=>CNNOrFC, counterOutput(0)=>stateCounterQ_0);
   ix89 : fake_gnd port map ( Y=>stateCounterLoad);
   ix73 : and02 port map ( Y=>stateCounterEnable, A0=>imageOrCNN, A1=>
      doneWithPhase_EXMPLR);
   ix112 : inv01 port map ( Y=>nx111, A=>zeroState);
   ix114 : nor02ii port map ( Y=>nx113, A0=>doneDMAFC, A1=>nx115);
   ix116 : aoi21 port map ( Y=>nx115, A0=>decompZeroState, A1=>doneDMAImage, 
      B0=>doneDMACNN);
   ix81 : or02 port map ( Y=>busy_EXMPLR, A0=>busyFFQ, A1=>INTR);
   busyFF_reg_Q : dffr port map ( Q=>busyFFQ, QB=>OPEN, D=>busy_EXMPLR, CLK
      =>clk, R=>nx74);
   ix75 : nand02 port map ( Y=>nx74, A0=>nx113, A1=>nx111);
   ix11 : and03 port map ( Y=>toFC, A0=>doneImage, A1=>stateCounterQ_0, A2=>
      CNNOrFC);
   ix3 : nand02 port map ( Y=>nx2, A0=>nx124, A1=>imageOrCNN);
   imageLatcher_reg_Q : dffr port map ( Q=>doneImage, QB=>nx124, D=>nx2, CLK
      =>clk, R=>rst);
   ix128 : inv01 port map ( Y=>nx127, A=>doneDMAImage);
   ix45 : and02 port map ( Y=>globalCounterLoad, A0=>zeroState, A1=>INTR);
   ix65 : inv01 port map ( Y=>imageRegisterEnable, A=>nx134);
   ix135 : oai21 port map ( Y=>nx134, A0=>INTRDelayedSq, A1=>doneDMAImage, 
      B0=>imageLoad);
   INTRFF2_reg_Q : dffr port map ( Q=>INTRDelayedSq, QB=>OPEN, D=>
      INTRDelayed, CLK=>clk, R=>rst);
   INTRFF1_reg_Q : dffr port map ( Q=>INTRDelayed, QB=>nx141, D=>nx30, CLK=>
      clk, R=>rst);
   ix53 : nor02ii port map ( Y=>imageLoad, A0=>imageOrCNN, A1=>load);
   ix71 : aoi21 port map ( Y=>imageCounterEnable, A0=>nx141, A1=>nx127, B0=>
      zeroState);
   ix57 : inv01 port map ( Y=>decompDecrementorEnable, A=>nx146);
   ix147 : oai21 port map ( Y=>nx146, A0=>INTRDelayed, A1=>doneDMAImage, B0
      =>imageLoad);
   ix41 : nor03_2x port map ( Y=>CNNRegisterEnable, A0=>nx149, A1=>zeroState, 
      A2=>nx141);
   ix150 : nand03 port map ( Y=>nx149, A0=>imageOrCNN, A1=>CNNOrFC, A2=>load
   );
   ix43 : and04 port map ( Y=>CNNCounterEnable, A0=>doneDMACNN, A1=>
      imageOrCNN, A2=>CNNOrFC, A3=>load);
   ix49 : and02 port map ( Y=>interfaceRegEnable, A0=>load, A1=>INTR);
   ix23 : nor02ii port map ( Y=>doneWithPhase_EXMPLR, A0=>nx113, A1=>
      zeroState);
   ix15 : nor02ii port map ( Y=>toCNN, A0=>CNNOrFC, A1=>doneDMAImage);
   ix47 : nand02 port map ( Y=>globalCounterEnable, A0=>nx158, A1=>nx113);
   ix157 : inv01 port map ( Y=>nx158, A=>globalCounterLoad);
   ix31 : nor02ii port map ( Y=>nx30, A0=>zeroState, A1=>INTR);
end ControllerArch ;

