module storm() 
{ 
 rotate([0,180,0])
    scale([0.127,0.127,1])
        linear_extrude(height = 1,  scale=1, center = true)
            import(file = "Storm.svg", center = true,dpi = 96);
}


module techToken() 
{ 
 rotate([0,180,0])
    scale([0.128,0.128,1])
        linear_extrude(height = 1,  scale=1, center = true)
            import(file = "TechToken.svg", center = true, dpi = 96);
}

module shieldWallToken() 
{ 
 rotate([0,180,0])
    scale([0.128,0.128,1])
        linear_extrude(height = 1,  scale=1, center = true)
            import(file = "Shieldwall.svg", center = true, dpi = 96);
}

module shell(thickness,height) {
    intersection() {
        //translate([0,0,-2])
        scale([1,1,height])
            children(0);   
        minkowski() {
            difference () {
                // Universe cube
                translate([-150/2, -150/2, -height/2 ]) 
                    cube([150, 150, height]);
                // Original part
                scale([1,1,height])
                    children(0); 
            }
            // Tool for the minkowski shell
            sphere(r=thickness);
        }
    } 
}


module raindrop2D(thick, radius, length, center = true){
    l = length - radius;
    x = (radius * radius)/l;
    y = (radius/l) * sqrt((l * l) -(radius * radius));
    echo(x);
    echo(y);
	if(!center){
		translate([radius, radius, 0]){
			cylinder(h = thick, r = radius,$fn=100);
			linear_extrude(height = thick)
			polygon(points=[[x, y],
                            [x, -y],
                            [l, 0]], paths=[[0,1,2]]);
		}
	}else if(center){
        translate([0, 0, 0-thick/2]){
            cylinder(h = thick, r = radius,$fn=100);
                linear_extrude(height = thick)
                polygon(points=[[x, y],
                                [x, -y],
                                [l, 0]], paths=[[0,1,2]]);
        }
	}	
}

module shell2(thickness,height) {
    difference() {
        minkowski() {
            scale([1,1,height])
                children(0);
            sphere(r = thickness);
        }

        //translate([0,0,2])
            scale([1,1,height])
                children(0);
        translate([-250,-250,height/2])
            cube([500,500,thickness]);
        translate([-250,-250,-thickness-height/2])
            cube([500,500,thickness]);
    }
}

module stormHolder()
{
    tokenHolder(3,2.2,1,2)
        storm();
}

module techTokenHolder()
{
    tokenHolder(3,2.2,1,2)
        techToken();
}

module hmsHolder()
{
    tokenHolder(3,2.2,1,2)
        raindrop2D(1, 15, 45, center = true);
}

module shieldWallHolder()
{
    tokenHolder(3,2.2,1,2)
        shieldWallToken();
}

module testing(holder_height,token_height,wall_width,base_width,custom_shape="",custom_shape_scale=1)
{
    tokenHolder(holder_height,token_height,wall_width,base_width)
        rotate([0,180,0])
            scale(custom_shape_scale)
                linear_extrude(height = 1,  scale=1, center = true)
                    import(file = custom_shape, center = true,dpi = 96);
}

module tokenHolder(holder_height,token_height,wall_width,base_width)
{
     translate([0,0,token_height/2])
        shell2(wall_width,holder_height)
            children(0);
            
    shell(base_width,holder_height-token_height)
        children(0);
}

module fastTokenHolder(holder_height,token_height,wall_width,base_width)
{
    translate([0,0,0])
        fast_shell(wall_width,holder_height)
            children();
            
    fast_shell(-base_width,holder_height-token_height)
        children();
}
 
module turnMarkerHolder() {
    tokenHolder(3,2.2,1,2)
    translate([0,0,-0.5])
    difference() {
    rotate_extrude(angle = 35,$fn=100)
        square([38,1,]);
    rotate_extrude(angle =360, $fn =100)
        square([13,1]);
    }
}

module fast_shell(thickness,height)
{
    echo(thickness < 0);
    if (thickness < 0)
    {
        linear_extrude(height=height)
            intersection() {     
                children();
                minkowski() 
                {
                    difference () {
                        translate([-150/2, -150/2 ]) 
                            square([150, 150]);
                        children();
                    }
                    circle(r=-thickness);
                }
            }
    } else
    {
        linear_extrude(height=height)
            difference() {
                minkowski() 
                {
                    children();
                    circle(r = thickness);
                }
                children();
            }
    }
}
$fn=50;
echo($fn);
fastTokenHolder(3,2.2,1,2)
    scale([0.127,0.127,0])
    {
        import(file = "Storm.svg", center = true,dpi = 96);
    };



