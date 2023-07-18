insert_font = "Futura:style=Medium";
include <../../The-Boardgame-Insert-Toolkit/boardgame_insert_toolkit_lib.2.scad>;
include <../../BFD-Insert-Extensions/InsertExtensions.scad>;

$fn = 100;


// Used to visualize how all of the boxes fit together. 
//g_b_visualization = true;          
        
// this is the outer wall thickness. 
//Default = 1.5mm
g_wall_thickness = 3.0;
g_lid_thickness = 3.0;
g_min_bottom_thickness = 1.0;
g_detent_offset = 26; // Need to make this adjust automatically
g_detent_dist_from_corner = 5;
g_detent_reverse = true;

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
g_detent_thickness = 0.35;

// This adjusts the position of the lid detents downward. 
// The larger the value, the bigger the gap between the lid and the box.
g_tolerance_detents_pos = 0;

m_lid_notches = false;
m_lid_bevel_edges = false;
m_lid_overlap = 0.32;

card_sizes = [[64,89]];
card_width = 64;
card_height = 89;


function cards() = gridBox( "Demo", [1,1], ["Magic"], 12, 90, 50, 50, 40, "", false,cutout_sides = [t,t,f,f],lid_height = 30);

function deckBox() = gridBox( "Deck", [1,1], ["Magic"], 12, 90, 75, 70, 96, "", false,cutout_sides = [f,f,f,f],lid_height = 57);

// Focus on one box
g_isolated_print_box = "Deck"; 
g_b_print_lid = true;
g_b_print_box = false;   
  
data =
[ 
    cards(),
    deckBox(),
];

//echo(data);
MakeAll();