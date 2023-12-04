insert_font = "FanjofeyAH:style=Regular";
include <../../The-Boardgame-Insert-Toolkit/boardgame_insert_toolkit_lib.2.scad>;
include <../../BFD-Insert-Extensions/InsertExtensions.scad>;

$fn = 100;


// Used to visualize how all of the boxes fit together. 
//g_b_visualization = true;          
        
// this is the outer wall thickness. 
//Default = 1.5mm
g_wall_thickness = 2.0;
g_lid_thickness = 2.0;
g_min_bottom_thickness = 2.0;
//g_detent_offset = 5; // Need to make this adjust automatically
//g_detent_dist_from_corner = 5;
//g_detent_reverse = true;

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
//g_tolerance = 0.15;
//g_detent_thickness = 0.25;

// This adjusts the position of the lid detents downward. 
// The larger the value, the bigger the gap between the lid and the box.
//g_tolerance_detents_pos = 0;

m_lid_notches = false;
m_lid_bevel_edges = true;
//m_lid_overlap = 0.32;

wotrCompartmentSizes = [[241,171,3],[97,152,77],[97,152,77]];
wotrCompartmentPositions = [[0,0],[9.5,9.5],[134.5,9.5]];
box1LabelData = [[[0,14],[0,-14]],["War of the Ring","The Card Game"]];
function mainBox() = 
freeFormBox3( "WOTRCardGame", wotrCompartmentPositions, wotrCompartmentSizes, 245,175,79, stack="",cutout_bottom=[f,t,t],cutout_sides=[[f,f,f,f],[t,t,t,t],[t,t,t,t]],compLabel = [],positioned_labels=true,lid_inset = false,stackable=false,lid_tabs=[f,f,f,f],label_data=box1LabelData,label_size=15,side_cutout_height_pct=94,side_cutout_width_pct=80);

// Focus on one box
g_isolated_print_box = "WOTRCardGame"; 
g_b_print_lid = false;
g_b_print_box = true;   
  
data =
[ 
    mainBox(),
];

//echo(data);
MakeAll();