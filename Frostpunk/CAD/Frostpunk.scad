include <../../The-Boardgame-Insert-Toolkit/boardgame_insert_toolkit_lib.2.scad>;
include <../../BFD-Insert-Extensions/InsertExtensions.scad>;

$fn = 100;

// determines whether lids are output.
g_b_print_lid = t;

// determines whether boxes are output.
g_b_print_box = f; 

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
// Note that the tolerance is applied exclusively to the lid.
// So if the lid is too tight or too loose, change this value ( up for looser fit, down for tighter fit ) and 
// you only need to reprint the lid.
// 
// The exception is the stackable box, where the bottom of the box is the lid of the box below,
// in which case the tolerance also affects that box bottom.
//
g_tolerance = 0.15;

// This adjusts the position of the lid detents downward. 
// The larger the value, the bigger the gap between the lid and the box.
g_tolerance_detents_pos = 0.1;

card_sizes = [[66,91],[72.5,125.5]];
card_width = 68;
card_height = 91;
insert_font = "Futura:style=Medium";

// Focus on one box
g_isolated_print_box = "Society"; 

data =
[
    // Law cards
    cardBox("Laws",["Laws"],32,"",20,card=1),
    // Morning cards
    cardBox("Morning",["Morning"],22,"",20,card=1),
    // Society and Social Dispute
    cardBox("Society",["Society","Social Dispute"],18,"",8,card=1),
];

MakeAll();