linear_extrude(height = 60, twist = 180, slices = 180) {
   difference() {
     offset(r = 10) {
      square(20, center = true);
     }
     offset(r = 8) {
       square(20, center = true);
     }
   }
 }

linear_extrude(height = 2)
offset(r = 8) {
  square(20, center = true);
}