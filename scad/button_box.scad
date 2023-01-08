// main plate
// 10mm gap
translate([5, 5, 5]) {
    
     

    difference() {
        minkowski() {
            cube([40, 25, 20]);
            sphere(r=5);
            
        }
        translate([-2, -2, 0]) cube([44, 29, 34]);
        
        translate([-5, -5, -5]) {
            translate([15.5, 3, 1]) cube([19, 27, 6]);
            // usb port 10mm x 7mm
            translate([20, -1, 3]) cube([10, 7, 5]);
        }
        translate([5, 20, -5]) {
           cylinder(h=20, r=2.5);
            cylinder(h=4, r=5);
        }

        translate([35, 5, -5]) {
            
            cylinder(h=20, r=2.5);
            cylinder(h=4, r=5);
        }
        
        translate([-5, -5, 11]) cube([500, 500, 500]);

    }
}

color("red") {
    
}