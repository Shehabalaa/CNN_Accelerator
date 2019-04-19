//
// Verilog description for cell Decompressor, 
// Wed Apr 17 22:03:01 2019
//
// LeonardoSpectrum Level 3, 2018a.2 
//


module Decompressor ( dataIn, clk, en, rst, imageLoad, intrDelayed, zeroState, 
                      dataOut ) ;

    input [5:0]dataIn ;
    input clk ;
    input en ;
    input rst ;
    input imageLoad ;
    input intrDelayed ;
    output zeroState ;
    output [7:0]dataOut ;

    wire countOut_5, countOut_4, countOut_3, countOut_2, countOut_1, countOut_0, 
         nx53, nx65;
    wire [0:0] \$dummy ;




    assign dataOut[6] = dataOut[7] ;
    assign dataOut[5] = dataOut[7] ;
    assign dataOut[4] = dataOut[7] ;
    assign dataOut[3] = dataOut[7] ;
    assign dataOut[2] = dataOut[7] ;
    assign dataOut[1] = dataOut[7] ;
    DownCounterAsyncLoad_6 Counter (.loadData ({dataIn[5],dataIn[4],dataIn[3],
                           dataIn[2],dataIn[1],dataIn[0]}), .en (en), .load (
                           intrDelayed), .rst (rst), .clk (clk), .counterOutput (
                           {countOut_5,countOut_4,countOut_3,countOut_2,
                           countOut_1,countOut_0})) ;
    fake_gnd ix36 (.Y (dataOut[7])) ;
    dffr MyReg_reg_Q_0 (.Q (dataOut[0]), .QB (\$dummy [0]), .D (nx53), .CLK (clk
         ), .R (rst)) ;
    or02 ix54 (.Y (nx53), .A0 (dataOut[0]), .A1 (imageLoad)) ;
    nor04 ix27 (.Y (zeroState), .A0 (countOut_3), .A1 (countOut_5), .A2 (
          countOut_4), .A3 (nx65)) ;
    or03 ix66 (.Y (nx65), .A0 (countOut_0), .A1 (countOut_2), .A2 (countOut_1)
         ) ;
endmodule


