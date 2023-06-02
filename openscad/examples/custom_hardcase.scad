// ---------------------------------------------------------------------------
// Customizable hard case for music gear
// v1.2.2
// ---------------------------------------------------------------------------
// Copyright (c) Yohan Lasorsa
// For personal use only, do not redistribute (please).
// ---------------------------------------------------------------------------
// LICENSE AGREEMENT:
// This software is provided 'as-is', without any express or implied warranty.
// In no event will the authors be held liable for any damages arising from
// the use of this software.
//
// 1. You can use and adapt this code, generate 3d models models from it and
//    print them, only for your own personal usage.
// 2. You're not allowed to redistribute this code or the 3d models generated
//    from it in any form.
// 3. You're not allowed to make any commercial usage or profit based on this
//    code or any form of its derivatives, including but not limited to,
//    3d models and printed models.
// ---------------------------------------------------------------------------
// Suggested print settings, tested with a Creality Ender 3 and Cura 5 with
// Eryone PLA filament:
// - 0.24mm layer height
// - 80mm/s print speed (40mm/s for walls)
// - Minimum 10% infill, cubic shape
//   * Recommended >= 20%, use gradual infill steps = 1 to reduce the amount
//     of used material
// - No supports needed
//
// For maximum gear protection and to avoid scratches, I recommend to add a
// 2mm EVA foam layer inside the case, which can be found on Amazon.
// You can adjust the "foam_layer_thickness" parameter if needed, or set it
// to 0 if you don't plan to add an EVA foam layer inside.
// ---------------------------------------------------------------------------
// Default paramameters fit a Roland MC-101 or TR-6S.
// See custom_hardcase.json file for other parameters sets.
// ---------------------------------------------------------------------------

use <font/montserrat_variable.ttf>

/* [Inside dimensions] ------------------------------------ */

// Total device width in mm
device_width = 224;

// Total device depth in mm
device_depth = 132;

// Total device height in mm. Adding a bit more will leave some free room for the knobs/buttons.
device_height = 62;

// The device case height at the front in mm. This is used to create an edge on the case border to keep the device in place.
device_case_front_height = 43;

// The device case height at the back in mm. This is used to create an edge on the case border to keep the device in place.
device_case_back_height = 43;

// The device case depth in mm. This is used to create an edge on the back border sides to keep the device in place.
device_case_depth = 129;

// Foam layer thickness in mm. Set it to 0 if you don't plan to add a foam layer.
foam_layer_thickness = 2;

// Extra padding width in mm. This is used to add some extra space around the device width.
extra_padding_width = 2;

// Extra padding depth in mm. This is used to add some extra space around the device depth.
extra_padding_depth = 2;

// Extra padding height in mm. This is used to add some extra space around the device height.
extra_padding_height = 0;

// Minimum extra padding in mm. This the minimum space added around the device, to avoid the case being too tight and accomodate for printers inaccuracy.
extra_padding_min = 0.5;

/* [Holding edges] ---------------------------------------- */

// The top front edge depth in mm
top_front_edge_depth = 10;

// The top back edge depth in mm
top_back_edge_depth = 10;

// The bottom back edge width for each side in mm
bottom_back_edge_width = 15;

/* [Label] ------------------------------------------------ */

// Text to be embossed on the top case of the left part
label = "MC-101";

// Depth of the text embossing in mm
label_depth = 1.0;

// Size of the text embossing
label_font_size = 16;

// X position of the text (0 = full left)
label_x = 20;

// Y position of the text (0 = top)
label_y = 20;

// Scale of the text. Use it to condense/strech it.
label_scale = [1.0, 0.8, 1.0];

// Font to use for the text
label_font = "Montserrat:style=SemiBold";

// Text/mark to be embossed on the top case of the right part
label_right = "•••";

// X position of the right text from the right side (0 = full right)
label_right_x = 20;

// Y position of the right text (0 = top)
label_right_y = 20;

/* [Connection between the two parts] --------------------- */

// The ridge distance in mm between the two box parts
ridge_width = 20;

// Extra space for the ridge junction. Reduce for a tighter fit.
ridge_slack = 0.2;

// Snap joins height in mm
snap_join_height = 30;

// Snap joins thickness in mm
snap_join_thickness = 0.4;

// Snap joins width scale
snap_join_width_scale = 2;

// Extra space for the snap joins. Reduce for a tighter fit.
snap_join_slack = 0.2;

/* [Other] ------------------------------------------------ */

