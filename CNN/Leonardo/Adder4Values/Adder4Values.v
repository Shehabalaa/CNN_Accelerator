//
// Verilog description for cell Adder4Values, 
// Wed Apr 10 17:31:43 2019
//
// LeonardoSpectrum Level 3, 2018a.2 
//


module Adder4Values ( a, b, c, d, sum ) ;

    input [15:0]a ;
    input [15:0]b ;
    input [15:0]c ;
    input [15:0]d ;
    output [15:0]sum ;

    wire sum1_15, sum1_14, sum1_13, sum1_12, sum1_11, sum1_10, sum1_9, sum1_8, 
         sum1_7, sum1_6, sum1_5, sum1_4, sum1_3, sum1_2, sum1_1, sum1_0, sum2_15, 
         sum2_14, sum2_13, sum2_12, sum2_11, sum2_10, sum2_9, sum2_8, sum2_7, 
         sum2_6, sum2_5, sum2_4, sum2_3, sum2_2, sum2_1, sum2_0, GND;
    wire [2:0] \$dummy ;




    NBitAdder_16 sum1Map (.a ({a[15],a[14],a[13],a[12],a[11],a[10],a[9],a[8],
                 a[7],a[6],a[5],a[4],a[3],a[2],a[1],a[0]}), .b ({b[15],b[14],
                 b[13],b[12],b[11],b[10],b[9],b[8],b[7],b[6],b[5],b[4],b[3],b[2]
                 ,b[1],b[0]}), .carryIn (GND), .sum ({sum1_15,sum1_14,sum1_13,
                 sum1_12,sum1_11,sum1_10,sum1_9,sum1_8,sum1_7,sum1_6,sum1_5,
                 sum1_4,sum1_3,sum1_2,sum1_1,sum1_0}), .carryOut (\$dummy [0])
                 ) ;
    NBitAdder_16 sum2Map (.a ({c[15],c[14],c[13],c[12],c[11],c[10],c[9],c[8],
                 c[7],c[6],c[5],c[4],c[3],c[2],c[1],c[0]}), .b ({d[15],d[14],
                 d[13],d[12],d[11],d[10],d[9],d[8],d[7],d[6],d[5],d[4],d[3],d[2]
                 ,d[1],d[0]}), .carryIn (GND), .sum ({sum2_15,sum2_14,sum2_13,
                 sum2_12,sum2_11,sum2_10,sum2_9,sum2_8,sum2_7,sum2_6,sum2_5,
                 sum2_4,sum2_3,sum2_2,sum2_1,sum2_0}), .carryOut (\$dummy [1])
                 ) ;
    NBitAdder_16 sumFinalMap (.a ({sum1_15,sum1_14,sum1_13,sum1_12,sum1_11,
                 sum1_10,sum1_9,sum1_8,sum1_7,sum1_6,sum1_5,sum1_4,sum1_3,sum1_2
                 ,sum1_1,sum1_0}), .b ({sum2_15,sum2_14,sum2_13,sum2_12,sum2_11,
                 sum2_10,sum2_9,sum2_8,sum2_7,sum2_6,sum2_5,sum2_4,sum2_3,sum2_2
                 ,sum2_1,sum2_0}), .carryIn (GND), .sum ({sum[15],sum[14],
                 sum[13],sum[12],sum[11],sum[10],sum[9],sum[8],sum[7],sum[6],
                 sum[5],sum[4],sum[3],sum[2],sum[1],sum[0]}), .carryOut (
                 \$dummy [2])) ;
    fake_gnd ix147 (.Y (GND)) ;
endmodule


