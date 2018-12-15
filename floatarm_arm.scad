use <MCAD/shapes/2Dshapes.scad>
include <MCAD/units/metric.scad>

arm_d = [10,70,10];
pin_l = 30;
pin_od = 3;
fulcrum_dist = 30;
cweight_dist = 5;

cweight_od = 20;
cweight_thick = 20;

module arm()
{
	translate([0,-fulcrum_dist,0]) {
		difference() {
			ccube(arm_d, center = X+Z);
			translate([0,cweight_dist,0]) {
				pin_hole();
			}
			translate([0,fulcrum_dist,0]) {
				pin_hole();
			}
		}
	}
}

module pin_hole() {
	rotate([0,90,0]) {
		cylinder(r = pin_od/2, h = pin_l, center = true, $fn = 20);
	}
}

arm();