// The wall width in mm
wall_width = 5;

// Rounded edges radius in mm
round_radius = 5;

// Flatten the sides of the case
flatten_sides = false;

// Space between the two parts in mm
separation_offset = 20;

// View the case flat, each part in front of each other. Set to false for a 3d print friendly orientation.
view_flat = false;

// Print left side
left_side = true;

// Print right side
right_side = true;

/* [Hidden] */

fudge = .001;
padding_width = max(foam_layer_thickness * 2 + extra_padding_width, extra_padding_min);
padding_depth = max(foam_layer_thickness * 2 + extra_padding_depth, extra_padding_min);
padding_height = max(foam_layer_thickness * 2 + extra_padding_height, extra_padding_min);
inside_width = device_width + padding_width;
inside_depth = device_depth + padding_depth;
inside_height = device_height + padding_height;
outer_width = inside_width + wall_width * 2 + ridge_width;
outer_depth = inside_depth + wall_width * 2;
outer_height = inside_height + wall_width * 2;
ridge_thickness = wall_width / 2;
ridge_half_slack = ridge_slack / 2;
top_front_edge_height = device_height - device_case_front_height;
top_back_edge_height = device_height - device_case_back_height;
bottom_back_edge_depth = device_depth - device_case_depth;

$fa = 10;
$fs = .4;
$vpr = [45, 0, view_flat ? 22.5 : -45];
$vpd = 700;
$vpt = [0, 0, view_flat ? 0 : outer_height];

// --------------------------------------------------------

module edge(front = true, left = true) {
  top_depth = front ? top_front_edge_depth : top_back_edge_depth + bottom_back_edge_depth;
  top_height = front ? top_front_edge_height : top_back_edge_height;
  yOffset = (front ? -1 : 1) * ((inside_depth - top_depth) / 2 + fudge);
  xOffset = (left ? -1 : 1) * ((inside_width + ridge_width - bottom_back_edge_width) / 2 + fudge);

  union() {
    color("green")
    translate([0, yOffset, (inside_height - top_height) / 2 + fudge]) {
      cube([inside_width + ridge_width + fudge * 2, top_depth, top_height], true);
    }
    if (front) {
      color("blue")
      translate([xOffset, (inside_depth - bottom_back_edge_depth) / 2 + fudge, -top_height / 2])
      {
        cube([bottom_back_edge_width, bottom_back_edge_depth, inside_height - top_height + fudge * 2], true);
      }
    }
  }
}

module snap_join(front = true, outside = false) {
  join_offset = outside ? 0 : fudge;
  diameter = snap_join_thickness * 3;
  ridge_outside_thickness = ridge_thickness + ridge_half_slack;
  ridge_inside_thickness = ridge_thickness - ridge_half_slack;
  x_offset = (outside ? -1 : 1) * ridge_width / 2;
  y_offset = (front ? 1 : -1) * (outer_depth / 2 - (outside ? ridge_inside_thickness : ridge_outside_thickness));
  inner_offset = (front ? -1 : 1) * (diameter / 2 - snap_join_thickness);
  
  if (outside) {
    color("red")
    translate([x_offset, (front ? -join_offset : join_offset) + y_offset + inner_offset, 0]) {
      scale([snap_join_width_scale, 1, 1])
      rounded_cylinder(snap_join_height + snap_join_slack * 2 / snap_join_width_scale, d = diameter + snap_join_slack * 2, center = true);
    }
  } else {
    color("red")
    translate([0, front ? -join_offset : join_offset, 0]) {
      difference() {
        translate([x_offset, y_offset + inner_offset, 0]) {
          scale([snap_join_width_scale, 1, 1])
          rounded_cylinder(snap_join_height, r = diameter, center = true);
        }
        cube([inside_width + ridge_width + 10, inside_depth + ridge_inside_thickness * 2, inside_height + ridge_inside_thickness * 2], center = true);
      }
    }
  }
}

module ridge(outside = true) {
  ridge_outside_thickness = ridge_thickness + (outside ? -ridge_half_slack : ridge_half_slack);
  inner_radius = max(round_radius - ridge_outside_thickness, fudge);
  offset = (outside ? outer_width : -outer_width) / 2;


