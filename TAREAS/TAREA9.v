//: version "1.8.7"

module CSA(Cout, B, A, S, Cin);
//: interface  /sz:(134, 131) /bd:[ Ti0>A[3:0](12/134) Ti1>B[3:0](94/134) Ri0>Cin(70/131) Lo0<Cout(68/131) Bo0<S[3:0](63/134) ]
input [3:0] B;    //: /sn:0 {0}(170,76)(170,118)(505,118){1}
//: {2}(509,118)(686,118)(686,270)(618,270)(618,327)(596,327)(596,398){3}
//: {4}(507,120)(507,158)(549,158)(549,181){5}
supply0 w0;    //: /sn:0 {0}(663,239)(601,239){1}
input [3:0] A;    //: /sn:0 {0}(504,398)(504,375)(346,375)(346,137){1}
//: {2}(348,135)(457,135)(457,181){3}
//: {4}(344,135)(146,135)(146,77){5}
supply1 w1;    //: /sn:0 {0}(691,437)(691,456)(648,456){1}
input Cin;    //: /sn:0 {0}(510,626)(453,626)(453,588){1}
//: {2}(455,586)(690,586){3}
//: {4}(451,586)(207,586)(207,356){5}
output Cout;    //: /sn:0 {0}(101,331)(137,331)(137,333)(194,333){1}
output [3:0] S;    //: /sn:0 /dp:1 {0}(533,639)(533,686)(572,686){1}
wire [3:0] w4;    //: /sn:0 {0}(515,310)(515,600)(523,600)(523,610){1}
wire w3;    //: /sn:0 {0}(434,241)(233,241)(233,323)(223,323){1}
wire w8;    //: /sn:0 {0}(481,458)(233,458)(233,343)(223,343){1}
wire [3:0] w9;    //: /sn:0 {0}(562,527)(562,600)(543,600)(543,610){1}
//: enddecls

  //: output g8 (Cout) @(104,331) /sn:0 /R:2 /w:[ 0 ]
  //: input g4 (B) @(170,74) /sn:0 /R:3 /w:[ 0 ]
  //: input g3 (A) @(146,75) /sn:0 /R:3 /w:[ 5 ]
  mux g2 (.I0(w3), .I1(w8), .S(Cin), .Z(Cout));   //: @(207,333) /sn:0 /R:3 /w:[ 1 1 5 1 ] /ss:1 /do:0
  SUMADOR_CPA g1 (.A0(A), .B0(B), .Cin(w1), .Cout(w8), .S(w9));   //: @(482, 399) /sz:(165, 127) /sn:0 /p:[ Ti0>0 Ti1>3 Ri0>1 Lo0<0 Bo0<0 ]
  //: supply0 g10 (w0) @(669,239) /sn:0 /R:1 /w:[ 0 ]
  //: joint g6 (B) @(507, 118) /w:[ 2 -1 1 4 ]
  //: output g9 (S) @(569,686) /sn:0 /w:[ 1 ]
  mux g7 (.I0(w4), .I1(w9), .S(Cin), .Z(S));   //: @(533,626) /sn:0 /w:[ 1 1 0 0 ] /ss:0 /do:0
  //: input g12 (Cin) @(692,586) /sn:0 /R:2 /w:[ 3 ]
  //: supply1 g11 (w1) @(702,437) /sn:0 /w:[ 0 ]
  //: joint g5 (A) @(346, 135) /w:[ 2 -1 4 1 ]
  SUMADOR_CPA g0 (.A0(A), .B0(B), .Cin(w0), .Cout(w3), .S(w4));   //: @(435, 182) /sz:(165, 127) /sn:0 /p:[ Ti0>3 Ti1>5 Ri0>1 Lo0<0 Bo0<0 ]
  //: joint g13 (Cin) @(453, 586) /w:[ 2 -1 4 1 ]

endmodule

