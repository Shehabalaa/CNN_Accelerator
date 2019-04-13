//
// Verilog description for cell FilterController, 
// Fri Apr 12 13:00:00 2019
//
// LeonardoSpectrum Level 3, 2018a.2 
//


module FilterController ( start, dmaFinish, oneConvFinish, resetState, clk, 
                          depth, startOneConv, loadConfig, filterLastLayer, 
                          finish ) ;

    input start ;
    input dmaFinish ;
    input oneConvFinish ;
    input resetState ;
    input clk ;
    input [2:0]depth ;
    output startOneConv ;
    output loadConfig ;
    output filterLastLayer ;
    output finish ;

    wire currentState_0, nx125, NOT_clk, nx16, counterOut_2, nx126, nx26, nx50, 
         nx52, nx74, nx133, nx143, nx153, nx163, nx173, nx187, nx190, nx193, 
         nx199, nx202, nx208, nx214, nx216, nx218, nx220, nx223, nx225, nx227, 
         nx229, nx233, nx234, nx237, nx240, nx242, nx251, nx253, nx257, nx255, 
         currentState_1, nx270, nx271;
    wire [3:0] \$dummy ;




    nor03_2x ix71 (.Y (filterLastLayer), .A0 (nx50), .A1 (nx52), .A2 (nx240)) ;
    xnor2 ix51 (.Y (nx50), .A0 (counterOut_2), .A1 (nx237)) ;
    dffr counterMap_counterReg_reg_Q_2 (.Q (counterOut_2), .QB (\$dummy [0]), .D (
         nx163), .CLK (clk), .R (nx26)) ;
    oai21 ix164 (.Y (nx163), .A0 (nx187), .A1 (nx214), .B0 (nx234)) ;
    xnor2 ix188 (.Y (nx187), .A0 (counterOut_2), .A1 (nx126)) ;
    nor02_2x ix43 (.Y (nx126), .A0 (nx190), .A1 (nx233)) ;
    mux21 ix154 (.Y (nx153), .A0 (nx193), .A1 (nx190), .S0 (nx214)) ;
    dffr counterMap_counterReg_reg_Q_1 (.Q (\$dummy [1]), .QB (nx190), .D (nx153
         ), .CLK (clk), .R (nx26)) ;
    nor02_2x ix27 (.Y (nx26), .A0 (currentState_0), .A1 (nx229)) ;
    oai21 ix134 (.Y (nx133), .A0 (currentState_0), .A1 (nx199), .B0 (nx225)) ;
    oai21 ix200 (.Y (nx199), .A0 (nx74), .A1 (filterLastLayer), .B0 (nx16)) ;
    nor02_2x ix75 (.Y (nx74), .A0 (nx202), .A1 (startOneConv)) ;
    inv01 ix203 (.Y (nx202), .A (start)) ;
    nor02_2x ix65 (.Y (startOneConv), .A0 (nx255), .A1 (currentState_0)) ;
    mux21 ix174 (.Y (nx173), .A0 (nx271), .A1 (nx208), .S0 (nx125)) ;
    inv01 ix212 (.Y (NOT_clk), .A (clk)) ;
    oai221 ix85 (.Y (nx125), .A0 (nx214), .A1 (nx218), .B0 (nx271), .B1 (nx216)
           , .C0 (nx220)) ;
    oai21 ix215 (.Y (nx214), .A0 (nx270), .A1 (oneConvFinish), .B0 (nx216)) ;
    dffr reg_currentState_0 (.Q (currentState_0), .QB (nx216), .D (nx133), .CLK (
         NOT_clk), .R (resetState)) ;
    nor02_2x ix219 (.Y (nx218), .A0 (nx74), .A1 (filterLastLayer)) ;
    nand02 ix221 (.Y (nx220), .A0 (dmaFinish), .A1 (currentState_0)) ;
    nor02_2x ix17 (.Y (nx16), .A0 (currentState_0), .A1 (nx223)) ;
    nor02_2x ix224 (.Y (nx223), .A0 (nx270), .A1 (oneConvFinish)) ;
    nand03 ix226 (.Y (nx225), .A0 (currentState_0), .A1 (nx227), .A2 (nx270)) ;
    inv01 ix228 (.Y (nx227), .A (dmaFinish)) ;
    nand02 ix230 (.Y (nx229), .A0 (clk), .A1 (nx270)) ;
    dffr counterMap_counterReg_reg_Q_0 (.Q (\$dummy [2]), .QB (nx233), .D (nx143
         ), .CLK (clk), .R (nx26)) ;
    oai21 ix235 (.Y (nx234), .A0 (currentState_0), .A1 (nx223), .B0 (
          counterOut_2)) ;
    inv01 ix238 (.Y (nx237), .A (depth[2])) ;
    xnor2 ix53 (.Y (nx52), .A0 (depth[0]), .A1 (nx233)) ;
    nand02 ix241 (.Y (nx240), .A0 (nx242), .A1 (startOneConv)) ;
    nor02_2x ix9 (.Y (finish), .A0 (nx257), .A1 (nx216)) ;
    nor02_2x ix95 (.Y (loadConfig), .A0 (currentState_1), .A1 (nx216)) ;
    xnor2 ix194 (.Y (nx193), .A0 (nx190), .A1 (nx233)) ;
    xnor2 ix209 (.Y (nx208), .A0 (nx257), .A1 (nx216)) ;
    xnor2 ix144 (.Y (nx143), .A0 (nx233), .A1 (nx251)) ;
    inv01 ix250 (.Y (nx251), .A (nx214)) ;
    xnor2 ix243 (.Y (nx242), .A0 (nx190), .A1 (nx253)) ;
    inv01 ix252 (.Y (nx253), .A (depth[1])) ;
    inv02 ix256 (.Y (nx257), .A (currentState_1)) ;
    inv02 ix254 (.Y (nx255), .A (currentState_1)) ;
    dffr reg_currentState_1 (.Q (currentState_1), .QB (\$dummy [3]), .D (nx173)
         , .CLK (NOT_clk), .R (resetState)) ;
    buf04 ix272 (.Y (nx270), .A (nx255)) ;
    buf04 ix273 (.Y (nx271), .A (nx270)) ;
endmodule

