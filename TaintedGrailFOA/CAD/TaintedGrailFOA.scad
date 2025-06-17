insert_font = "Libre Baskerville:style=Regular";

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

card_sizes = [[68,95],[44,67]];
card_width = 63;
card_height = 88;
  
g_isolated_print_box = "Markers";
g_b_print_lid = false;
g_b_print_box = true; 

playerCardPositions = [[0,0],[10,55,25]];
playerCardSizes = [[68,54,95],[48,15,71]];

function playerBox(player) = freeFormBox4( player,playerCardPositions,playerCardSizes, 72,54+15+1+4, 96,cutout_bottom=[f,f],bottom_cutout_pct = 50,label_data=[player],lid_patt_radius=5,fit_under=false,lid_inset=false,lid_height=4,stackable = false,lid_tabs = [t,t,f,f],cutout_sides=[[t,t,f,f]],side_cutout_height_pct=20 ,invert_labels=false,stack="");

minisPositions = [[0,0],[2,0],[71,12],[124,12],[124+56,12],[124+56+64,12]];
minisSizes = [[2,67,1],[69,67,38],[53,55,32],[56,55,38],[64,55,32.5],[1,55,1]];
function minisBox() = freeFormBox4("Minis",minisPositions,minisSizes, 249,71,39,cutout_bottom=[f,f],bottom_cutout_pct = 50,label_data=["Minis"],lid_patt_radius=5,fit_under=false,lid_inset=false,lid_height=4,stackable = false,lid_tabs = [t,t,f,f],cutout_sides=[[f,f,f,f]],side_cutout_height_pct=20 ,invert_labels=false,stack="");

menhirsPositions = [[0,0]];
menhirsSizes = [[162,122,63.5]];
function menhirsBox() = freeFormBox4("Menhirs",menhirsPositions,menhirsSizes, 166,126,64.5,cutout_bottom=[f,f],bottom_cutout_pct = 50,label_data=["Menhirs"],lid_patt_radius=5,fit_under=false,lid_inset=false,lid_height=4,stackable = false,lid_tabs = [t,t,f,f],cutout_sides=[[f,f,f,f]],side_cutout_height_pct=20 ,invert_labels=false,stack="");

markersPositions = [[0,0],[0,41]];
markersSizes = [[62.5,40,24],[62.5,75,24]];
markersShapes =[BOWL,BOWL];
function markersBox() = freeFormBox4("Markers",markersPositions,markersSizes, 66.5,120,25,cutout_bottom=[f,f],bottom_cutout_pct = 50,label_data=["Markers"],lid_patt_radius=5,fit_under=true,lid_inset=false,lid_height=4,stackable = false,lid_tabs = [t,t,f,f],cutout_sides=[[f,f,f,f]],side_cutout_height_pct=20 ,invert_labels=false,stack="",shapes=markersShapes);

data =
[
    // Dividers
    marker("Combat Pool","Combat Pool",20),
    marker("Diplomacy Pool","Diplomacy Pool",20),
    
    // Player Box
    playerBox("Beor"),
    playerBox("Maggot"),
    playerBox("Ailei"),
    minisBox(),
    menhirsBox(),
    markersBox(),
    
];

MakeAll();