module half_adder(CO, S, B, A);
//: interface  /sz:(101, 76) /bd:[ Ti0>A(28/101) Ti1>B(64/101) Lo0<CO(38/76) Bo0<S(47/101) ]
input B;    //: /sn:0 {0}(348,356)(369,356){1}
//: {2}(373,356)(442,356)(442,251)(450,251){3}
//: {4}(371,358)(371,369)(453,369){5}
input A;    //: /sn:0 {0}(336,246)(402,246){1}
//: {2}(406,246)(450,246){3}
//: {4}(404,248)(404,364)(453,364){5}
output CO;    //: /sn:0 /dp:1 {0}(474,366)(523,366){1}
output S;    //: /sn:0 /dp:1 {0}(471,248)(522,248){1}
//: enddecls

  and g4 (.I0(B), .I1(A), .Z(CO));   //: @(464,366) /sn:0 /delay:" 2" /w:[ 5 5 0 ]
  //: output g3 (CO) @(520,366) /sn:0 /w:[ 1 ]
  //: output g2 (S) @(519,248) /sn:0 /w:[ 1 ]
  //: input g1 (B) @(346,356) /sn:0 /w:[ 0 ]
  //: joint g6 (A) @(404, 246) /w:[ 2 -1 1 4 ]
  //: joint g7 (B) @(371, 356) /w:[ 2 -1 1 4 ]
  xor g5 (.I0(B), .I1(A), .Z(S));   //: @(461,248) /sn:0 /delay:" 3" /w:[ 3 3 0 ]
  //: input g0 (A) @(334,246) /sn:0 /w:[ 0 ]

endmodule

