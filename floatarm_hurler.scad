use <MCAD/shapes/2Dshapes.scad>
include <MCAD/units/metric.scad>
use <floatarm_arm.scad>

hurler_od = 35;
hurler_id = 33;
hurler_w = 30;

module hurler() {
rotate([0,-90,0]) {

	rotate([0,0,-45]) {
		difference() {
			sphere(r = hurler_od/2, center = true, $fn = 60);
			translate([hurler_od-hurler_id,hurler_od-hurler_id,0]) {
				#sphere(r = hurler_id/2, center = true, $fn = 60);
			}
		}
}

	}
}
