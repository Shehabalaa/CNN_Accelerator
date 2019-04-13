
-- 
-- Definition of  NetworkController
-- 
--      Fri Apr 12 11:10:57 2019
--      
--      LeonardoSpectrum Level 3, 2018a.2
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity NetworkController is
   port (
      start : IN std_logic ;
      dmaFinish : IN std_logic ;
      oneLayerFinish : IN std_logic ;
      resetState : IN std_logic ;
      clk : IN std_logic ;
      layersNumber : IN std_logic_vector (1 DOWNTO 0) ;
      loadConfig : OUT std_logic ;
      startOneLayer : OUT std_logic ;
      finish : OUT std_logic) ;
end NetworkController ;

architecture NetworkControllerArch of NetworkController is
   signal loadConfig_EXMPLR, nx16, counterOut_0, nx30, nx58, nx130, nx140, 
      nx150, nx164, nx171, nx177, nx180, nx182, nx184, nx188, nx191, nx194, 
      nx198, nx200, nx202, nx212, nx214, currentState_0, nx174, 
      currentState_0_XX0_XREP22, nx174_XX0_XREP22, currentState_1, nx161, 
      NOT_clk, currentState_1_XX0_XREP24, nx161_XX0_XREP24, nx221, nx222, 
      nx120: std_logic ;

begin
   loadConfig <= loadConfig_EXMPLR ;
   ix9 : nor02_2x port map ( Y=>finish, A0=>nx161, A1=>nx174);
   ix151 : mux21 port map ( Y=>nx150, A0=>nx164, A1=>nx161, S0=>nx171);
   ix172 : aoi222 port map ( Y=>nx171, A0=>dmaFinish, A1=>loadConfig_EXMPLR, 
      B0=>currentState_1, B1=>currentState_0, C0=>nx16, C1=>nx58);
   ix77 : nor02_2x port map ( Y=>loadConfig_EXMPLR, A0=>currentState_1, A1=>
      nx174_XX0_XREP22);
   ix17 : nor02_2x port map ( Y=>nx16, A0=>currentState_0, A1=>nx177);
   ix178 : nor02_2x port map ( Y=>nx177, A0=>nx161_XX0_XREP24, A1=>
      oneLayerFinish);
   ix59 : oai21 port map ( Y=>nx58, A0=>nx180, A1=>nx182, B0=>nx202);
   ix181 : nand02 port map ( Y=>nx180, A0=>currentState_1_XX0_XREP24, A1=>
      nx174_XX0_XREP22);
   ix183 : nand02 port map ( Y=>nx182, A0=>nx184, A1=>nx194);
   ix185 : xnor2 port map ( Y=>nx184, A0=>layersNumber(0), A1=>counterOut_0
   );
   counterMap_counterReg_reg_Q_0 : dffr port map ( Q=>counterOut_0, QB=>OPEN, 
      D=>nx130, CLK=>clk, R=>nx30);
   ix131 : xnor2 port map ( Y=>nx130, A0=>counterOut_0, A1=>nx188);
   ix189 : oai21 port map ( Y=>nx188, A0=>nx161, A1=>oneLayerFinish, B0=>
      nx174);
   ix31 : nor02_2x port map ( Y=>nx30, A0=>currentState_0, A1=>nx191);
   ix192 : nand02 port map ( Y=>nx191, A0=>clk, A1=>nx161);
   ix141 : mux21 port map ( Y=>nx140, A0=>nx198, A1=>nx200, S0=>nx188);
   counterMap_counterReg_reg_Q_1 : dffr port map ( Q=>OPEN, QB=>nx200, D=>
      nx140, CLK=>clk, R=>nx30);
   ix203 : oai21 port map ( Y=>nx202, A0=>nx161_XX0_XREP24, A1=>
      currentState_0_XX0_XREP22, B0=>start);
   ix21 : nor02_2x port map ( Y=>startOneLayer, A0=>nx161, A1=>
      currentState_0);
   ix165 : xnor2 port map ( Y=>nx164, A0=>nx161, A1=>nx174);
   ix195 : xnor2 port map ( Y=>nx194, A0=>nx200, A1=>nx212);
   ix211 : inv01 port map ( Y=>nx212, A=>layersNumber(1));
   ix199 : xnor2 port map ( Y=>nx198, A0=>nx200, A1=>nx214);
   ix213 : inv01 port map ( Y=>nx214, A=>counterOut_0);
   reg_currentState_0 : dffr port map ( Q=>currentState_0, QB=>nx174, D=>
      nx120, CLK=>NOT_clk, R=>resetState);
   reg_currentState_0_0_XREP22 : dffr port map ( Q=>
      currentState_0_XX0_XREP22, QB=>nx174_XX0_XREP22, D=>nx120, CLK=>
      NOT_clk, R=>resetState);
   reg_currentState_1 : dffr port map ( Q=>currentState_1, QB=>nx161, D=>
      nx150, CLK=>NOT_clk, R=>resetState);
   ix168 : inv01 port map ( Y=>NOT_clk, A=>clk);
   reg_currentState_1_0_XREP24 : dffr port map ( Q=>
      currentState_1_XX0_XREP24, QB=>nx161_XX0_XREP24, D=>nx150, CLK=>
      NOT_clk, R=>resetState);
   ix223 : inv01 port map ( Y=>nx221, A=>nx171);
   ix224 : inv02 port map ( Y=>nx222, A=>nx174);
   reg_nx120 : oai22 port map ( Y=>nx120, A0=>nx221, A1=>nx174, B0=>nx222, 
      B1=>nx171);
end NetworkControllerArch ;


