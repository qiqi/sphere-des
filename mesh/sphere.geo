r = 0.5/Sqrt(3);
nCirc = 25;
nInner = 85;
nOuter = 35;
pInner = 0.93;
pOuter = 0.9;

Point(1) = { 0, 0, 0};
Point(2) = {+r,+r,+r};
Point(3) = {+r,+r,-r};
Point(4) = {+r,-r,+r};
Point(5) = {+r,-r,-r};
Point(6) = {-r,+r,+r};
Point(7) = {-r,+r,-r};
Point(8) = {-r,-r,+r};
Point(9) = {-r,-r,-r};

Circle(1) = {6, 1, 2};
Circle(2) = {6, 1, 8};
Circle(3) = {8, 1, 4};
Circle(4) = {4, 1, 2};
Line Loop(5) = {1, -4, -3, -2};
Ruled Surface(6) = {5};
Circle(7) = {3, 1, 5};
Circle(8) = {5, 1, 9};
Circle(9) = {9, 1, 7};
Circle(10) = {7, 1, 3};
Line Loop(11) = {10, 7, 8, 9};
Ruled Surface(12) = {11};
Circle(13) = {7, 1, 6};
Circle(14) = {2, 1, 3};
Circle(15) = {9, 1, 8};
Circle(16) = {4, 1, 5};
Line Loop(17) = {14, -10, 13, 1};
Ruled Surface(18) = {17};
Line Loop(19) = {8, 15, 3, 16};
Ruled Surface(20) = {19};
Line Loop(21) = {15, -2, -13, -9};
Ruled Surface(22) = {21};
Line Loop(23) = {14, 7, -16, 4};
Ruled Surface(24) = {23};

Transfinite Line {1,2,3,4,7,8,9,10,13,14,15,16} = nCirc;
Transfinite Surface {6,12,18,20,22,24};

R = 1.5;
Point(12) = {+R,+R,+R};
Point(13) = {+R,+R,-R};
Point(14) = {+R,-R,+R};
Point(15) = {+R,-R,-R};
Point(16) = {-R,+R,+R};
Point(17) = {-R,+R,-R};
Point(18) = {-R,-R,+R};
Point(19) = {-R,-R,-R};

Circle(31) = {16, 1, 12};
Circle(32) = {16, 1, 18};
Circle(33) = {18, 1, 14};
Circle(34) = {14, 1, 12};
Line Loop(35) = {31, -34, -33, -32};
Ruled Surface(36) = {35};
Circle(37) = {13, 1, 15};
Circle(38) = {15, 1, 19};
Circle(39) = {19, 1, 17};
Circle(40) = {17, 1, 13};
Line Loop(41) = {40, 37, 38, 39};
Ruled Surface(42) = {41};
Circle(43) = {17, 1, 16};
Circle(44) = {12, 1, 13};
Circle(45) = {19, 1, 18};
Circle(46) = {14, 1, 15};
Line Loop(47) = {44, -40, 43, 31};
Ruled Surface(48) = {47};
Line Loop(49) = {38, 45, 33, 46};
Ruled Surface(50) = {49};
Line Loop(51) = {45, -32, -43, -39};
Ruled Surface(52) = {51};
Line Loop(53) = {44, 37, -46, 34};
Ruled Surface(54) = {53};

// Line(31) = {16, 12};
// Line(32) = {16, 18};
// Line(33) = {18, 14};
// Line(34) = {14, 12};
// Line Loop(35) = {31, -34, -33, -32};
// Plane Surface(36) = {35};
// Line(37) = {13, 15};
// Line(38) = {15, 19};
// Line(39) = {19, 17};
// Line(40) = {17, 13};
// Line Loop(41) = {40, 37, 38, 39};
// Plane Surface(42) = {41};
// Line(43) = {17, 16};
// Line(44) = {12, 13};
// Line(45) = {19, 18};
// Line(46) = {14, 15};
// Line Loop(47) = {44, -40, 43, 31};
// Plane Surface(48) = {47};
// Line Loop(49) = {38, 45, 33, 46};
// Plane Surface(50) = {49};
// Line Loop(51) = {45, -32, -43, -39};
// Plane Surface(52) = {51};
// Line Loop(53) = {44, 37, -46, 34};
// Plane Surface(54) = {53};

Transfinite Line {31,32,33,34,37,38,39,40,43,44,45,46} = nCirc;
Transfinite Surface {36,42,48,50,52,54};

Line(62) = {12, 2};
Line(63) = {13, 3};
Line(64) = {14, 4};
Line(65) = {15, 5};
Line(66) = {16, 6};
Line(67) = {17, 7};
Line(68) = {18, 8};
Line(69) = {19, 9};

Transfinite Line {62,63,64,65,66,67,68,69} = nInner Using Progression pInner;

Line Loop(70) = {67, 13, -66, -43};
Ruled Surface(71) = {70};
Line Loop(72) = {45, 68, -15, -69};
Ruled Surface(73) = {72};
Line Loop(74) = {32, 68, -2, -66};
Ruled Surface(75) = {74};
Line Loop(76) = {39, 67, -9, -69};
Ruled Surface(77) = {76};
Line Loop(78) = {37, 65, -7, -63};
Ruled Surface(79) = {78};
Line Loop(80) = {34, 62, -4, -64};
Ruled Surface(81) = {80};
Line Loop(82) = {31, 62, -1, -66};
Ruled Surface(83) = {82};
Line Loop(84) = {44, 63, -14, -62};
Ruled Surface(85) = {84};
Line Loop(86) = {40, 63, -10, -67};
Ruled Surface(87) = {86};
Line Loop(88) = {33, 64, -3, -68};
Ruled Surface(89) = {88};
Line Loop(90) = {46, 65, -16, -64};
Ruled Surface(91) = {90};
Line Loop(92) = {65, 8, -69, -38};
Ruled Surface(93) = {92};

