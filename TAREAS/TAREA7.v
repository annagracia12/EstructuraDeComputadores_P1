//: version "1.8.7"

module half_adder(CO, S, B, A);
//: interface  /sz:(101, 76) /bd:[ Ti0>B(64/101) Ti1>A(28/101) Lo0<CO(38/76) Bo0<S(47/101) ]
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

module CPA16bits(A, S, B, Cin, Cout);
//: interface  /sz:(128, 111) /bd:[ Ti0>A[15:0](13/128) Ti1>B[15:0](90/128) Ri0>Cin(55/111) Lo0<Cout(57/111) Bo0<S[15:0](54/128) ]
input [15:0] B;    //: /sn:0 {0}(169,69)(169,183)(366,183){1}
//: {2}(367,183)(599,183){3}
//: {4}(600,183)(856,183){5}
//: {6}(857,183)(1100,183){7}
//: {8}(1101,183)(1136,183){9}
input [15:0] A;    //: /sn:0 {0}(1033,207)(1011,207){1}
//: {2}(1010,207)(761,207){3}
//: {4}(760,207)(508,207){5}
//: {6}(507,207)(276,207){7}
//: {8}(275,207)(143,207)(143,71){9}
input Cin;    //: /sn:0 {0}(1161,299)(1247,299){1}
output Cout;    //: /sn:0 {0}(87,307)(242,307){1}
output [15:0] S;    //: /sn:0 {0}(1432,513)(1383,513)(1383,512)(1292,512){1}
wire [3:0] w6;    //: /sn:0 {0}(854,243)(854,196)(857,196)(857,187){1}
wire w13;    //: /sn:0 {0}(485,305)(409,305){1}
wire [3:0] w16;    //: /sn:0 {0}(357,247)(357,198)(367,198)(367,187){1}
wire [3:0] w7;    //: /sn:0 {0}(1286,517)(566,517)(566,374){1}
wire [3:0] w0;    //: /sn:0 {0}(1017,241)(1017,224)(1011,224)(1011,211){1}
wire w3;    //: /sn:0 {0}(994,301)(906,301){1}
wire [3:0] w20;    //: /sn:0 {0}(1286,527)(323,527)(323,376){1}
wire [3:0] w10;    //: /sn:0 {0}(508,245)(508,211){1}
wire [3:0] w1;    //: /sn:0 {0}(1109,241)(1109,192)(1101,192)(1101,187){1}
wire w8;    //: /sn:0 {0}(739,303)(652,303){1}
wire [3:0] w11;    //: /sn:0 {0}(600,245)(600,187){1}
wire [3:0] w2;    //: /sn:0 {0}(1286,497)(1075,497)(1075,370){1}
wire [3:0] w15;    //: /sn:0 {0}(265,247)(265,230)(276,230)(276,211){1}
wire [3:0] w5;    //: /sn:0 {0}(762,243)(762,227)(761,227)(761,211){1}
wire [3:0] w9;    //: /sn:0 {0}(1286,507)(820,507)(820,372){1}
//: enddecls

  //: input g4 (A) @(143,69) /sn:0 /R:3 /w:[ 9 ]
  tran g8(.Z(w0), .I(A[3:0]));   //: @(1011,205) /sn:0 /R:1 /w:[ 1 2 1 ] /ss:1
  SUMADOR_CPA g3 (.B0(w16), .A0(w15), .Cin(w13), .Cout(Cout), .S(w20));   //: @(243, 248) /sz:(165, 127) /sn:0 /p:[ Ti0>0 Ti1>0 Ri0>1 Lo0<1 Bo0<1 ]
  concat g16 (.I0(w2), .I1(w9), .I2(w7), .I3(w20), .Z(S));   //: @(1291,512) /sn:0 /w:[ 0 0 0 0 1 ] /dr:1
  //: output g17 (S) @(1429,513) /sn:0 /w:[ 0 ]
  SUMADOR_CPA g2 (.B0(w11), .A0(w10), .Cin(w8), .Cout(w13), .S(w7));   //: @(486, 246) /sz:(165, 127) /sn:0 /p:[ Ti0>0 Ti1>0 Ri0>1 Lo0<0 Bo0<1 ]
  SUMADOR_CPA g1 (.B0(w6), .A0(w5), .Cin(w3), .Cout(w8), .S(w9));   //: @(740, 244) /sz:(165, 127) /sn:0 /p:[ Ti0>0 Ti1>0 Ri0>1 Lo0<0 Bo0<1 ]
  tran g10(.Z(w16), .I(B[15:12]));   //: @(367,181) /sn:0 /R:1 /w:[ 1 1 2 ] /ss:1
  tran g6(.Z(w10), .I(A[11:8]));   //: @(508,205) /sn:0 /R:1 /w:[ 1 6 5 ] /ss:1
  tran g7(.Z(w5), .I(A[7:4]));   //: @(761,205) /sn:0 /R:1 /w:[ 1 4 3 ] /ss:1
  //: input g9 (B) @(169,67) /sn:0 /R:3 /w:[ 0 ]
  tran g12(.Z(w6), .I(B[7:4]));   //: @(857,181) /sn:0 /R:1 /w:[ 1 5 6 ] /ss:1
  tran g5(.Z(w15), .I(A[15:12]));   //: @(276,205) /sn:0 /R:1 /w:[ 1 8 7 ] /ss:1
  tran g11(.Z(w11), .I(B[11:8]));   //: @(600,181) /sn:0 /R:1 /w:[ 1 3 4 ] /ss:1
  //: input g14 (Cin) @(1249,299) /sn:0 /R:2 /w:[ 1 ]
  SUMADOR_CPA g0 (.B0(w1), .A0(w0), .Cin(Cin), .Cout(w3), .S(w2));   //: @(995, 242) /sz:(165, 127) /sn:0 /p:[ Ti0>0 Ti1>0 Ri0>0 Lo0<0 Bo0<1 ]
  //: output g15 (Cout) @(90,307) /sn:0 /R:2 /w:[ 0 ]
  tran g13(.Z(w1), .I(B[3:0]));   //: @(1101,181) /sn:0 /R:1 /w:[ 1 7 8 ] /ss:1