  if (outside) {
    translate([offset - ridge_width - ridge_half_slack * 4, 0, 0]) {
      rounded_cube([outer_width, outer_depth - ridge_outside_thickness * 2, outer_height - ridge_outside_thickness * 2], inner_radius, straight_sides = true);
    }
  } else {
    translate([offset + ridge_width, 0, 0]) {
      difference() {
        cube([outer_width, outer_depth + 10, outer_height + 10], true);
        rounded_cube([outer_width + 10, outer_depth - ridge_outside_thickness * 2, outer_height - ridge_outside_thickness * 2], inner_radius);
      }
    }
  }
}

module label(left = true) {
  x_offset = left ? -outer_width / 2 + label_x : outer_width / 2 - label_right_x;
  text = left ? label : label_right; 

  translate([x_offset, outer_depth / 2 - label_y - label_font_size, outer_height / 2 - label_depth / 2])
  scale(label_scale) {
    linear_extrude(label_depth) {
      text(text, size = label_font_size, halign = left ? "left" : "right", valign = "baseline", font = label_font);
    }
  }
}

module case_left() {
  translate([(view_flat ? 0 : -outer_height / 2) - separation_offset / 2, 0, 0]) {
    rotate([0, view_flat ? 0 : -90])
    translate([view_flat ? 0 : outer_width / 2, 0, 0])
    difference() {
      union() {
        difference() {
          rounded_cube([outer_width, outer_depth, outer_height], round_radius);
          cube([inside_width + ridge_width, inside_depth, inside_height], true);
        }
        edge(front = true, left = true);
        edge(front = false, left = true);
      }
      translate([outer_width / 2, 0, 0]) {
        cube([outer_width, outer_depth * 2, outer_height * 2], true);
      }
      ridge(outside = true);
      snap_join(front = true, outside = true);
      snap_join(front = false, outside = true);
      label(left = true);
    }
  }
}

module case_right() {
  translate([(view_flat ? 0 : outer_height / 2) + separation_offset / 2, 0, 0]) {
    rotate([0, view_flat ? 0 : 90])
    translate([view_flat ? 0 : -outer_width / 2, 0, 0])
    union() { 
      difference() {
        union() {
          difference() {
            rounded_cube([outer_width, outer_depth, outer_height], round_radius);
            cube([inside_width + ridge_width, inside_depth, inside_height], true);
          }
          edge(front = true, left = false);
          edge(front = false, left = false);
        }
        translate([-outer_width / 2, 0, 0]) {
          cube([outer_width, outer_depth * 2, outer_height * 2], true);
        }
        ridge(outside = false);
        label(left = false);
      }
      snap_join(front = true, outside = false);
      snap_join(front = false, outside = false);
    }
  }
}

module rounded_cylinder(height, r, d, center = true) {
  r = is_undef(r) ? d / 2 : r;
  h = height - r * 2;

  hull() {
    translate([0, 0, -h / 2]) sphere(r);
    translate([0, 0,  h / 2]) sphere(r);
    cylinder(h, r, center = center);
  }
}

// rounded_cube module code based on: https://github.com/openscad/MCAD/boxes.scad
// Original author: Marius Kintel, Copyright: 2010
// License: 2-clause BSD License (http://opensource.org/licenses/BSD-2-Clause)
module rounded_cube(size, r, straight_sides = flatten_sides, center = true) {
  s = is_list(size) ? size : [size, size, size];

  translate(center ? -s / 2 : [0, 0, 0]) {
    if (straight_sides) {
      c = [ s[2], s[1], s[0] ];

      translate([0, 0, s[2]])
      rotate([0, 90, 0])
      hull() {
        translate([       r,        r]) cylinder(r = r, h = c[2]);
        translate([       r, c[1] - r]) cylinder(r = r, h = c[2]);
        translate([c[0] - r,        r]) cylinder(r = r, h = c[2]);
        translate([c[0] - r, c[1] - r]) cylinder(r = r, h = c[2]);
      }
    } else {
      hull() {
        translate([       r,        r,        r]) sphere(r = r);
        translate([       r,        r, s[2] - r]) sphere(r = r);
        translate([       r, s[1] - r,        r]) sphere(r = r);
        translate([       r, s[1] - r, s[2] - r]) sphere(r = r);
        translate([s[0] - r,        r,        r]) sphere(r = r);
        translate([s[0] - r,        r, s[2] - r]) sphere(r = r);
        translate([s[0] - r, s[1] - r,        r]) sphere(r = r);
        translate([s[0] - r, s[1] - r, s[2] - r]) sphere(r = r);
      }
    }
  }
}

if (left_side)
  case_left();

if (right_side)
  case_right();
