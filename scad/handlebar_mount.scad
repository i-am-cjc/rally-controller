rotate([90, 0, 0]) {
    difference() {
    union() {
        cube([30, 5, 40]);
        translate([0, 5, 0]) {
            cube([30, 10, 15]);
        }
    }
    translate([15, 25, 0]) rotate([90, 90, 0]) cylinder(h=50, r=16);
    
  translate([0, 6, 10])
    rotate([0, -45, 0]) {
        cube([30, 6, 10]);
    }  
   
   translate([20, 6, 20])
    rotate([0, 45, 0]) {
        cube([30, 6, 10]);
    }   
}
}

