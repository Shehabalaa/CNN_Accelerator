
-- 
-- Definition of  LayerController
-- 
--      Fri Apr 12 12:59:54 2019
--      
--      LeonardoSpectrum Level 3, 2018a.2
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity LayerController is
   port (
      start : IN std_logic ;
      dmaFinish : IN std_logic ;
      filterFinish : IN std_logic ;
      resetState : IN std_logic ;
      clk : IN std_logic ;
      filtersNumber : IN std_logic_vector (2 DOWNTO 0) ;
      loadConfig : OUT std_logic ;
      startFilterConv : OUT std_logic ;
      finish : OUT std_logic) ;
end LayerController ;

architecture LayerControllerArch of LayerController is
   signal loadConfig_EXMPLR, startFilterConv_EXMPLR, nx16, counterOut_2, 
      nx116, nx50, nx52, nx76, nx133, nx143, nx153, nx163, nx177, nx184, 
      nx190, nx196, nx202, nx206, nx210, nx213, nx216, nx219, nx221, nx224, 
      nx233, nx235, currentState_1, nx174, currentState_0, nx187, NOT_clk, 
      nx212, nx199, nx26, nx243, nx244, nx245, nx246, nx247, nx248, nx123: 
   std_logic ;

begin
   loadConfig <= loadConfig_EXMPLR ;
   startFilterConv <= startFilterConv_EXMPLR ;
   ix9 : nor02_2x port map ( Y=>finish, A0=>nx243, A1=>nx187);
   ix164 : mux21 port map ( Y=>nx163, A0=>nx177, A1=>nx243, S0=>nx184);
   ix185 : aoi222 port map ( Y=>nx184, A0=>dmaFinish, A1=>loadConfig_EXMPLR, 
      B0=>currentState_1, B1=>nx244, C0=>nx16, C1=>nx76);
   ix95 : nor02_2x port map ( Y=>loadConfig_EXMPLR, A0=>currentState_1, A1=>
      nx187);
   ix17 : nor02_2x port map ( Y=>nx16, A0=>nx244, A1=>nx190);
   ix191 : nor02_2x port map ( Y=>nx190, A0=>nx174, A1=>filterFinish);
   ix77 : oai32 port map ( Y=>nx76, A0=>nx50, A1=>nx52, A2=>nx219, B0=>nx224, 
      B1=>startFilterConv_EXMPLR);
   ix51 : xnor2 port map ( Y=>nx50, A0=>counterOut_2, A1=>nx216);
   counterMap_counterReg_reg_Q_2 : dffr port map ( Q=>counterOut_2, QB=>OPEN, 
      D=>nx153, CLK=>clk, R=>nx26);
   ix154 : oai21 port map ( Y=>nx153, A0=>nx196, A1=>nx210, B0=>nx213);
   ix197 : xnor2 port map ( Y=>nx196, A0=>counterOut_2, A1=>nx116);
   ix43 : nor02_2x port map ( Y=>nx116, A0=>nx246, A1=>nx245);
   ix144 : mux21 port map ( Y=>nx143, A0=>nx202, A1=>nx246, S0=>nx210);
   ix207 : nand02 port map ( Y=>nx206, A0=>clk, A1=>nx174);
   ix211 : oai21 port map ( Y=>nx210, A0=>nx174, A1=>filterFinish, B0=>nx187
   );
   ix214 : oai21 port map ( Y=>nx213, A0=>nx244, A1=>nx190, B0=>counterOut_2
   );
   ix217 : inv01 port map ( Y=>nx216, A=>filtersNumber(2));
   ix53 : xnor2 port map ( Y=>nx52, A0=>filtersNumber(0), A1=>nx212);
   ix220 : nand02 port map ( Y=>nx219, A0=>nx221, A1=>startFilterConv_EXMPLR
   );
   ix65 : nor02_2x port map ( Y=>startFilterConv_EXMPLR, A0=>nx174, A1=>
      currentState_0);
   ix225 : inv01 port map ( Y=>nx224, A=>start);
   ix178 : xnor2 port map ( Y=>nx177, A0=>nx243, A1=>nx187);
   ix203 : xnor2 port map ( Y=>nx202, A0=>nx246, A1=>nx245);
   ix134 : xnor2 port map ( Y=>nx133, A0=>nx245, A1=>nx233);
   ix232 : inv01 port map ( Y=>nx233, A=>nx210);
   ix222 : xnor2 port map ( Y=>nx221, A0=>nx199, A1=>nx235);
   ix234 : inv01 port map ( Y=>nx235, A=>filtersNumber(1));
   reg_currentState_1 : dffr port map ( Q=>currentState_1, QB=>nx174, D=>
      nx163, CLK=>NOT_clk, R=>resetState);
   reg_currentState_0 : dffr port map ( Q=>currentState_0, QB=>nx187, D=>
      nx123, CLK=>NOT_clk, R=>resetState);
   ix181 : inv01 port map ( Y=>NOT_clk, A=>clk);
   counterMap_counterReg_reg_Q_0 : dffr port map ( Q=>OPEN, QB=>nx212, D=>
      nx133, CLK=>clk, R=>nx26);
   counterMap_counterReg_reg_Q_1 : dffr port map ( Q=>OPEN, QB=>nx199, D=>
      nx143, CLK=>clk, R=>nx26);
   ix27 : nor02_2x port map ( Y=>nx26, A0=>nx244, A1=>nx206);
   ix249 : buf04 port map ( Y=>nx243, A=>nx174);
   ix250 : buf04 port map ( Y=>nx244, A=>currentState_0);
   ix251 : buf04 port map ( Y=>nx245, A=>nx212);
   ix252 : buf04 port map ( Y=>nx246, A=>nx199);
   ix253 : inv01 port map ( Y=>nx247, A=>nx184);
   ix254 : inv02 port map ( Y=>nx248, A=>nx187);
   reg_nx123 : oai22 port map ( Y=>nx123, A0=>nx247, A1=>nx187, B0=>nx248, 
      B1=>nx184);
end LayerControllerArch ;

