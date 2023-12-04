insert_font = "Futura:style=Medium";
include <../../The-Boardgame-Insert-Toolkit/boardgame_insert_toolkit_lib.2.scad>;
include <../../BFD-Insert-Extensions/InsertExtensions.scad>;

$fn = 100;


// Used to visualize how all of the boxes fit together. 
//g_b_visualization = true;          
        
// this is the outer wall thickness. 
//Default = 1.5mm
g_wall_thickness = 2.0;
g_lid_thickness = 2.0;
g_min_bottom_thickness = 1.0;


// The tolerance value is extra space put between planes of the lid and box that fit together.
// Increase the tolerance to loosen the fit and decrease it to tighten it.
//
// Note that the tolerance is applied exclusivelysto the lid.
// So if the lid is too tight or too loose, change this value ( up for looser fit, down for tighter fit ) and 
// you only need to reprint the lid.
// 
// The exception is the stackable box, where the bottom of the box is the lid of the box below,
// in which case the tolerance also affects that box bottom.
//
g_tolerance = 0.15;
g_detent_thickness = 0.25;

// This adjusts the position of the lid detents downward. 
// The larger the value, the bigger the gap between the lid and the box.
g_tolerance_detents_pos = 0.1;

card_sizes = [[73,74]];
card_width = 73;
card_height = 74;


function boxOne() = gridBox( "Box One", [3,1], ["BARRACKS"], 24, 0, 73, 74, 20, stack="", true , padding = [1,1]);
  
function boxTwo() = 
 [   "Box Two",
        [
            [ BOX_SIZE_XYZ,                                     [225, 78, 22] ],
            boxLid(["EMPERORS"], 24, 0, 12),
            squareCompartmentGrid([1,1],73,74,20,t,padding=[1,1],position=[0,0],cutout_pct = 50), 
            squareCompartmentGrid([1,1],73,74,20,t,padding=[1,1],position=[73+73+2,0],cutout_pct = 50),
            squareCompartmentGrid([3,1],16.5,16.5,2,f,cutout_sides = [t,f,f,f],padding=[6.6255,6.625],position=[73+6.625,0],cutout_pct = 50,side_cutout_height_pct = 15),
            squareCompartmentGrid([3,1],16.5,16.5,2,f,cutout_sides = [f,t,f,f],padding=[6.6255,6.625],position=[73+6.625,57.5],cutout_pct = 50,side_cutout_height_pct = 15)
        ]
 ];
// Focus on one box
g_isolated_print_box = "spacer1"; 
g_b_print_lid = false;
g_b_print_box = true;   
  
data =
[ 
    boxOne(),
    boxTwo(),
    spacer("spacer1",70,219,24),
];

//echo(data);
MakeAll();