module CSA16bits(A, S, Cout, Cin, B);
//: interface  /sz:(156, 145) /bd:[ Ti0>A[15:0](20/156) Ti1>B[15:0](114/156) Ri0>Cin(91/145) Lo0<Cout(87/145) Bo0<S[15:0](79/156) ]
input [15:0] B;    //: /sn:0 {0}(208,98)(208,210)(403,210){1}
//: {2}(404,210)(587,210){3}
//: {4}(588,210)(773,210){5}
//: {6}(774,210)(970,210){7}
//: {8}(971,210)(1003,210){9}
input [15:0] A;    //: /sn:0 {0}(185,98)(185,228)(318,228){1}
//: {2}(319,228)(503,228){3}
//: {4}(504,228)(686,228){5}
//: {6}(687,228)(874,228){7}
//: {8}(875,228)(1004,228){9}
input Cin;    //: /sn:0 {0}(1083,342)(1020,342){1}
output Cout;    //: /sn:0 {0}(186,339)(308,339){1}
output [15:0] S;    //: /sn:0 {0}(1120,503)(1036,503){1}
wire w13;    //: /sn:0 {0}(491,341)(444,341){1}
wire [3:0] w16;    //: /sn:0 {0}(321,270)(321,240)(319,240)(319,232){1}
wire [3:0] w6;    //: /sn:0 {0}(687,274)(687,232){1}
wire [3:0] w4;    //: /sn:0 {0}(934,413)(934,518)(1030,518){1}
wire [3:0] w0;    //: /sn:0 {0}(968,284)(968,222)(971,222)(971,214){1}
wire w3;    //: /sn:0 {0}(853,344)(820,344)(820,345)(810,345){1}
wire [3:0] w20;    //: /sn:0 /dp:1 {0}(1030,498)(555,498)(555,405){1}
wire [3:0] w10;    //: /sn:0 {0}(586,272)(586,222)(588,222)(588,214){1}
wire [3:0] w21;    //: /sn:0 {0}(1030,488)(372,488)(372,403){1}
wire [3:0] w1;    //: /sn:0 {0}(876,284)(876,240)(875,240)(875,232){1}
wire [3:0] w8;    //: /sn:0 /dp:1 {0}(1030,508)(738,508)(738,407){1}
wire [3:0] w11;    //: /sn:0 {0}(504,272)(504,232){1}
wire [3:0] w15;    //: /sn:0 {0}(403,270)(403,222)(404,222)(404,214){1}
wire [3:0] w5;    //: /sn:0 {0}(769,274)(769,222)(774,222)(774,214){1}
wire w9;    //: /sn:0 {0}(674,343)(627,343){1}
//: enddecls

  //: input g4 (A) @(185,96) /sn:0 /R:3 /w:[ 0 ]
  tran g8(.Z(w1), .I(A[3:0]));   //: @(875,226) /sn:0 /R:1 /w:[ 1 7 8 ] /ss:1
  tran g16(.Z(w5), .I(B[7:4]));   //: @(774,208) /sn:0 /R:1 /w:[ 1 5 6 ] /ss:1
  CSA g3 (.A(w16), .B(w15), .Cin(w13), .Cout(Cout), .S(w21));   //: @(309, 271) /sz:(134, 131) /sn:0 /p:[ Ti0>0 Ti1>0 Ri0>1 Lo0<1 Bo0<1 ]
  tran g17(.Z(w0), .I(B[3:0]));   //: @(971,208) /sn:0 /R:1 /w:[ 1 7 8 ] /ss:1
  CSA g2 (.A(w11), .B(w10), .Cin(w9), .Cout(w13), .S(w20));   //: @(492, 273) /sz:(134, 131) /sn:0 /p:[ Ti0>0 Ti1>0 Ri0>1 Lo0<0 Bo0<1 ]
  CSA g1 (.A(w6), .B(w5), .Cin(w3), .Cout(w9), .S(w8));   //: @(675, 275) /sz:(134, 131) /sn:0 /p:[ Ti0>0 Ti1>0 Ri0>1 Lo0<0 Bo0<1 ]
  //: output g10 (S) @(1117,503) /sn:0 /w:[ 0 ]
  tran g6(.Z(w11), .I(A[11:8]));   //: @(504,226) /sn:0 /R:1 /w:[ 1 3 4 ] /ss:1
  concat g9 (.I0(w4), .I1(w8), .I2(w20), .I3(w21), .Z(S));   //: @(1035,503) /sn:0 /w:[ 1 0 0 0 1 ] /dr:0
  tran g7(.Z(w6), .I(A[7:4]));   //: @(687,226) /sn:0 /R:1 /w:[ 1 5 6 ] /ss:1
  //: output g12 (Cout) @(189,339) /sn:0 /R:2 /w:[ 0 ]
  tran g14(.Z(w15), .I(B[15:12]));   //: @(404,208) /sn:0 /R:1 /w:[ 1 1 2 ] /ss:1
  //: input g11 (Cin) @(1085,342) /sn:0 /R:2 /w:[ 0 ]
  tran g5(.Z(w16), .I(A[15:12]));   //: @(319,226) /sn:0 /R:1 /w:[ 1 1 2 ] /ss:1
  tran g15(.Z(w10), .I(B[11:8]));   //: @(588,208) /sn:0 /R:1 /w:[ 1 3 4 ] /ss:1
  SUMADOR_CPA g0 (.A0(w1), .B0(w0), .Cin(Cin), .Cout(w3), .S(w4));   //: @(854, 285) /sz:(165, 127) /sn:0 /p:[ Ti0>0 Ti1>0 Ri0>1 Lo0<0 Bo0<0 ]
  //: input g13 (B) @(208,96) /sn:0 /R:3 /w:[ 0 ]

endmodule

