difference() {
    cylinder(h=8, r=4.5);
    translate([0, 0, 8.5]) scale([1, 1, 0.3]) {
        sphere(r=4.5);
    }
}
translate([-6.5, -1, 0]) cube([13, 2, 2]);
rotate([0, 0, 90])
translate([-6.5, -1, 0]) cube([13, 2, 2]);
