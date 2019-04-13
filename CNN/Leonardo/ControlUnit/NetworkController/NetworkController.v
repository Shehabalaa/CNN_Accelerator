//
// Verilog description for cell NetworkController, 
// Fri Apr 12 11:10:57 2019
//
// LeonardoSpectrum Level 3, 2018a.2 
//


module NetworkController ( start, dmaFinish, oneLayerFinish, resetState, clk, 
                           layersNumber, loadConfig, startOneLayer, finish ) ;

    input start ;
    input dmaFinish ;
    input oneLayerFinish ;
    input resetState ;
    input clk ;
    input [1:0]layersNumber ;
    output loadConfig ;
    output startOneLayer ;
    output finish ;

    wire nx16, counterOut_0, nx30, nx58, nx130, nx140, nx150, nx164, nx171, 
         nx177, nx180, nx182, nx184, nx188, nx191, nx194, nx198, nx200, nx202, 
         nx212, nx214, currentState_0, nx174, currentState_0__XX0_XREP22, 
         nx174_XX0_XREP22, currentState_1, nx161, NOT_clk, 
         currentState_1__XX0_XREP24, nx161_XX0_XREP24, nx221, nx222, nx120;
    wire [1:0] \$dummy ;




    nor02_2x ix9 (.Y (finish), .A0 (nx161), .A1 (nx174)) ;
    mux21 ix151 (.Y (nx150), .A0 (nx164), .A1 (nx161), .S0 (nx171)) ;
    aoi222 ix172 (.Y (nx171), .A0 (dmaFinish), .A1 (loadConfig), .B0 (
           currentState_1), .B1 (currentState_0), .C0 (nx16), .C1 (nx58)) ;
    nor02_2x ix77 (.Y (loadConfig), .A0 (currentState_1), .A1 (nx174_XX0_XREP22)
             ) ;
    nor02_2x ix17 (.Y (nx16), .A0 (currentState_0), .A1 (nx177)) ;
    nor02_2x ix178 (.Y (nx177), .A0 (nx161_XX0_XREP24), .A1 (oneLayerFinish)) ;
    oai21 ix59 (.Y (nx58), .A0 (nx180), .A1 (nx182), .B0 (nx202)) ;
    nand02 ix181 (.Y (nx180), .A0 (currentState_1__XX0_XREP24), .A1 (
           nx174_XX0_XREP22)) ;
    nand02 ix183 (.Y (nx182), .A0 (nx184), .A1 (nx194)) ;
    xnor2 ix185 (.Y (nx184), .A0 (layersNumber[0]), .A1 (counterOut_0)) ;
    dffr counterMap_counterReg_reg_Q_0 (.Q (counterOut_0), .QB (\$dummy [0]), .D (
         nx130), .CLK (clk), .R (nx30)) ;
    xnor2 ix131 (.Y (nx130), .A0 (counterOut_0), .A1 (nx188)) ;
    oai21 ix189 (.Y (nx188), .A0 (nx161), .A1 (oneLayerFinish), .B0 (nx174)) ;
    nor02_2x ix31 (.Y (nx30), .A0 (currentState_0), .A1 (nx191)) ;
    nand02 ix192 (.Y (nx191), .A0 (clk), .A1 (nx161)) ;
    mux21 ix141 (.Y (nx140), .A0 (nx198), .A1 (nx200), .S0 (nx188)) ;
    dffr counterMap_counterReg_reg_Q_1 (.Q (\$dummy [1]), .QB (nx200), .D (nx140
         ), .CLK (clk), .R (nx30)) ;
    oai21 ix203 (.Y (nx202), .A0 (nx161_XX0_XREP24), .A1 (
          currentState_0__XX0_XREP22), .B0 (start)) ;
    nor02_2x ix21 (.Y (startOneLayer), .A0 (nx161), .A1 (currentState_0)) ;
    xnor2 ix165 (.Y (nx164), .A0 (nx161), .A1 (nx174)) ;
    xnor2 ix195 (.Y (nx194), .A0 (nx200), .A1 (nx212)) ;
    inv01 ix211 (.Y (nx212), .A (layersNumber[1])) ;
    xnor2 ix199 (.Y (nx198), .A0 (nx200), .A1 (nx214)) ;
    inv01 ix213 (.Y (nx214), .A (counterOut_0)) ;
    dffr reg_currentState_0 (.Q (currentState_0), .QB (nx174), .D (nx120), .CLK (
         NOT_clk), .R (resetState)) ;
    dffr reg_currentState_0__0_XREP22 (.Q (currentState_0__XX0_XREP22), .QB (
         nx174_XX0_XREP22), .D (nx120), .CLK (NOT_clk), .R (resetState)) ;
    dffr reg_currentState_1 (.Q (currentState_1), .QB (nx161), .D (nx150), .CLK (
         NOT_clk), .R (resetState)) ;
    inv01 ix168 (.Y (NOT_clk), .A (clk)) ;
    dffr reg_currentState_1__0_XREP24 (.Q (currentState_1__XX0_XREP24), .QB (
         nx161_XX0_XREP24), .D (nx150), .CLK (NOT_clk), .R (resetState)) ;
    inv01 ix223 (.Y (nx221), .A (nx171)) ;
    inv02 ix224 (.Y (nx222), .A (nx174)) ;
    oai22 reg_nx120 (.Y (nx120), .A0 (nx221), .A1 (nx174), .B0 (nx222), .B1 (
          nx171)) ;
endmodule