endmodule

module SUMADOR_CPA(Cout, S, Cin, A0, B0);
//: interface  /sz:(165, 127) /bd:[ Ti0>B0[3:0](114/165) Ti1>A0[3:0](22/165) Ri0>Cin(57/127) Lo0<Cout(59/127) Bo0<S[3:0](80/165) ]
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
wire w6;    //: /sn:0 {0}(675,278)(675,239){1}
wire w16;    //: /sn:0 {0}(877,452)(839,452)(839,347){1}
wire B;    //: /sn:0 {0}(443,279)(443,235)(444,235)(444,227){1}
wire A;    //: /sn:0 {0}(391,279)(391,247)(390,247)(390,239){1}
wire w0;    //: /sn:0 {0}(871,275)(871,235)(868,235)(868,227){1}
wire w19;    //: /sn:0 {0}(468,308)(504,308)(504,317)(514,317){1}
wire w12;    //: /sn:0 {0}(877,432)(552,432)(552,351){1}
wire w10;    //: /sn:0 {0}(584,279)(584,235)(582,235)(582,227){1}
wire w1;    //: /sn:0 {0}(819,275)(819,247)(815,247)(815,239){1}
wire w8;    //: /sn:0 {0}(877,422)(411,422)(411,351){1}
wire w14;    //: /sn:0 {0}(609,308)(647,308)(647,316)(657,316){1}
wire w11;    //: /sn:0 {0}(532,279)(532,239){1}
wire w15;    //: /sn:0 {0}(877,442)(695,442)(695,350){1}
wire w5;    //: /sn:0 {0}(727,278)(727,235)(723,235)(723,227){1}
wire w9;    //: /sn:0 /dp:1 {0}(752,307)(779,307)(779,313)(801,313){1}
//: enddecls

  //: output g4 (Cout) @(921,304) /sn:0 /w:[ 1 ]
  tran g8(.Z(w6), .I(A0[2]));   //: @(675,233) /sn:0 /R:1 /w:[ 1 4 3 ] /ss:1
  full_Adder g3 (.A(A), .B(B), .Cin(Cin), .S(w8), .Cout(w19));   //: @(374, 280) /sz:(93, 70) /sn:0 /p:[ Ti0>0 Ti1>0 Li0>1 Bo0<1 Ro0<0 ]
  concat g16 (.I0(w8), .I1(w12), .I2(w15), .I3(w16), .Z(S));   //: @(882,437) /sn:0 /w:[ 0 0 0 0 0 ] /dr:1
  //: output g17 (S) @(930,437) /sn:0 /w:[ 1 ]
  full_Adder g2 (.A(w11), .B(w10), .Cin(w19), .S(w12), .Cout(w14));   //: @(515, 280) /sz:(93, 70) /sn:0 /p:[ Ti0>0 Ti1>0 Li0>1 Bo0<1 Ro0<0 ]
  full_Adder g1 (.A(w6), .B(w5), .Cin(w14), .S(w15), .Cout(w9));   //: @(658, 279) /sz:(93, 70) /sn:0 /p:[ Ti0>0 Ti1>0 Li0>1 Bo0<1 Ro0<0 ]
  //: input g10 (Cin) @(293,317) /sn:0 /w:[ 0 ]
  tran g6(.Z(A), .I(A0[0]));   //: @(390,233) /sn:0 /R:1 /w:[ 1 8 7 ] /ss:1
  tran g7(.Z(w11), .I(A0[1]));   //: @(532,233) /sn:0 /R:1 /w:[ 1 6 5 ] /ss:1
  tran g9(.Z(w1), .I(A0[3]));   //: @(815,233) /sn:0 /R:1 /w:[ 1 2 1 ] /ss:1
  tran g12(.Z(B), .I(B0[0]));   //: @(444,221) /sn:0 /R:1 /w:[ 1 1 2 ] /ss:1
  //: input g5 (A0) @(264,176) /sn:0 /R:3 /w:[ 9 ]
  //: input g11 (B0) @(285,175) /sn:0 /R:3 /w:[ 0 ]
  tran g14(.Z(w5), .I(B0[2]));   //: @(723,221) /sn:0 /R:1 /w:[ 1 5 6 ] /ss:1
  full_Adder g0 (.A(w1), .B(w0), .Cin(w9), .S(w16), .Cout(Cout));   //: @(802, 276) /sz:(93, 70) /sn:0 /p:[ Ti0>0 Ti1>0 Li0>1 Bo0<1 Ro0<0 ]
  tran g15(.Z(w0), .I(B0[3]));   //: @(868,221) /sn:0 /R:1 /w:[ 1 7 8 ] /ss:1
  tran g13(.Z(w10), .I(B0[1]));   //: @(582,221) /sn:0 /R:1 /w:[ 1 3 4 ] /ss:1

