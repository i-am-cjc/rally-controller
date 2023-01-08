// main plate

translate([5, 20, -4]) {
    include <threaded_insert.scad>;
}

translate([35, 5, -4]) {
    include <threaded_insert.scad>;
}

difference() {
    minkowski() {
        sphere(r=5);
        cube([40, 25, 3]);
        
    }
    translate([-10, -10, -30]) cube([500, 500, 34]);
    
    translate([10, 5, -1]) cylinder(h=15, r=5);
    translate([25, 5, -1]) cylinder(h=15, r=5);
    
    // trip up / down buttons
    translate([17.5, 20, -1]) cylinder(h=15, r=5);
    translate([32.5, 20, -1]) cylinder(h=51, r=5);
}
translate([-5, -5, 2]) {
    translate([0, 3, 0]) {
        translate([14, 0, 0]) cube([2,2,2]);
        translate([29, 0, 0]) cube([2,2,2]);
    }
    
    translate([0, 15, 0]) {
        translate([14, 0, 0]) cube([2,2,2]);
        translate([29, 0, 0]) cube([2,2,2]);
    }
    
    translate([0, 18, 0]) {
        translate([21, 0, 0]) cube([2,2,2]);
        translate([36, 0, 0]) cube([2,2,2]);
    }
    
    translate([0, 30, 0]) {
        translate([21, 0, 0]) cube([2,2,2]);
        translate([36, 0, 0]) cube([2,2,2]);
    }
}