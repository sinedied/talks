unit = 5;

module lego(w, h, d, c = "white") {
  color(c)
  scale(unit)
  union() {
    difference() {
      cube([w, h, d]);

      dhole = d*2 - 1/6;
      translate([0.25, 0.25, -dhole/2])
      cube([w - 0.5, h - 0.5, dhole]);
    }

    for (i = [0 : w - 1])
      for (j = [0 : h - 1])
        translate([i + 1/2, j + 1/2, d])
          cylinder(1/6, d = 0.5, $fn = 32);
  }
}

translate([-4*unit, 0, 0])
lego(4, 2, 1, "lightblue");

lego(3, 1, 1/3, "crimson");

translate([0, 1*unit, 0])
lego(1, 1, 2, "yellow");

