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

card_sizes = [[64,89]];
card_width = 64;
card_height = 89;


function bonusCards() = cardBox("Bonus Cards", ["Bonus","Cards"], 22, "" , label_size = 10,card=0);

function playerBox() = 
 [   "Player Box",
        [
            [ BOX_SIZE_XYZ,                                     [99, 68, 30.5] ],
            boxLid(["Player"], 14, 0, 12),
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 64, 64, 28.5] ],
                    [CMP_SHAPE,                             HEX],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [ POSITION_XY,                          [19+16, 0 ] ],
                    [CMP_CUTOUT_BOTTOM_B,                   t],  
                ]
            ],  
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 13, 44, 10] ],
                    [CMP_SHAPE,                             SQUARE],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [1,1]],
                    [ POSITION_XY,                          [ 8+16, 0] ],   
                ]
            ],
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 15.5, 22, 10] ],
                    [CMP_SHAPE,                             SQUARE],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [1,1]],
                    [ POSITION_XY,                          [ 8+16, 18] ],   
                ]
            ],
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 6, 19, 18.6] ],
                    [CMP_SHAPE,                             SQUARE],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [1,1]],
                    [ POSITION_XY,                          [ 11.5+16, 45] ],   
                ]
            ],
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 8.75, 19, 15.1] ],
                    [CMP_SHAPE,                             SQUARE],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [1,1]],
                    [ POSITION_XY,                          [ 10.125+16, 45] ],   
                ]
            ],
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 15.5, 19, 9] ],
                    [CMP_SHAPE,                             SQUARE],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [1,1]],
                    [ POSITION_XY,                          [ 10.125+11.5, 45] ], 
                    [CMP_CUTOUT_SIDES_4B,                   [f,t,f,f]], 
                    [CMP_CUTOUT_DEPTH_PCT,          10],
                    [CMP_CUTOUT_WIDTH_PCT,          80],
                    [CMP_CUTOUT_HEIGHT_PCT,         22],       
                ]
            ],
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 6, 50, 18] ],
                    [CMP_SHAPE,                             SQUARE],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [1,1]],
                    [ POSITION_XY,                          [ 16,7] ],   
                ]
            ],
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 14, 64, 27.5] ],
                    [CMP_SHAPE,                             SQUARE],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [1,1]],
                    [ POSITION_XY,                          [ 0,0] ],
                    [CMP_CUTOUT_TYPE,                       EXTERIOR],
                    [CMP_CUTOUT_SIDES_4B,                   [f,f,t,f]], 
                    [CMP_CUTOUT_DEPTH_PCT,          20],
                    [CMP_CUTOUT_WIDTH_PCT,          50],
                    [CMP_CUTOUT_HEIGHT_PCT,         33],     
                ]
            ],
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 37, 64, 6] ],
                    [CMP_SHAPE,                             SQUARE],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [1,1]],
                    [POSITION_XY,                          [ 0,0] ],   
                ]
            ],
        ]
   ];
   
function stationBox() = 
 [   "Station Box",
        [
            [ BOX_SIZE_XYZ,                                     [198, 116, 23] ],
            boxLid(["Stations"], 18, 0, 12,lid_radius=12),
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 64, 64, 21] ],
                    [CMP_SHAPE,                             HEX],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [ POSITION_XY,                          [-4.4, 0 ] ],
                    [CMP_CUTOUT_BOTTOM_B,                   t],  
                ]
            ],  
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 64, 64, 21] ],
                    [CMP_SHAPE,                             HEX],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [ POSITION_XY,                          [51.025, 0 ] ],
                    [CMP_CUTOUT_BOTTOM_B,                   t],  
                ]
            ],  
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 64, 64, 21] ],
                    [CMP_SHAPE,                             HEX],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [ POSITION_XY,                          [55.425+51.025, 0 ] ],
                    [CMP_CUTOUT_BOTTOM_B,                   t],  
                ]
            ],  
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 64, 64, 21] ],
                    [CMP_SHAPE,                             HEX],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [ POSITION_XY,                          [23.3125, 48.000 ] ],
                    [CMP_CUTOUT_BOTTOM_B,                   t],  
                ]
            ],  
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 64, 64, 21] ],
                    [CMP_SHAPE,                             HEX],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [ POSITION_XY,                          [23.3125+55.425, 48.000 ] ],
                    [CMP_CUTOUT_BOTTOM_B,                   t],  
                ]
            ],  
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 64, 64, 21] ],
                    [CMP_SHAPE,                             HEX],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [ POSITION_XY,                          [23.3125+55.425+55.425, 48.000 ] ],
                    [CMP_CUTOUT_BOTTOM_B,                   t],  
                ]
            ],  
        ]
   ];
   
function robotBox() = bowlGrid( "Robots", [1,1],["Robots"], 10, 0, 48, 48,14, "",radius=10,lid=false);

function commuterBox() = bowlGrid( "Commuters", [1,1],["Commuters"], 10, 0, 30, 56.5,14, "",radius=6,lid=false);

function robotHolder() = gridBox( "Robot Holder", [3,1], ["Robots"], 18, 0, 52.5, 53, 16.5, stack="", true , padding = [0,0]);

function commuterHolder() = gridBox( "Commuter Holder", [2,2], ["Commuters"], 14, 0, 61.5, 35, 16.5, stack="", true , padding = [0,0]);
  
// Focus on one box
g_isolated_print_box = "Commuter Holder"; 
g_b_print_lid = true;
g_b_print_box = false;   
  
data =
[ 
    bonusCards(),
    playerBox(),
    robotBox(),
    robotHolder(),
    stationBox(),
    commuterBox(),
    commuterHolder(),
    spacer("spacer1",119,204,7.5),
];

//echo(data);
MakeAll();