module SUMADOR_CPA(Cout, S, Cin, B0, A0);
//: interface  /sz:(165, 127) /bd:[ Ti0>A0[3:0](22/165) Ti1>B0[3:0](114/165) Ri0>Cin(57/127) Lo0<Cout(59/127) Bo0<S[3:0](80/165) ]
input [3:0] A0;    //: /sn:0 /dp:9 {0}(899,235)(815,235){1}
//: {2}(814,235)(675,235){3}
//: {4}(674,235)(532,235){5}
//: {6}(531,235)(390,235){7}
//: {8}(389,235)(264,235)(264,178){9}
input Cin;    //: /sn:0 {0}(295,317)(373,317){1}
output Cout;    //: /sn:0 /dp:1 {0}(896,304)(924,304){1}
output [3:0] S;    //: /sn:0 /dp:1 {0}(883,437)(933,437){1}
input [3:0] B0;    //: /sn:0 {0}(285,177)(285,223)(443,223){1}
//: {2}(444,223)(581,223){3}
//: {4}(582,223)(722,223){5}
//: {6}(723,223)(867,223){7}
//: {8}(868,223)(910,223){9}
wire w16;    //: /sn:0 {0}(877,452)(839,452)(839,347){1}
wire w6;    //: /sn:0 {0}(675,278)(675,239){1}
wire B;    //: /sn:0 {0}(443,279)(443,235)(444,235)(444,227){1}
wire w0;    //: /sn:0 {0}(871,275)(871,235)(868,235)(868,227){1}
wire A;    //: /sn:0 {0}(391,279)(391,247)(390,247)(390,239){1}
wire w12;    //: /sn:0 {0}(877,432)(552,432)(552,351){1}
wire w19;    //: /sn:0 {0}(468,308)(504,308)(504,317)(514,317){1}
wire w10;    //: /sn:0 {0}(584,279)(584,235)(582,235)(582,227){1}
wire w1;    //: /sn:0 {0}(819,275)(819,247)(815,247)(815,239){1}
wire w8;    //: /sn:0 {0}(877,422)(411,422)(411,351){1}
wire w14;    //: /sn:0 {0}(609,308)(647,308)(647,316)(657,316){1}
wire w11;    //: /sn:0 {0}(532,279)(532,239){1}
wire w15;    //: /sn:0 {0}(877,442)(695,442)(695,350){1}
wire w5;    //: /sn:0 {0}(727,278)(727,235)(723,235)(723,227){1}
wire w9;    //: /sn:0 /dp:1 {0}(752,307)(779,307)(779,313)(801,313){1}
//: enddecls

  tran g8(.Z(w6), .I(A0[2]));   //: @(675,233) /sn:0 /R:1 /w:[ 1 4 3 ] /ss:1
  //: output g4 (Cout) @(921,304) /sn:0 /w:[ 1 ]
  concat g16 (.I0(w8), .I1(w12), .I2(w15), .I3(w16), .Z(S));   //: @(882,437) /sn:0 /w:[ 0 0 0 0 0 ] /dr:1
  full_Adder g3 (.A(A), .B(B), .Cin(Cin), .S(w8), .Cout(w19));   //: @(374, 280) /sz:(93, 70) /sn:0 /p:[ Ti0>0 Ti1>0 Li0>1 Bo0<1 Ro0<0 ]
  //: output g17 (S) @(930,437) /sn:0 /w:[ 1 ]
  full_Adder g2 (.A(w11), .B(w10), .Cin(w19), .S(w12), .Cout(w14));   //: @(515, 280) /sz:(93, 70) /sn:0 /p:[ Ti0>0 Ti1>0 Li0>1 Bo0<1 Ro0<0 ]
  full_Adder g1 (.A(w6), .B(w5), .Cin(w14), .S(w15), .Cout(w9));   //: @(658, 279) /sz:(93, 70) /sn:0 /p:[ Ti0>0 Ti1>0 Li0>1 Bo0<1 Ro0<0 ]
  //: input g10 (Cin) @(293,317) /sn:0 /w:[ 0 ]
  tran g6(.Z(A), .I(A0[0]));   //: @(390,233) /sn:0 /R:1 /w:[ 1 8 7 ] /ss:1
  tran g9(.Z(w1), .I(A0[3]));   //: @(815,233) /sn:0 /R:1 /w:[ 1 2 1 ] /ss:1
  tran g7(.Z(w11), .I(A0[1]));   //: @(532,233) /sn:0 /R:1 /w:[ 1 6 5 ] /ss:1
  tran g12(.Z(B), .I(B0[0]));   //: @(444,221) /sn:0 /R:1 /w:[ 1 1 2 ] /ss:1
  tran g14(.Z(w5), .I(B0[2]));   //: @(723,221) /sn:0 /R:1 /w:[ 1 5 6 ] /ss:1
  //: input g11 (B0) @(285,175) /sn:0 /R:3 /w:[ 0 ]
  //: input g5 (A0) @(264,176) /sn:0 /R:3 /w:[ 9 ]
  tran g15(.Z(w0), .I(B0[3]));   //: @(868,221) /sn:0 /R:1 /w:[ 1 7 8 ] /ss:1
  full_Adder g0 (.A(w1), .B(w0), .Cin(w9), .S(w16), .Cout(Cout));   //: @(802, 276) /sz:(93, 70) /sn:0 /p:[ Ti0>0 Ti1>0 Li0>1 Bo0<1 Ro0<0 ]
  tran g13(.Z(w10), .I(B0[1]));   //: @(582,221) /sn:0 /R:1 /w:[ 1 3 4 ] /ss:1

