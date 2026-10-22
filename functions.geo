Macro EvalQuadraticBezier
    // Retrieves points and computes coordinates for 3-point BSplines (Bézier curves)
    p0_c[] = Point{P0_tag};
    p1_c[] = Point{P1_tag};
    p2_c[] = Point{P2_tag};

    _mt = 1.0 - eval_t;
    _mt2 = _mt * _mt;
    _t2 = eval_t * eval_t;
    _2mtt = 2.0 * _mt * eval_t;

    out_Px = _mt2 * p0_c[0] + _2mtt * p1_c[0] + _t2 * p2_c[0];
    out_Py = _mt2 * p0_c[1] + _2mtt * p1_c[1] + _t2 * p2_c[1];
    out_Pz = _mt2 * p0_c[2] + _2mtt * p1_c[2] + _t2 * p2_c[2];
Return



Macro EvalLine
    // INPUTS REQUIRED: P0_x, P0_y, P0_z, P1_x, P1_y, P1_z, eval_t
    out_Px = (1.0 - eval_t) * P0_x + eval_t * P1_x;
    out_Py = (1.0 - eval_t) * P0_y + eval_t * P1_y;
    out_Pz = (1.0 - eval_t) * P0_z + eval_t * P1_z;
Return

