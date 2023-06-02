unit = 5;
tolerance = 0.17;

module lego(w, h, d = 1, c = "white") {
  dt = unit * (d * 2 - 1/6) + tolerance*2;
  color(c) {
    difference() {
      cube([w * unit, h * unit, d * unit]);

      translate([unit * .25 -tolerance, unit * .25 -tolerance, -dt/2])
        cube( [unit * (w - .5) + tolerance*2, unit * (h - .5) + tolerance*2, dt]);
    }
    for (i = [0:w - 1]) {
      for (j = [0:h - 1]) {
        translate([
          i * unit + unit/2,
          j * unit + unit/2,
          d * unit + unit/12
        ])
        cylinder(d = unit * .5, h = unit / 6, center = true, $fn = 32);
      }
    }
    single = h - 2 < 0 || w - 2 < 0;
    if (h - 2 >= 0 || w - 2 >= 0) {
      for (i = [0:w - 2]) {
        for (j = [0:max(h - 2, 0)]) {
          dy = h - 2 < 0 ? 0.5 : 1;
          hh = h - 2 < 0 ? 0.55 : 1;

          translate([
            i * unit + unit*1,
            dy * (j * unit + unit*1),
            dt/4 - 0.001
          ])
          difference() {
            cylinder(d = unit * .9 * hh - tolerance*2, h = dt/2, center = true, $fn = 32);
            cylinder(d = unit * (single ? .25 : .5) * hh + tolerance*2, h = dt/2 + 1, center = true, $fn = 32);
          }
        }
      }
    }
  }
}

translate([-25, 0, 0])
lego(4, 2);

translate([0, 10, 0])
lego(3, 1, 1/3, c = "yellow");

lego(1, 1, c = "crimson");

// translate([5, 0, 0])
// lego(2, 1, 3, c = "gold");