endmodule

module full_Adder(Cout, Cin, B, S, A);
//: interface  /sz:(93, 70) /bd:[ Ti0>A(17/93) Ti1>B(69/93) Li0>Cin(37/70) Bo0<S(37/93) Ro0<Cout(28/70) ]
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
wire w4;    //: /sn:0 /dp:1 {0}(735,296)(790,296){1}
wire [15:0] w0;    //: /sn:0 {0}(834,110)(834,199)(696,199)(696,240){1}
wire w1;    //: /sn:0 {0}(486,298)(605,298){1}
wire [15:0] w2;    //: /sn:0 {0}(660,353)(660,404)(661,404)(661,455){1}
wire [15:0] w5;    //: /sn:0 /dp:1 {0}(489,127)(489,211)(619,211)(619,240){1}
//: enddecls

  //: switch g4 (w4) @(808,296) /sn:0 /R:2 /w:[ 1 ] /st:0
  led g3 (.I(w2));   //: @(661,462) /sn:0 /R:2 /w:[ 1 ] /type:3
  //: dip g2 (w0) @(834,100) /sn:0 /w:[ 0 ] /st:65535
  //: dip g1 (w5) @(489,117) /sn:0 /w:[ 0 ] /st:65535
  led g5 (.I(w1));   //: @(479,298) /sn:0 /R:1 /w:[ 0 ] /type:0
  CPA16bits g0 (.B(w0), .A(w5), .Cin(w4), .Cout(w1), .S(w2));   //: @(606, 241) /sz:(128, 111) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>0 Lo0<1 Bo0<0 ]

endmodule
