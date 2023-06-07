$fn = 64;

{
  translate([10, 0, 5])
    sphere(r = 2);

  translate([-3, 0, 0])
    sphere(r = 3.5);

  translate([0, 10, -3])
    sphere(r = 5);

  translate([5, 5, -10])
    cube([15, 17, 2], center = true);
}

module hull_chain() {
  for (i = [0 : $children - 2]) {
    hull() {
      children(i);
      children(i + 1);
    }
  }
}