Transfinite Surface {71,73,75,77,79,81,83,85,87,89,91,93};

Surface Loop(94) = {42, 79, 93, 77, 87, 12};
Volume(95) = {94};
Surface Loop(96) = {81, 79, 91, 85, 54, 24};
Volume(97) = {96};
Surface Loop(98) = {75, 89, 81, 83, 36, 6};
Volume(99) = {98};
Surface Loop(100) = {77, 73, 75, 71, 52, 22};
Volume(101) = {100};
Surface Loop(102) = {71, 87, 85, 83, 48, 18};
Volume(103) = {102};
Surface Loop(104) = {73, 93, 91, 89, 50, 20};
Volume(105) = {104};

Recombine Surface {6,12,18,20,22,24,36,42,48,50,52,54,71,73,75,77,79,81,83,85,87,89,91,93};

Transfinite Volume {95,97,99,101,103,105};

Far = 50;
Point(112) = {+Far,+3*R,+3*R};
Point(113) = {+Far,+3*R,-3*R};
Point(114) = {+Far,-3*R,+3*R};
Point(115) = {+Far,-3*R,-3*R};
Point(116) = {-Far,+3*R,+3*R};
Point(117) = {-Far,+3*R,-3*R};
Point(118) = {-Far,-3*R,+3*R};
Point(119) = {-Far,-3*R,-3*R};
// Point(112) = {+Far,+Far,+Far};
// Point(113) = {+Far,+Far,-Far};
// Point(114) = {+Far,-Far,+Far};
// Point(115) = {+Far,-Far,-Far};
// Point(116) = {-Far,+Far,+Far};
// Point(117) = {-Far,+Far,-Far};
// Point(118) = {-Far,-Far,+Far};
// Point(119) = {-Far,-Far,-Far};

Circle(231) = {116, 1, 112};
Circle(232) = {116, 1, 118};
Circle(233) = {118, 1, 114};
Circle(234) = {114, 1, 112};
Line Loop(235) = {231, -234, -233, -232};
Ruled Surface(236) = {235};
Circle(237) = {113, 1, 115};
Circle(238) = {115, 1, 119};
Circle(239) = {119, 1, 117};
Circle(240) = {117, 1, 113};
Line Loop(241) = {240, 237, 238, 239};
Ruled Surface(242) = {241};
Circle(243) = {117, 1, 116};
Circle(244) = {112, 1, 113};
Circle(245) = {119, 1, 118};
Circle(246) = {114, 1, 115};
Line Loop(247) = {244, -240, 243, 231};
Ruled Surface(248) = {247};
Line Loop(249) = {238, 245, 233, 246};
Ruled Surface(250) = {249};
Line Loop(251) = {245, -232, -243, -239};
Ruled Surface(252) = {251};
Line Loop(253) = {244, 237, -246, 234};
Ruled Surface(254) = {253};

Transfinite Line {231,232,233,234,237,238,239,240,243,244,245,246} = nCirc;
Transfinite Surface {236,242,248,250,252,254};

Line(262) = {112, 12};
Line(263) = {113, 13};
Line(264) = {114, 14};
Line(265) = {115, 15};
Line(266) = {116, 16};
Line(267) = {117, 17};
Line(268) = {118, 18};
Line(269) = {119, 19};

Transfinite Line {262,263,264,265,266,267,268,269} = nOuter Using Progression pOuter;

Line Loop(270) = {267, 43, -266, -243};
Ruled Surface(271) = {270};
Line Loop(272) = {245, 268, -45, -269};
Ruled Surface(273) = {272};
Line Loop(274) = {232, 268, -32, -266};
Ruled Surface(275) = {274};
Line Loop(276) = {239, 267, -39, -269};
Ruled Surface(277) = {276};
Line Loop(278) = {237, 265, -37, -263};
Ruled Surface(279) = {278};
Line Loop(280) = {234, 262, -34, -264};
Ruled Surface(281) = {280};
Line Loop(282) = {231, 262, -31, -266};
Ruled Surface(283) = {282};
Line Loop(284) = {244, 263, -44, -262};
Ruled Surface(285) = {284};
Line Loop(286) = {240, 263, -40, -267};
Ruled Surface(287) = {286};
Line Loop(288) = {233, 264, -33, -268};
Ruled Surface(289) = {288};
Line Loop(290) = {246, 265, -46, -264};
Ruled Surface(291) = {290};
Line Loop(292) = {265, 38, -269, -238};
Ruled Surface(293) = {292};

Transfinite Surface {271,273,275,277,279,281,283,285,287,289,291,293};

Surface Loop(294) = {242, 279, 293, 277, 287, 42};
Volume(295) = {294};
Surface Loop(296) = {281, 279, 291, 285, 254, 54};
Volume(297) = {296};
Surface Loop(298) = {275, 289, 281, 283, 236, 36};
Volume(299) = {298};
Surface Loop(300) = {277, 273, 275, 271, 252, 52};
Volume(301) = {300};
Surface Loop(302) = {271, 287, 285, 283, 248, 48};
Volume(303) = {302};
Surface Loop(304) = {273, 293, 291, 289, 250, 50};
Volume(305) = {304};

Recombine Surface {236,242,248,250,252,254,271,273,275,277,279,281,283,285,287,289,291,293};

Transfinite Volume {295,297,299,301,303,305};
Physical Surface("wall") = {6, 12, 18, 22, 24, 20};
Physical Surface("far") = {248, 236, 250, 242, 252, 254};
Physical Volume("fluid") = {303, 297, 299, 295, 301, 305, 101, 97, 103, 105, 99, 95};
