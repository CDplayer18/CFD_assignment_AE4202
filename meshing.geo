Include "assignment.geo";
//+
Split Curve {1} Point {642, 566};
//+
Transfinite Curve {16, 31} = 10 Using Progression 1;
//+
Transfinite Curve {17, 18} = 10 Using Progression 1;
//+
Curve Loop(1) = {16, -18, 31, 17};
//+
Plane Surface(1) = {1};
//+
Transfinite Surface {1};
//+
Recombine Surface {1};
