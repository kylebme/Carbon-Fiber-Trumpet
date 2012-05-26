// 3d printed carbon fiber mold test
// beak90
// all measurements in millimeters
boreRadius = 6.35;
rotateRadius = 31.75;
matThick = 12.7;

difference() {
	translate(v=[0,0,-matThick/2])
		cube(size=[88.9,88.9,matThick],center=true);
	
	difference() {
		rotate_extrude(convexity = 10, $fn = 100)
			translate([rotateRadius, 0, 0])
				circle(r = boreRadius, $fn = 50);

		translate(v=[-44.45,0,-7.5])
			cube(size=[88.9,44.45,15]);
	}
	
	rotate(a=[90,0,0])
		translate(v=[rotateRadius,0,-44.46])
			cylinder(r=boreRadius, h=44.47, $fn=40);
	rotate(a=[90,0,0])
		translate(v=[-rotateRadius,0,-44.46])
			cylinder(r=boreRadius, h=44.47, $fn=40);
	translate([0,20,-7])
		cylinder(r=3.175,h=14,center=true, $fn=50);
	translate([35,-35,-7])
		cylinder(r=3.175,h=14,center=true, $fn=50);
	translate([-35,-35,-7])
		cylinder(r=3.175,h=14,center=true, $fn=50);
	rotate(a=[45,0,0])
		translate([0,50,-50])
			cube(size=[40,45,50],center=true);
}