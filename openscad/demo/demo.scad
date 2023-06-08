


























































/*
unit = 8;
fudge = 0.001 / unit;
tolerance = 0.15 / unit;

module lego(w, d, h, c = "white") {
  h_hole = (h - 1/6 + tolerance)*2;

  color(c)
  scale(unit)
  {
    union()
    {
      difference()
      {
        cube([w, d, h]);

        translate([0.25 - tolerance/2, 0.25 - tolerance/2, -h_hole/2])
          cube([w - 0.5 + tolerance, d - 0.5 + tolerance, h_hole]);
      }

      for (i = [0 : w - 1])
        for (j = [0 : d - 1])
          translate([0.5 + i, 0.5 + j, h - fudge])
            cylinder(1/6, d = 0.5, $fn = 32);

      if (w > 1 || d > 1)
      {
        single = w == 1 || d == 1;
        df = single ? 0.55 : 1;

        for (i = [0 : max(w - 2, 0)])
          for (j = [0 : max(d - 2, 0)])
            translate([
              i + (w == 1 ? 0.5 : 1),
              j + (d == 1 ? 0.5 : 1),
              fudge
            ])
              difference()
              {
                cylinder(d = 0.915 * df, h_hole/2, $fn = 32);
                cylinder(d = (0.5 + tolerance*2) * df * df, h_hole, $fn = 32, center = true);
              }
      }
    }
  }
}

translate([-5 * unit, 0, 0])
  lego(4, 2, 1, "cyan");

translate([0, 2 * unit, 0])
  lego(1, 1, 2, "yellow");

lego(3, 1, 1/3, "crimson");
*/
