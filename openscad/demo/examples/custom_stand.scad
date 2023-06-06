// ---------------------------------------------------------------------------
// Customizable stand for music gear
// v1.2.1
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
// - 0.28mm layer height
// - 80mm/s print speed (40mm/s for walls)
// - Minimum 10% infill, cubic shape
//   * Recommended >= 20%, use gradual infill steps = 1 to reduce the amount
//     of used material
// - No supports needed
//
// For a different finish touch, you can try removing the top/bottom layers
// and use a geometric pattern like grid or triangles with a constant infill
// density of minimum 10%.
// ---------------------------------------------------------------------------
// Default paramameters fit a Digitakt/Digitone/Syntakt.
// See custom_stand.json file for other parameters sets.
// ---------------------------------------------------------------------------

/* [Device dimensions] ------------------------------------ */

// Device width in mm
device_width = 160;

// Device depth in mm
device_depth = 100;

// Device front height in mm
device_front_height = 20;

// Device back height in mm
device_back_height = 40;

/* [Target position] -------------------------------------- */

// Target device front height in mm
target_front_height = 50;

// Target device back height in mm (automatically calculated target_angle is used)
target_back_height = 100;

// Target device angle in degrees. If different from 0, target_back_height is automatically calculated to match the angle.
target_angle = 20;

/* [Support] ---------------------------------------------- */

// Side support width in mm. Make sure the width is large enough so that device's feet can rest on it.
support_width = 25;

// Adds a spacer between the two side supports to connect them
support_spacer = true;

// Spacer height in mm
support_spacer_height = 15;

// Spacer depth in mm
support_spacer_depth = 25;

// Front spacer height offset in mm. Adds space below the spacer, allowing for passing cables for example.
support_spacer_front_height_offset = 10;

// Back spacer height offset in mm. Adds space below the spacer, allowing for passing cables for example.
support_spacer_back_height_offset = 10;

// Offset the front spacer towards the inside of the support
support_spacer_front_depth_offset = 0;

// Offset the back spacer towards the inside of the support
support_spacer_back_depth_offset = 0;

/* [Front blocker] ---------------------------------------- */

// Adds a blocker in front of the device to prevent it from sliding forward
front_blocker = true;

// Front blocker height in mm. Should match the height of the device's feet.
front_blocker_height = 1.5;

// Front blocker depth in mm. Should match the front offset of the device's feet.
front_blocker_depth = 3;

/* [Connector] -------------------------------------------- */

// Depth of the connector part that will fit inside the side supports. Must be smaller than support_spacer_depth.
connector_depth = 20;

// Height of the connector part that will fit inside the side supports. Must be smaller than support_spacer_height.
connector_height = 10;

// Width of the connector part that will fit inside the side supports. Must be smaller than support_width.
connector_width = 10;

// Connector fit tolerance in mm. Increase this value if the connector doesn't fit inside the support or decrease to make it fit tighter.
connector_fit_tolerance = 0.4;

/* [Ears] ------------------------------------------------- */

// Adds ears to the side supports to prevent the device from moving sideways
support_ears = true;

// Ear height in mm. If support_ears_follow_device_angle is enabled, this is the minimum height of the ear.
support_ears_height = 20;

// Ear width in mm
support_ears_width = 1;

// Extra space between the device and the support ears in mm
support_ears_slack = 0.4;

// If true, the support ears follow the device angle, otherwise they follow the support angle.
support_ears_follow_device_angle = false;

/* [Other] ------------------------------------------------ */

// Show only the left support
only_left_support = false;

// Show only the right support
only_right_support = false;

// Show only a single spacer
only_support_single_spacer = false;

// Top flat view of the parts
flat_view = false;

// Show the final preview with all the parts connected. DO NOT PRINT THIS!
final_preview = false;

// Space between parts in mm
separation_offset = 10;

/* [Hidden] */

min_connector_margin = 2;
final_connector_width = min(connector_width, support_width - min_connector_margin);
final_connector_depth = min(connector_depth, support_spacer_depth - min_connector_margin);
final_connector_height = min(connector_height, support_spacer_height - min_connector_margin);

final_target_back_height = target_angle == 0 ?
  target_back_height :
  target_front_height + tan(target_angle) * device_depth;
final_target_angle = target_angle == 0 ?
  atan((target_back_height - target_front_height) / device_depth) :
  target_angle;

echo("Calculated target ", target_angle == 0 ?
  str("angle: ", final_target_angle) :
  str("back height: ", final_target_back_height)
);

fudge = .001;
final_support_width = support_width +
  (support_ears ? support_ears_slack : 0);
total_support_width = final_support_width +
  (support_ears ? support_ears_width - fudge : 0);

device_height_difference = device_back_height - device_front_height;
ear_front_height_offset = support_ears_follow_device_angle ?
  (device_height_difference < 0 ? -device_height_difference : 0) : 0;
ear_back_height_offset = support_ears_follow_device_angle ?
  (device_height_difference > 0 ? device_height_difference : 0) : 0;
ear_front_height = support_ears_height + ear_front_height_offset;
ear_back_height = support_ears_height + ear_back_height_offset;
support_front_height = target_front_height - device_front_height;
support_back_height = final_target_back_height - device_back_height;
support_spacer_width = device_width - final_support_width * 2;
support_x_size = max(support_front_height, support_back_height) +
  (front_blocker ? front_blocker_height : 0) +
  (support_ears ? max(ear_front_height, ear_back_height) : 0);
support_spacer_y_size = support_spacer_width + final_connector_width*2;