module DownCounterAsyncLoad_6 ( loadData, en, load, rst, clk, counterOutput ) ;

    input [5:0]loadData ;
    input en ;
    input load ;
    input rst ;
    input clk ;
    output [5:0]counterOutput ;

    wire nx8, nx20, nx24, nx32, nx36, nx44, nx71, nx54, nx60, nx66, nx74, nx80, 
         nx84, nx90, nx96, nx104, nx110, nx114, nx120, nx126, nx134, nx140, 
         nx144, nx148, nx156, nx162, nx166, nx79, nx89, nx99, nx109, nx119, 
         nx129, nx149, nx157, nx209, nx211, nx213;
    wire [5:0] \$dummy ;




    dffsr_ni counterReg_reg_Q_0 (.Q (counterOutput[0]), .QB (\$dummy [0]), .D (
             nx79), .CLK (clk), .S (nx24), .R (nx20)) ;
    mux21_ni ix80 (.Y (nx79), .A0 (counterOutput[0]), .A1 (nx8), .S0 (en)) ;
    oai21 ix9 (.Y (nx8), .A0 (load), .A1 (counterOutput[0]), .B0 (nx149)) ;
    nand02 ix150 (.Y (nx149), .A0 (loadData[0]), .A1 (load)) ;
    and04 ix25 (.Y (nx24), .A0 (en), .A1 (load), .A2 (nx209), .A3 (loadData[0])
          ) ;
    oai21 ix21 (.Y (nx20), .A0 (nx213), .A1 (nx8), .B0 (nx209)) ;
    aoi21 ix158 (.Y (nx157), .A0 (en), .A1 (load), .B0 (rst)) ;
    dffsr_ni counterReg_reg_Q_1 (.Q (counterOutput[1]), .QB (\$dummy [1]), .D (
             nx89), .CLK (clk), .S (nx54), .R (nx71)) ;
    mux21_ni ix90 (.Y (nx89), .A0 (counterOutput[1]), .A1 (nx44), .S0 (en)) ;
    mux21_ni ix45 (.Y (nx44), .A0 (nx36), .A1 (loadData[1]), .S0 (load)) ;
    xnor2 ix37 (.Y (nx36), .A0 (counterOutput[0]), .A1 (counterOutput[1])) ;
    and04 ix55 (.Y (nx54), .A0 (en), .A1 (load), .A2 (nx209), .A3 (loadData[1])
          ) ;
    oai21 ix53 (.Y (nx71), .A0 (nx213), .A1 (nx44), .B0 (nx209)) ;
    dffsr_ni counterReg_reg_Q_2 (.Q (counterOutput[2]), .QB (\$dummy [2]), .D (
             nx99), .CLK (clk), .S (nx84), .R (nx80)) ;
    mux21_ni ix100 (.Y (nx99), .A0 (counterOutput[2]), .A1 (nx74), .S0 (en)) ;
    mux21_ni ix75 (.Y (nx74), .A0 (nx66), .A1 (loadData[2]), .S0 (load)) ;
    xor2 ix67 (.Y (nx66), .A0 (nx32), .A1 (counterOutput[2])) ;
    nor02_2x ix33 (.Y (nx32), .A0 (counterOutput[0]), .A1 (counterOutput[1])) ;
    and04 ix85 (.Y (nx84), .A0 (en), .A1 (load), .A2 (nx209), .A3 (loadData[2])
          ) ;
    oai21 ix81 (.Y (nx80), .A0 (nx213), .A1 (nx74), .B0 (nx209)) ;
    dffsr_ni counterReg_reg_Q_3 (.Q (counterOutput[3]), .QB (\$dummy [3]), .D (
             nx109), .CLK (clk), .S (nx114), .R (nx110)) ;
    mux21_ni ix110 (.Y (nx109), .A0 (counterOutput[3]), .A1 (nx104), .S0 (en)) ;
    mux21_ni ix105 (.Y (nx104), .A0 (nx96), .A1 (loadData[3]), .S0 (load)) ;
    xor2 ix97 (.Y (nx96), .A0 (nx60), .A1 (counterOutput[3])) ;
    nor03_2x ix61 (.Y (nx60), .A0 (counterOutput[0]), .A1 (counterOutput[1]), .A2 (
             counterOutput[2])) ;
    and04 ix115 (.Y (nx114), .A0 (en), .A1 (load), .A2 (nx209), .A3 (loadData[3]
          )) ;
    oai21 ix111 (.Y (nx110), .A0 (nx213), .A1 (nx104), .B0 (nx211)) ;
    dffsr_ni counterReg_reg_Q_4 (.Q (counterOutput[4]), .QB (\$dummy [4]), .D (
             nx119), .CLK (clk), .S (nx144), .R (nx140)) ;
    mux21_ni ix120 (.Y (nx119), .A0 (counterOutput[4]), .A1 (nx134), .S0 (en)) ;
    mux21_ni ix135 (.Y (nx134), .A0 (nx126), .A1 (loadData[4]), .S0 (load)) ;
    xor2 ix127 (.Y (nx126), .A0 (nx90), .A1 (counterOutput[4])) ;
    nor04 ix91 (.Y (nx90), .A0 (counterOutput[0]), .A1 (counterOutput[1]), .A2 (
          counterOutput[2]), .A3 (counterOutput[3])) ;
    and04 ix145 (.Y (nx144), .A0 (en), .A1 (load), .A2 (nx211), .A3 (loadData[4]
          )) ;
    oai21 ix141 (.Y (nx140), .A0 (nx213), .A1 (nx134), .B0 (nx211)) ;
    dffsr_ni counterReg_reg_Q_5 (.Q (counterOutput[5]), .QB (\$dummy [5]), .D (
             nx129), .CLK (clk), .S (nx166), .R (nx162)) ;
    mux21_ni ix130 (.Y (nx129), .A0 (counterOutput[5]), .A1 (nx156), .S0 (en)) ;
    mux21_ni ix157 (.Y (nx156), .A0 (nx148), .A1 (loadData[5]), .S0 (load)) ;
    xor2 ix149 (.Y (nx148), .A0 (counterOutput[5]), .A1 (nx120)) ;
    nor02ii ix121 (.Y (nx120), .A0 (counterOutput[4]), .A1 (nx90)) ;
    and04 ix167 (.Y (nx166), .A0 (en), .A1 (load), .A2 (nx211), .A3 (loadData[5]
          )) ;
    oai21 ix163 (.Y (nx162), .A0 (nx156), .A1 (nx213), .B0 (nx211)) ;
    inv02 ix208 (.Y (nx209), .A (rst)) ;
    inv02 ix210 (.Y (nx211), .A (rst)) ;
    buf02 ix212 (.Y (nx213), .A (nx157)) ;
endmodule