endmodule

module full_Adder(Cout, Cin, B, S, A);
//: interface  /sz:(93, 70) /bd:[ Ti0>B(69/93) Ti1>A(17/93) Li0>Cin(37/70) Bo0<S(37/93) Ro0<Cout(28/70) ]
input B;    //: /sn:0 {0}(143,68)(187,68){1}
input A;    //: /sn:0 {0}(155,116)(177,116)(177,104)(187,104){1}
input Cin;    //: /sn:0 {0}(142,196)(333,196)(333,121)(357,121){1}
output Cout;    //: /sn:0 /dp:1 {0}(522,234)(628,234){1}
output S;    //: /sn:0 /dp:1 {0}(435,102)(567,102)(567,99)(577,99){1}
wire w3;    //: /sn:0 {0}(265,85)(357,85){1}
wire w8;    //: /sn:0 /dp:1 {0}(501,231)(396,231)(396,150){1}
wire w2;    //: /sn:0 {0}(226,133)(226,236)(501,236){1}
//: enddecls

  or g4 (.I0(w8), .I1(w2), .Z(Cout));   //: @(512,234) /sn:0 /delay:" 2" /w:[ 0 1 0 ]
  //: output g3 (Cout) @(625,234) /sn:0 /w:[ 1 ]
  //: input g2 (Cin) @(140,196) /sn:0 /w:[ 0 ]
  //: input g1 (B) @(141,68) /sn:0 /w:[ 0 ]
  half_adder g6 (.B(w3), .A(Cin), .CO(w8), .S(S));   //: @(358, 49) /sz:(76, 101) /sn:0 /p:[ Li0>1 Li1>1 Bo0<1 Ro0<0 ]
  //: output g7 (S) @(574,99) /sn:0 /w:[ 1 ]
  half_adder g5 (.B(B), .A(A), .CO(w2), .S(w3));   //: @(188, 32) /sz:(76, 101) /sn:0 /p:[ Li0>1 Li1>1 Bo0<0 Ro0<0 ]
  //: input g0 (A) @(153,116) /sn:0 /w:[ 0 ]

endmodule

module main;    //: root_module
wire w3;    //: /sn:0 {0}(685,320)(631,320){1}
wire [15:0] w0;    //: /sn:0 /dp:1 {0}(588,181)(588,228){1}
wire [15:0] w1;    //: /sn:0 {0}(553,432)(553,375){1}
wire w2;    //: /sn:0 {0}(435,316)(473,316){1}
wire [15:0] w5;    //: /sn:0 /dp:1 {0}(494,182)(494,228){1}
//: enddecls

  led g4 (.I(w2));   //: @(428,316) /sn:0 /R:1 /w:[ 0 ] /type:0
  led g3 (.I(w1));   //: @(553,439) /sn:0 /R:2 /w:[ 0 ] /type:3
  //: dip g2 (w0) @(588,171) /sn:0 /w:[ 0 ] /st:65535
  //: dip g1 (w5) @(494,172) /sn:0 /w:[ 0 ] /st:43981
  //: switch g5 (w3) @(703,320) /sn:0 /R:2 /w:[ 0 ] /st:0
  CSA16bits g0 (.B(w0), .A(w5), .Cin(w3), .Cout(w2), .S(w1));   //: @(474, 229) /sz:(156, 145) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>1 Lo0<1 Bo0<1 ]

endmodule
