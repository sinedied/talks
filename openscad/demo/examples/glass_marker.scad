/* [Customize] */

// Your name initials
initials = "YL";

/* [Hidden] */
size = 25;
height = 5;
offset = 3;
door_size = 14;
door_y_offset = 8;
text_size = 5;
text_height = 2;
grip_depth = 6;
grip_thickness = 2;
grip_space = 1.2;
fudge = 0.001;
$fn = 32;

module marker() {
  translate([0, 0, size/3])
  rotate([90, 0, 0])
  translate([0, 0, -height/2])
  difference() {
    rotate([0, 0, -30])
    linear_extrude(height)
    offset(r = offset)
    circle(d = size - offset, $fn = 3);

    scale([.6, 1, 1])
    translate([0, -door_y_offset, height/2 + fudge*10])
    rotate([0, 0, -30])
    linear_extrude(height/2)
    offset(r = offset)
    circle(d = door_size - offset, $fn = 3);

    color("red")
    translate([0, size/3 - text_size*1.3, height - text_height])
    linear_extrude(text_height * 2)
    text(initials, size = text_size, halign = "center", valign = "baseline");
  }

  grip();
}

module grip() {
  grip_height = size * 2/3;
  grip_width = 5;
  grip_bottom_d = grip_depth - grip_space;
  grip_tab_height = grip_height - grip_bottom_d;

  hull_chain() {
    translate([0, grip_depth/2, grip_height])
    sphere(d = grip_depth);

    translate([0, height/2 + grip_depth/2*1.5, grip_height])
    sphere(d = grip_bottom_d);

    translate([0, height/2 + grip_thickness/2 + grip_depth - grip_thickness, grip_height/2 + grip_bottom_d/4])
    cube([grip_depth*2/3, grip_thickness, (grip_height - grip_bottom_d/2)/2], center = true);

    translate([0, height/2 + grip_thickness/2 + grip_depth - grip_thickness, grip_height/2 + grip_bottom_d/4])
    cube([grip_depth*2/3, grip_thickness, (grip_height - grip_bottom_d/2)/2], center = true);

    translate([0, height/2 + grip_space + grip_bottom_d/2, grip_bottom_d/2])
    sphere(d = grip_bottom_d);

    translate([0, height/2 + grip_space + grip_bottom_d/2, -0.2])
    cylinder(d = grip_bottom_d*2/3, h = grip_bottom_d);
  }
}

module hull_chain() {
  for (i = [0 : $children - 2]) {
    hull() {
      children(i);
      children(i + 1);
    }
  }
}

marker();