module NBitAdder_16 ( a, b, carryIn, sum, carryOut ) ;

    input [15:0]a ;
    input [15:0]b ;
    input carryIn ;
    output [15:0]sum ;
    output carryOut ;

    wire nx2, nx8, nx10, nx18, nx24, nx26, nx34, nx40, nx42, nx50, nx56, nx58, 
         nx66, nx72, nx74, nx82, nx88, nx90, nx98, nx104, nx106, nx114, nx85, 
         nx89, nx93, nx99, nx101, nx103, nx107, nx111, nx115, nx121, nx123, 
         nx125, nx129, nx133, nx137, nx143, nx145, nx147, nx151, nx154, nx157, 
         nx161, nx163, nx165, nx168, nx171, nx174, nx178, nx180, nx182, nx185, 
         nx188, nx191, nx195, nx197, nx199, nx202, nx205, nx208, nx212, nx214, 
         nx216, nx219, nx222, nx225;



    fake_gnd ix42 (.Y (carryOut)) ;
    xnor2 ix151 (.Y (sum[0]), .A0 (b[0]), .A1 (nx85)) ;
    inv01 ix86 (.Y (nx85), .A (a[0])) ;
    xnor2 ix145 (.Y (sum[1]), .A0 (nx89), .A1 (nx2)) ;
    nand02 ix90 (.Y (nx89), .A0 (b[0]), .A1 (a[0])) ;
    xnor2 ix3 (.Y (nx2), .A0 (a[1]), .A1 (nx93)) ;
    inv01 ix94 (.Y (nx93), .A (b[1])) ;
    xnor2 ix143 (.Y (sum[2]), .A0 (nx8), .A1 (nx103)) ;
    oai22 ix9 (.Y (nx8), .A0 (nx89), .A1 (nx99), .B0 (nx93), .B1 (nx101)) ;
    xnor2 ix100 (.Y (nx99), .A0 (a[1]), .A1 (b[1])) ;
    inv01 ix102 (.Y (nx101), .A (a[1])) ;
    xnor2 ix104 (.Y (nx103), .A0 (a[2]), .A1 (b[2])) ;
    xnor2 ix141 (.Y (sum[3]), .A0 (nx107), .A1 (nx18)) ;
    aoi22 ix108 (.Y (nx107), .A0 (b[2]), .A1 (a[2]), .B0 (nx8), .B1 (nx10)) ;
    xnor2 ix11 (.Y (nx10), .A0 (a[2]), .A1 (nx111)) ;
    inv01 ix112 (.Y (nx111), .A (b[2])) ;
    xnor2 ix19 (.Y (nx18), .A0 (a[3]), .A1 (nx115)) ;
    inv01 ix116 (.Y (nx115), .A (b[3])) ;
    xnor2 ix139 (.Y (sum[4]), .A0 (nx24), .A1 (nx125)) ;
    oai21 ix25 (.Y (nx24), .A0 (nx107), .A1 (nx121), .B0 (nx123)) ;
    xnor2 ix122 (.Y (nx121), .A0 (a[3]), .A1 (b[3])) ;
    nand02 ix124 (.Y (nx123), .A0 (b[3]), .A1 (a[3])) ;
    xnor2 ix126 (.Y (nx125), .A0 (a[4]), .A1 (b[4])) ;
    xnor2 ix137 (.Y (sum[5]), .A0 (nx129), .A1 (nx34)) ;
    aoi22 ix130 (.Y (nx129), .A0 (b[4]), .A1 (a[4]), .B0 (nx24), .B1 (nx26)) ;
    xnor2 ix27 (.Y (nx26), .A0 (a[4]), .A1 (nx133)) ;
    inv01 ix134 (.Y (nx133), .A (b[4])) ;
    xnor2 ix35 (.Y (nx34), .A0 (a[5]), .A1 (nx137)) ;
    inv01 ix138 (.Y (nx137), .A (b[5])) ;
    xnor2 ix135 (.Y (sum[6]), .A0 (nx40), .A1 (nx147)) ;
    oai21 ix41 (.Y (nx40), .A0 (nx129), .A1 (nx143), .B0 (nx145)) ;
    xnor2 ix144 (.Y (nx143), .A0 (a[5]), .A1 (b[5])) ;
    nand02 ix146 (.Y (nx145), .A0 (b[5]), .A1 (a[5])) ;
    xnor2 ix148 (.Y (nx147), .A0 (a[6]), .A1 (b[6])) ;
    xnor2 ix133 (.Y (sum[7]), .A0 (nx151), .A1 (nx50)) ;
    aoi22 ix152 (.Y (nx151), .A0 (b[6]), .A1 (a[6]), .B0 (nx40), .B1 (nx42)) ;
    xnor2 ix43 (.Y (nx42), .A0 (a[6]), .A1 (nx154)) ;
    inv01 ix155 (.Y (nx154), .A (b[6])) ;
    xnor2 ix51 (.Y (nx50), .A0 (a[7]), .A1 (nx157)) ;
    inv01 ix158 (.Y (nx157), .A (b[7])) ;
    xnor2 ix131 (.Y (sum[8]), .A0 (nx56), .A1 (nx165)) ;
    oai21 ix57 (.Y (nx56), .A0 (nx151), .A1 (nx161), .B0 (nx163)) ;
    xnor2 ix162 (.Y (nx161), .A0 (a[7]), .A1 (b[7])) ;
    nand02 ix164 (.Y (nx163), .A0 (b[7]), .A1 (a[7])) ;
    xnor2 ix166 (.Y (nx165), .A0 (a[8]), .A1 (b[8])) ;
    xnor2 ix129 (.Y (sum[9]), .A0 (nx168), .A1 (nx66)) ;
    aoi22 ix169 (.Y (nx168), .A0 (b[8]), .A1 (a[8]), .B0 (nx56), .B1 (nx58)) ;
    xnor2 ix59 (.Y (nx58), .A0 (a[8]), .A1 (nx171)) ;
    inv01 ix172 (.Y (nx171), .A (b[8])) ;
    xnor2 ix67 (.Y (nx66), .A0 (a[9]), .A1 (nx174)) ;
    inv01 ix175 (.Y (nx174), .A (b[9])) ;
    xnor2 ix127 (.Y (sum[10]), .A0 (nx72), .A1 (nx182)) ;
    oai21 ix73 (.Y (nx72), .A0 (nx168), .A1 (nx178), .B0 (nx180)) ;
    xnor2 ix179 (.Y (nx178), .A0 (a[9]), .A1 (b[9])) ;
    nand02 ix181 (.Y (nx180), .A0 (b[9]), .A1 (a[9])) ;
    xnor2 ix183 (.Y (nx182), .A0 (a[10]), .A1 (b[10])) ;
    xnor2 ix125 (.Y (sum[11]), .A0 (nx185), .A1 (nx82)) ;
    aoi22 ix186 (.Y (nx185), .A0 (b[10]), .A1 (a[10]), .B0 (nx72), .B1 (nx74)) ;
    xnor2 ix75 (.Y (nx74), .A0 (a[10]), .A1 (nx188)) ;
    inv01 ix189 (.Y (nx188), .A (b[10])) ;
    xnor2 ix83 (.Y (nx82), .A0 (a[11]), .A1 (nx191)) ;
    inv01 ix192 (.Y (nx191), .A (b[11])) ;
    xnor2 ix123 (.Y (sum[12]), .A0 (nx88), .A1 (nx199)) ;
    oai21 ix89 (.Y (nx88), .A0 (nx185), .A1 (nx195), .B0 (nx197)) ;
    xnor2 ix196 (.Y (nx195), .A0 (a[11]), .A1 (b[11])) ;
    nand02 ix198 (.Y (nx197), .A0 (b[11]), .A1 (a[11])) ;
    xnor2 ix200 (.Y (nx199), .A0 (a[12]), .A1 (b[12])) ;
    xnor2 ix121 (.Y (sum[13]), .A0 (nx202), .A1 (nx98)) ;
    aoi22 ix203 (.Y (nx202), .A0 (b[12]), .A1 (a[12]), .B0 (nx88), .B1 (nx90)) ;
    xnor2 ix91 (.Y (nx90), .A0 (a[12]), .A1 (nx205)) ;
    inv01 ix206 (.Y (nx205), .A (b[12])) ;
    xnor2 ix99 (.Y (nx98), .A0 (a[13]), .A1 (nx208)) ;
    inv01 ix209 (.Y (nx208), .A (b[13])) ;
    xnor2 ix119 (.Y (sum[14]), .A0 (nx104), .A1 (nx216)) ;
    oai21 ix105 (.Y (nx104), .A0 (nx202), .A1 (nx212), .B0 (nx214)) ;
    xnor2 ix213 (.Y (nx212), .A0 (a[13]), .A1 (b[13])) ;
    nand02 ix215 (.Y (nx214), .A0 (b[13]), .A1 (a[13])) ;
    xnor2 ix217 (.Y (nx216), .A0 (a[14]), .A1 (b[14])) ;
    xnor2 ix117 (.Y (sum[15]), .A0 (nx219), .A1 (nx114)) ;
    aoi22 ix220 (.Y (nx219), .A0 (b[14]), .A1 (a[14]), .B0 (nx104), .B1 (nx106)
          ) ;
    xnor2 ix107 (.Y (nx106), .A0 (a[14]), .A1 (nx222)) ;
    inv01 ix223 (.Y (nx222), .A (b[14])) ;
    xnor2 ix115 (.Y (nx114), .A0 (a[15]), .A1 (nx225)) ;
    inv01 ix226 (.Y (nx225), .A (b[15])) ;
endmodule

