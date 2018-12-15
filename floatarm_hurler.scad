use <MCAD/shapes/2Dshapes.scad>
include <MCAD/units/metric.scad>

hurler_d = [30,20,10];
hurler_r = 10;
hurler_a = 45;



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