$fa = 10;
$fs = .4;
$vpr = [
  flat_view ? 0 : (final_preview ? 67.5 : 22.5),
  0,
  flat_view ? 0 : (final_preview ? 22.5 : 0)
];
$vpd = 700;
$vpt = [0, 0, 0];

// --------------------------------------------------------

module support () {
  points = [
    [0, 0],
    [0, device_depth],
    [support_back_height, device_depth],
    [support_front_height, 0],
  ];
  path = [
    [0, 1, 2, 3]
  ];
  ears_width_offset = support_ears ?
    support_ears_width - fudge : 0;

  translate([-support_x_size/2, -device_depth/2, ears_width_offset]) {
    difference() {
      union() {
        union() {
          linear_extrude(final_support_width) { 
            polygon(points, path);
          }
          if (front_blocker) {
            blocker();
          }
        }
        if (support_ears) {
          translate([0, 0, -ears_width_offset]) {
            ear();
          }
        }
      }
      if (support_spacer) {
        connector_holes();
      }
    }
  }
}

module ear() {
  points = [
    [0, 0],
    [0, device_depth],
    [support_back_height + support_ears_height + ear_back_height_offset, device_depth],
    [support_front_height + support_ears_height + ear_front_height_offset, 0],
  ];
  path = [
    [0, 1, 2, 3]
  ];
  color("orange")
  linear_extrude(support_ears_width) { 
    polygon(points, path);
  }
}

module blocker() {
  opposite_side = support_back_height - support_front_height;
  hypotenuse = sqrt(pow(opposite_side, 2) +  pow(device_depth, 2));
  blocker_angle = atan(opposite_side / hypotenuse);

  translate([support_front_height - fudge, fudge, 0]) {
    rotate([0, 0, -blocker_angle]) {
      color("red")
      cube([front_blocker_height, front_blocker_depth, final_support_width]);
    }
  }
}

module connector_holes() {
  connector_height_offset = support_spacer_height - final_connector_height;
  connector_width_offset = final_support_width - final_connector_width;
  connector_depth_offset_front = support_spacer_depth - final_connector_depth;
  connector_depth_offset_back = device_depth - support_spacer_depth;

  // Front spacer hole
  translate([
    connector_height_offset - connector_fit_tolerance/2 + support_spacer_front_height_offset,
    connector_depth_offset_front + support_spacer_front_depth_offset - connector_fit_tolerance/2,
    connector_width_offset - connector_fit_tolerance/2
  ]) {
    color("lightblue")
    cube([
      final_connector_height + connector_fit_tolerance,
      final_connector_depth + connector_fit_tolerance,
      final_connector_width + connector_fit_tolerance
    ]);
  }
  // Back spacer hole
  translate([
    connector_height_offset - connector_fit_tolerance/2 + support_spacer_back_height_offset,
    connector_depth_offset_back - support_spacer_back_depth_offset - connector_fit_tolerance/2,
    connector_width_offset - connector_fit_tolerance/2
  ]) {
    color("lightblue")
    cube([
      final_connector_height + connector_fit_tolerance,
      final_connector_depth + connector_fit_tolerance,
      final_connector_width + connector_fit_tolerance
    ]);
  }
}

module spacer() {
  translate([0, -support_spacer_y_size/2, 0]) {
    translate([-support_spacer_height/2, final_connector_width, 0]) {
      union() {
        cube([support_spacer_height, support_spacer_width, support_spacer_depth]);
        translate([0, -final_connector_width + fudge, 0]) {
          color("lightblue")
          cube([final_connector_height, final_connector_width, final_connector_depth]);
        }
        translate([0, support_spacer_width - fudge, 0]) {
          color("lightblue")
          cube([final_connector_height, final_connector_width, final_connector_depth]);
        } 
      }
    }
  }
}

if (only_right_support) {
  support();
} else if (only_left_support) {
  scale([-1, 1, 1]) {
    support();
  }
} else if (only_support_single_spacer) {
  spacer();
} else if (final_preview) {
  translate([0, 0, -support_x_size/2]) {
    // Right support
    translate([total_support_width + support_spacer_width/2, 0, support_x_size/2]) {
      rotate([0, -90, 0]) {
        support();
      }
    }

    // Left support
    translate([-total_support_width - support_spacer_width/2, 0, support_x_size/2]) {
      rotate([0, 90, 0]) {
        scale([-1, 1, 1]) {
          support();
        }
      }
    }

    if (support_spacer) {
      // Back spacer
      translate([
        0,
        device_depth/2 - support_spacer_back_depth_offset - support_spacer_depth,
        support_spacer_height/2 + support_spacer_back_height_offset
      ]) {
        rotate([0, 90, 90]) {
          spacer();
        }
      }

      // Front spacer
      translate([
        0,
        -device_depth/2 + support_spacer_front_depth_offset + support_spacer_depth,
        support_spacer_height/2 + support_spacer_front_height_offset
      ]) {
        rotate([0, -90, 90]) {
          scale([-1, 1, 1]) {
            spacer();
          }
        }
      }
    }
  }
} else {
  translate([support_spacer ? -support_spacer_height - separation_offset : 0, 0, 0]) {
    // Right support
    translate([(separation_offset + support_x_size)/2, 0, 0]) {
      support();
    }

    // Left support
    translate([-(separation_offset + support_x_size)/2, 0, 0]) {
      scale([-1, 1, 1]) {
        support();
      }
    }

    // Spacers
    if (support_spacer) {
      translate([support_x_size + separation_offset*1.5 + support_spacer_height/2, 0, 0]) {
        spacer();
      }
      translate([support_x_size + support_spacer_height + separation_offset*2.5 + support_spacer_height/2, 0, 0]) {
        spacer();
      }
    }
  }
}
