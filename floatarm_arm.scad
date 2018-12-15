use <MCAD/shapes/2Dshapes.scad>
include <MCAD/units/metric.scad>

arm_d = [10,70,10];
pin_l = 30;
pin_od = 4;
fulcrum_dist = 30;
cweight_dist = 5;

cweight_od = 20;
cweight_thick = 20;

hurler_d = [30,20,10];
hurler_r = 10;
hurler_a = 45;

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

module counterweight()
{
	
}

module hurler() {
	ccube(hurler_d, center = X+Z);
	translate([0,hurler_d[1],0]) {
		rotate([hurler_a,0,0]) {
			ccube(hurler_d, center = X);
		}
	}
}

hurler();
