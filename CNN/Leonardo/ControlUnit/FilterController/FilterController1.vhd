
-- 
-- Definition of  FilterController
-- 
--      Fri Apr 12 13:00:00 2019
--      
--      LeonardoSpectrum Level 3, 2018a.2
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity FilterController is
   port (
      start : IN std_logic ;
      dmaFinish : IN std_logic ;
      oneConvFinish : IN std_logic ;
      resetState : IN std_logic ;
      clk : IN std_logic ;
      depth : IN std_logic_vector (2 DOWNTO 0) ;
      startOneConv : OUT std_logic ;
      loadConfig : OUT std_logic ;
      filterLastLayer : OUT std_logic ;
      finish : OUT std_logic) ;
end FilterController ;

architecture FilterControllerArch of FilterController is
   signal startOneConv_EXMPLR, filterLastLayer_EXMPLR, currentState_0, nx125, 
      NOT_clk, nx16, counterOut_2, nx126, nx26, nx50, nx52, nx74, nx133, 
      nx143, nx153, nx163, nx173, nx187, nx190, nx193, nx199, nx202, nx208, 
      nx214, nx216, nx218, nx220, nx223, nx225, nx227, nx229, nx233, nx234, 
      nx237, nx240, nx242, nx251, nx253, nx257, nx255, currentState_1, nx270, 
      nx271: std_logic ;

begin
   startOneConv <= startOneConv_EXMPLR ;
   filterLastLayer <= filterLastLayer_EXMPLR ;
   ix71 : nor03_2x port map ( Y=>filterLastLayer_EXMPLR, A0=>nx50, A1=>nx52, 
      A2=>nx240);
   ix51 : xnor2 port map ( Y=>nx50, A0=>counterOut_2, A1=>nx237);
   counterMap_counterReg_reg_Q_2 : dffr port map ( Q=>counterOut_2, QB=>OPEN, 
      D=>nx163, CLK=>clk, R=>nx26);
   ix164 : oai21 port map ( Y=>nx163, A0=>nx187, A1=>nx214, B0=>nx234);
   ix188 : xnor2 port map ( Y=>nx187, A0=>counterOut_2, A1=>nx126);
   ix43 : nor02_2x port map ( Y=>nx126, A0=>nx190, A1=>nx233);
   ix154 : mux21 port map ( Y=>nx153, A0=>nx193, A1=>nx190, S0=>nx214);
   counterMap_counterReg_reg_Q_1 : dffr port map ( Q=>OPEN, QB=>nx190, D=>
      nx153, CLK=>clk, R=>nx26);
   ix27 : nor02_2x port map ( Y=>nx26, A0=>currentState_0, A1=>nx229);
   ix134 : oai21 port map ( Y=>nx133, A0=>currentState_0, A1=>nx199, B0=>
      nx225);
   ix200 : oai21 port map ( Y=>nx199, A0=>nx74, A1=>filterLastLayer_EXMPLR, 
      B0=>nx16);
   ix75 : nor02_2x port map ( Y=>nx74, A0=>nx202, A1=>startOneConv_EXMPLR);
   ix203 : inv01 port map ( Y=>nx202, A=>start);
   ix65 : nor02_2x port map ( Y=>startOneConv_EXMPLR, A0=>nx255, A1=>
      currentState_0);
   ix174 : mux21 port map ( Y=>nx173, A0=>nx271, A1=>nx208, S0=>nx125);
   ix212 : inv01 port map ( Y=>NOT_clk, A=>clk);
   ix85 : oai221 port map ( Y=>nx125, A0=>nx214, A1=>nx218, B0=>nx271, B1=>
      nx216, C0=>nx220);
   ix215 : oai21 port map ( Y=>nx214, A0=>nx270, A1=>oneConvFinish, B0=>
      nx216);
   reg_currentState_0 : dffr port map ( Q=>currentState_0, QB=>nx216, D=>
      nx133, CLK=>NOT_clk, R=>resetState);
   ix219 : nor02_2x port map ( Y=>nx218, A0=>nx74, A1=>
      filterLastLayer_EXMPLR);
   ix221 : nand02 port map ( Y=>nx220, A0=>dmaFinish, A1=>currentState_0);
   ix17 : nor02_2x port map ( Y=>nx16, A0=>currentState_0, A1=>nx223);
   ix224 : nor02_2x port map ( Y=>nx223, A0=>nx270, A1=>oneConvFinish);
   ix226 : nand03 port map ( Y=>nx225, A0=>currentState_0, A1=>nx227, A2=>
      nx270);
   ix228 : inv01 port map ( Y=>nx227, A=>dmaFinish);
   ix230 : nand02 port map ( Y=>nx229, A0=>clk, A1=>nx270);
   counterMap_counterReg_reg_Q_0 : dffr port map ( Q=>OPEN, QB=>nx233, D=>
      nx143, CLK=>clk, R=>nx26);
   ix235 : oai21 port map ( Y=>nx234, A0=>currentState_0, A1=>nx223, B0=>
      counterOut_2);
   ix238 : inv01 port map ( Y=>nx237, A=>depth(2));
   ix53 : xnor2 port map ( Y=>nx52, A0=>depth(0), A1=>nx233);
   ix241 : nand02 port map ( Y=>nx240, A0=>nx242, A1=>startOneConv_EXMPLR);
   ix9 : nor02_2x port map ( Y=>finish, A0=>nx257, A1=>nx216);
   ix95 : nor02_2x port map ( Y=>loadConfig, A0=>currentState_1, A1=>nx216);
   ix194 : xnor2 port map ( Y=>nx193, A0=>nx190, A1=>nx233);
   ix209 : xnor2 port map ( Y=>nx208, A0=>nx257, A1=>nx216);
   ix144 : xnor2 port map ( Y=>nx143, A0=>nx233, A1=>nx251);
   ix250 : inv01 port map ( Y=>nx251, A=>nx214);
   ix243 : xnor2 port map ( Y=>nx242, A0=>nx190, A1=>nx253);
   ix252 : inv01 port map ( Y=>nx253, A=>depth(1));
   ix256 : inv02 port map ( Y=>nx257, A=>currentState_1);
   ix254 : inv02 port map ( Y=>nx255, A=>currentState_1);
   reg_currentState_1 : dffr port map ( Q=>currentState_1, QB=>OPEN, D=>
      nx173, CLK=>NOT_clk, R=>resetState);
   ix272 : buf04 port map ( Y=>nx270, A=>nx255);
   ix273 : buf04 port map ( Y=>nx271, A=>nx270);
end FilterControllerArch ;


