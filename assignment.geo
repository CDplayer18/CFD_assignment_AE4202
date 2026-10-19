Include "guide_vane.geo";

//////////////////////////////////////////////////////////////////////////////////
// Parameters: l = length, t = top, b = bottom
// Numbering is from points in oder of occurance from left to right
//////////////////////////////////////////////////////////////////////////////////
l_inlet = 100;
c = 67.6;
h = 57.5;

x1 = -l_inlet;
yt1 = h/2;      yb1 = -h/2;

x2 = 0;
yt2 = h/2;      yb2 = -h/2;

x3 = 40;
yt3 = yt2 - 40;  yb3 = yt3 - h;

x4 = 100;
yt4 = yt3 - 200; yb4 = yt4 - h;



//+
Point(1606) = {x1, yt1, 0, 1.0};
Point(1607) = {x1, yb1, 0, 1.0};
//+
Point(1608) = {x2, yt2, 0, 1.0};
Point(1609) = {x2, yb2, 0, 1.0};
//+
Point(1610) = {x3, yt3, 0, 1.0};
Point(1611) = {x3, yb3, 0, 1.0};
//+
Point(1612) = {x4, yt4, 0, 1.0};
Point(1613) = {x4, yb4, 0, 1.0};

// Helper points for bspline at guide_vane
Point(1614) = {x3+(x2-x3)*(x4-x3)/(yt3-yt4), yt2, 0, 1.0};
Point(1615) = {x3+(x2-x3)*(x4-x3)/(yt3-yt4), yb2, 0, 1.0};

Line(2) = {1608, 1606};
//+
Line(3) = {1609, 1607};
//+
Line(4) = {1606, 1607};
//+
Line(5) = {1611, 1613};
//+
Line(6) = {1610, 1612};//+
//+
BSpline(7) = {1609, 1615, 1611};
//+
BSpline(8) = {1608, 1614, 1610};
