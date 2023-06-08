radius = 2;
height = 20;
twist = 720;
$fn = 64;

// linear_extrude(height = height, twist = twist, scale = 0)
// linear_extrude(height = height, scale = 0)
// linear_extrude(height = height)
  // translate([radius, 0])
    circle(r = radius);
