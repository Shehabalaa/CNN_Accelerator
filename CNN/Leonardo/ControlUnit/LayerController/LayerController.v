//
// Verilog description for cell LayerController, 
// Fri Apr 12 12:59:54 2019
//
// LeonardoSpectrum Level 3, 2018a.2 
//


module LayerController ( start, dmaFinish, filterFinish, resetState, clk, 
                         filtersNumber, loadConfig, startFilterConv, finish ) ;

    input start ;
    input dmaFinish ;
    input filterFinish ;
    input resetState ;
    input clk ;
    input [2:0]filtersNumber ;
    output loadConfig ;
    output startFilterConv ;
    output finish ;

    wire nx16, counterOut_2, nx116, nx50, nx52, nx76, nx133, nx143, nx153, nx163, 
         nx177, nx184, nx190, nx196, nx202, nx206, nx210, nx213, nx216, nx219, 
         nx221, nx224, nx233, nx235, currentState_1, nx174, currentState_0, 
         nx187, NOT_clk, nx212, nx199, nx26, nx243, nx244, nx245, nx246, nx247, 
         nx248, nx123;
    wire [2:0] \$dummy ;




    nor02_2x ix9 (.Y (finish), .A0 (nx243), .A1 (nx187)) ;
    mux21 ix164 (.Y (nx163), .A0 (nx177), .A1 (nx243), .S0 (nx184)) ;
    aoi222 ix185 (.Y (nx184), .A0 (dmaFinish), .A1 (loadConfig), .B0 (
           currentState_1), .B1 (nx244), .C0 (nx16), .C1 (nx76)) ;
    nor02_2x ix95 (.Y (loadConfig), .A0 (currentState_1), .A1 (nx187)) ;
    nor02_2x ix17 (.Y (nx16), .A0 (nx244), .A1 (nx190)) ;
    nor02_2x ix191 (.Y (nx190), .A0 (nx174), .A1 (filterFinish)) ;
    oai32 ix77 (.Y (nx76), .A0 (nx50), .A1 (nx52), .A2 (nx219), .B0 (nx224), .B1 (
          startFilterConv)) ;
    xnor2 ix51 (.Y (nx50), .A0 (counterOut_2), .A1 (nx216)) ;
    dffr counterMap_counterReg_reg_Q_2 (.Q (counterOut_2), .QB (\$dummy [0]), .D (
         nx153), .CLK (clk), .R (nx26)) ;
    oai21 ix154 (.Y (nx153), .A0 (nx196), .A1 (nx210), .B0 (nx213)) ;
    xnor2 ix197 (.Y (nx196), .A0 (counterOut_2), .A1 (nx116)) ;
    nor02_2x ix43 (.Y (nx116), .A0 (nx246), .A1 (nx245)) ;
    mux21 ix144 (.Y (nx143), .A0 (nx202), .A1 (nx246), .S0 (nx210)) ;
    nand02 ix207 (.Y (nx206), .A0 (clk), .A1 (nx174)) ;
    oai21 ix211 (.Y (nx210), .A0 (nx174), .A1 (filterFinish), .B0 (nx187)) ;
    oai21 ix214 (.Y (nx213), .A0 (nx244), .A1 (nx190), .B0 (counterOut_2)) ;
    inv01 ix217 (.Y (nx216), .A (filtersNumber[2])) ;
    xnor2 ix53 (.Y (nx52), .A0 (filtersNumber[0]), .A1 (nx212)) ;
    nand02 ix220 (.Y (nx219), .A0 (nx221), .A1 (startFilterConv)) ;
    nor02_2x ix65 (.Y (startFilterConv), .A0 (nx174), .A1 (currentState_0)) ;
    inv01 ix225 (.Y (nx224), .A (start)) ;
    xnor2 ix178 (.Y (nx177), .A0 (nx243), .A1 (nx187)) ;
    xnor2 ix203 (.Y (nx202), .A0 (nx246), .A1 (nx245)) ;
    xnor2 ix134 (.Y (nx133), .A0 (nx245), .A1 (nx233)) ;
    inv01 ix232 (.Y (nx233), .A (nx210)) ;
    xnor2 ix222 (.Y (nx221), .A0 (nx199), .A1 (nx235)) ;
    inv01 ix234 (.Y (nx235), .A (filtersNumber[1])) ;
    dffr reg_currentState_1 (.Q (currentState_1), .QB (nx174), .D (nx163), .CLK (
         NOT_clk), .R (resetState)) ;
    dffr reg_currentState_0 (.Q (currentState_0), .QB (nx187), .D (nx123), .CLK (
         NOT_clk), .R (resetState)) ;
    inv01 ix181 (.Y (NOT_clk), .A (clk)) ;
    dffr counterMap_counterReg_reg_Q_0 (.Q (\$dummy [1]), .QB (nx212), .D (nx133
         ), .CLK (clk), .R (nx26)) ;
    dffr counterMap_counterReg_reg_Q_1 (.Q (\$dummy [2]), .QB (nx199), .D (nx143
         ), .CLK (clk), .R (nx26)) ;
    nor02_2x ix27 (.Y (nx26), .A0 (nx244), .A1 (nx206)) ;
    buf04 ix249 (.Y (nx243), .A (nx174)) ;
    buf04 ix250 (.Y (nx244), .A (currentState_0)) ;
    buf04 ix251 (.Y (nx245), .A (nx212)) ;
    buf04 ix252 (.Y (nx246), .A (nx199)) ;
    inv01 ix253 (.Y (nx247), .A (nx184)) ;
    inv02 ix254 (.Y (nx248), .A (nx187)) ;
    oai22 reg_nx123 (.Y (nx123), .A0 (nx247), .A1 (nx187), .B0 (nx248), .B1 (
          nx184)) ;
endmodule

