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

card_sizes = [[68,91],[102,102]];
card_width = 68;
card_height = 91;
insert_font = "Libre Baskerville:style=Regular";

function playerSigns() = 
 [   "Player Signs",
        [
            [ BOX_SIZE_XYZ,                                     [118, 69, 15.5] ],
            boxLid(["Player Signs"], 10, 0, 12),
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [3,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 36, 36, 15.5] ],
                    [CMP_SHAPE,                             TRI],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [ POSITION_XY,                          [ CENTER, -2 ] ],
                    [CMP_CUTOUT_BOTTOM_B,                   t]
                ]
            ],          
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [2,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 36, 36, 15.5] ],
                    [CMP_SHAPE,                             TRI2],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [ POSITION_XY,                          [ CENTER, -2 ] ],
                    [CMP_CUTOUT_BOTTOM_B,                   t]
                ]
            ],
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [3,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 36, 36, 15.5] ],
                    [CMP_SHAPE,                             TRI2],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [ POSITION_XY,                          [ CENTER, 31] ],
                    [CMP_CUTOUT_BOTTOM_B,                   t]
                ]
            ],
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [2,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 36, 36, 15.5] ],
                    [CMP_SHAPE,                             TRI],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [ POSITION_XY,                          [ CENTER, 31] ],
                    [CMP_CUTOUT_BOTTOM_B,                   t]         
                ]
            ],  
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 16, 16, 15.5] ],
                    [CMP_SHAPE,                             ROUND],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [ POSITION_XY,                          [ 0, CENTER] ],   
                    [CMP_CUTOUT_TYPE,                       EXTERIOR],
                    [CMP_CUTOUT_SIDES_4B,                   [f,f,t,f]],   
                ]
            ],  
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 16, 16, 15.5] ],
                    [CMP_SHAPE,                             ROUND],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [ POSITION_XY,                          [ MAX, CENTER] ],   
                    [CMP_CUTOUT_TYPE,                       EXTERIOR],
                    [CMP_CUTOUT_SIDES_4B,                   [f,f,f,t]],    
                ]
            ],      
        ]
   ];     

function otherSigns() = 
 [   "Other Signs",
        [
            [ BOX_SIZE_XYZ,                                     [118, 69, 15.5] ],
            boxLid(["Other Signs","Misc Tokens"], 10, 0, 12),
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [2,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 36, 36, 15.5] ],
                    [CMP_SHAPE,                             TRI],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [ POSITION_XY,                          [ 1, -2 ] ],
                    [CMP_CUTOUT_BOTTOM_B,                   t]
                ]
            ],          
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [2,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 36, 36, 15.5] ],
                    [CMP_SHAPE,                             TRI2],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [ POSITION_XY,                          [ 20, -2 ] ],
                    [CMP_CUTOUT_BOTTOM_B,                   t]
                ]
            ],
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [2,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 36, 36, 15.5] ],
                    [CMP_SHAPE,                             TRI2],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [ POSITION_XY,                          [ 1, 31] ],
                    [CMP_CUTOUT_BOTTOM_B,                   t]
                ]
            ],
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [2,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 36, 36, 15.5] ],
                    [CMP_SHAPE,                             TRI],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [ POSITION_XY,                          [ CENTER, 31] ],
                    [CMP_CUTOUT_BOTTOM_B,                   t]         
                ]
            ],  
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 16, 21, 15.5] ],
                    [CMP_SHAPE,                             ROUND],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [ POSITION_XY,                          [ 0, CENTER] ],   
                    [CMP_CUTOUT_TYPE,                       EXTERIOR],
                    [CMP_CUTOUT_SIDES_4B,                   [f,f,t,f]],   
                ]
            ],  
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,3]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 16, 16, 15.5] ],
                    [CMP_SHAPE,                             ROUND],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [1,1]],
                    [ POSITION_XY,                          [ MAX, CENTER] ],   
                    [CMP_CUTOUT_TYPE,                       EXTERIOR],
                    [CMP_CUTOUT_SIDES_4B,                   [f,f,f,t]],    
                ]
            ],    
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 16, 16, 15.5] ],
                    [CMP_SHAPE,                             ROUND],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [ POSITION_XY,                          [ 83, 0] ],   
                    [CMP_CUTOUT_TYPE,                       EXTERIOR],
                    [CMP_CUTOUT_SIDES_4B,                   [t,f,f,f]],   
                ]
            ],  
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 16, 16, 15.5] ],
                    [CMP_SHAPE,                             ROUND],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [ POSITION_XY,                          [ 83, MAX] ],   
                    [CMP_CUTOUT_TYPE,                       EXTERIOR],
                    [CMP_CUTOUT_SIDES_4B,                   [f,t,f,f]],   
                ]
            ], 
        ]
   ];    
  
 function otherTokens() = 
 [   "Other Tokens",
        [
            [ BOX_SIZE_XYZ,                                     [132, 62, 27.5] ],
            boxLid(["Other","Tokens"], 10, 0, 12),
 
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 41, 41, 24] ],
                    [CMP_SHAPE,                             ROUND],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [ POSITION_XY,                          [ 5, 5] ],   
                    [CMP_CUTOUT_TYPE,                       EXTERIOR],
                    //[CMP_CUTOUT_SIDES_4B,                   [t,f,f,f]], 
                    [CMP_CUTOUT_BOTTOM_B,                   t]  
                ]
            ], 
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 41, 41, 2.5] ],
                    [CMP_SHAPE,                             SQUARE],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [ POSITION_XY,                          [ 5, 5] ],   
                    [CMP_CUTOUT_TYPE,                       EXTERIOR],
                    //[CMP_CUTOUT_SIDES_4B,                   [t,f,f,f]], 
                    //[CMP_CUTOUT_BOTTOM_B,                   t]  
                ]
            ], 
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 51, 51, 11] ],
                    [CMP_SHAPE,                             ROUND],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [ POSITION_XY,                          [ 0, 0] ],   
                    [CMP_CUTOUT_TYPE,                       EXTERIOR],
                    //[CMP_CUTOUT_SIDES_4B,                   [t,f,f,f]], 
                    //[CMP_CUTOUT_BOTTOM_B,                   t]  
                ]
            ], 
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 26, 26, 25] ],
                    [CMP_SHAPE,                             ROUND],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [ POSITION_XY,                          [ 50, 0] ],   
                    [CMP_CUTOUT_TYPE,                       EXTERIOR],
                    [CMP_CUTOUT_SIDES_4B,                   [t,f,f,f]], 
                    //[CMP_CUTOUT_BOTTOM_B,                   t]  
                ]
            ], 
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 21, 21, 26] ],
                    [CMP_SHAPE,                             ROUND],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [ POSITION_XY,                          [ 77, 0] ],   
                    [CMP_CUTOUT_TYPE,                       EXTERIOR],
                    [CMP_CUTOUT_SIDES_4B,                   [t,f,f,f]],  
                ]
            ], 
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 21, 21, 25] ],
                    [CMP_SHAPE,                             ROUND],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [ POSITION_XY,                          [ 99, 0] ],   
                    [CMP_CUTOUT_TYPE,                       EXTERIOR],
                    [CMP_CUTOUT_SIDES_4B,                   [t,f,f,f]],  
                ]
            ], 
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 26, 26, 25.5-7.5] ],
                    [CMP_SHAPE,                             ROUND],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [ POSITION_XY,                          [ 55.5, 30] ],   
                    [CMP_CUTOUT_TYPE,                       EXTERIOR],
                ]
            ], 
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 31, 31, 19-7.5] ],
                    [CMP_SHAPE,                             ROUND],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [ POSITION_XY,                          [ 53, MAX] ],   
                    [CMP_CUTOUT_TYPE,                       EXTERIOR],
                    [CMP_CUTOUT_SIDES_4B,                   [f,t,f,f]], 
                    //[CMP_CUTOUT_BOTTOM_B,                   t]  
                ]
            ], 
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 31, 31, 10-7.5] ],
                    [CMP_SHAPE,                             SQUARE],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [ POSITION_XY,                          [ 53, MAX] ],   
                    [CMP_CUTOUT_TYPE,                       EXTERIOR],
                    [CMP_CUTOUT_SIDES_4B,                   [f,t,f,f]], 
                    //[CMP_CUTOUT_BOTTOM_B,                   t]  
                ]
            ], 
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 41, 16, 11] ],
                    [CMP_SHAPE,                             SQUARE],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [ POSITION_XY,                          [ 86, MAX] ],   
                ]
            ], 
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 16, 21, 18] ],
                    [CMP_SHAPE,                             ROUND],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [ POSITION_XY,                          [ MAX, CENTER] ],   
                    [CMP_CUTOUT_TYPE,                       EXTERIOR],
                    [CMP_CUTOUT_SIDES_4B,                   [f,f,f,t]],   
                ]
            ], 
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 32, 16, 26.5] ],
                    [CMP_SHAPE,                             SQUARE],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [ POSITION_XY,                          [ 91.5, MAX] ],   
                    [CMP_CUTOUT_TYPE,                       EXTERIOR],
                    [CMP_CUTOUT_SIDES_4B,                   [f,t,f,f]], 
                ]
            ],
        ]
   ];   


 function minis1() = 
 [   "Minis 1",
        [
            [ BOX_SIZE_XYZ,                                 [132, 80, 27.5] ],
            boxLid(["Free Spirit","Gamnbler","Reaper"], 10, 90, 33),
 
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 56, 76, 25.5] ],
                    [CMP_SHAPE,                             SQUARE],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [POSITION_XY,                           [ 0, CENTER] ],   
                ]
            ], 
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 36, 76, 25.5] ],
                    [CMP_SHAPE,                             SQUARE],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [POSITION_XY,                           [ 58, CENTER] ],   
                ]
            ], 
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 32, 76, 25.5] ],
                    [CMP_SHAPE,                             SQUARE],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [POSITION_XY,                           [ 56+36+4, CENTER] ],   
                ]
            ], 
        ],
 ];
 
 function minis2() = 
 [   "Minis 2",
        [
            [ BOX_SIZE_XYZ,                                 [124.5, 70, 33] ],
            boxLid(["Specialist","Reaper"], 8, 90, 33),
 
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 72.5, 66, 31] ],
                    [CMP_SHAPE,                             SQUARE],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [POSITION_XY,                           [ 0, CENTER] ],   
                ]
            ], 
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 46.5, 66, 31] ],
                    [CMP_SHAPE,                             SQUARE],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [POSITION_XY,                           [ MAX, CENTER] ],   
                ]
            ],
        ],
 ];
 
 function minis3() = 
 [   "Minis 3",
        [
            [ BOX_SIZE_XYZ,                                 [142, 48, 27.5] ],
            boxLid(["Thorn Knight","Tough Guy"], 7, 0, 12),
 
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 80, 44, 25.5] ],
                    [CMP_SHAPE,                             SQUARE],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [POSITION_XY,                           [ 0, CENTER] ],   
                ]
            ], 
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 56, 44, 25.5] ],
                    [CMP_SHAPE,                             SQUARE],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [POSITION_XY,                           [ MAX, CENTER] ],   
                ]
            ],
        ],
];
  
g_isolated_print_box = "Markers Box 1"; 
g_b_print_lid = false;
g_b_print_box = true; 

data =
[
    // Secret Cards Box
    verticleCardBox("Secret Cards", ["Secret Cards"], 150, 2, 0, ""),
    marker("Removed Secrets Divider","Removed",50),
    
    // Player Careds and Dividers
    verticleCardBox("Player Cards", ["Player Cards"], 138, 1, 0,  ""),
    marker("Specialist Divider","Specialist",50),
    marker("Tough Guy Divider","Tough Guy",50),
    marker("Free Spirit Divider","Free Spirit",50),
    marker("Gambler Divider","Gambler",50),
    marker("Reaper Divider","Reaper",50),
    marker("Thorn Knight Divider","Thorn Knight",50),
    marker("Deck Marker","Deck",50),
    marker("Discard Marker","Discard",50),
    marker("Hand Marker","Hand",50),
    marker("Progress Marker","Progress",50),
    marker("Other Marker","Other",50),
    

    // Tiles Box and Dividers
    verticleCardBox("Core Tile Cards", ["Core Tiles"], 115, 1, 0,  "", 1),
    verticleCardBox("Expansion Tile Cards", ["Expansion Tiles"], 105, 1, 0,  "", 1),
    marker("Removed Tiles Divider","Removed",50,card = 1),
    marker("Current Dream Large Divider","Current Dream",50,card = 1),
    marker("Slumber Deck Divider","Slumber Deck",50,card = 1),
    marker("Slumber Map Divider","Slumber Map",50,card = 1),
    
    
    // Markets + Storage
    verticleCardBox("Markets + Storage", ["Markets + Storage"], 138, 1, 0,  ""),
    marker("Current Dream Small Divider","Current Dream",50),
    marker("Storage Divider","Storage",50),
    marker("Turns Divider","Turns",50),
    marker("Flaws Divider","Flaws",50),
    marker("Influence Market Divider","Influence",50),
    marker("Items Market Divider","Items",50),
    marker("Fate Divider","Fate",50),
    marker("Seasons Divider","Seasons",50),
    
    // Signs and other token boxes
    playerSigns(),
    otherSigns(),
    otherTokens(),
    
    // Mask boxes
    box( "Mask Box 1", 1, ["Masks"], 20, 0, 138, 114, 8, "", f), 
    box( "Mask Box 2", 1, ["Masks 2"], 20, 0, 132, 110, 14.5, "", f),
    box( "Mask Box 3", 1, ["Masks 3"], 20, 0, 132, 110, 14.5, "", f),
    
    // Bead boxes
    bowl("Markers Box 1", 2, ["Distress","Ether"],10, 0, 62, 44, 18, ""),
    bowl("Markers Box 2", 2, ["Universal","Intent & Gems"],10, 0, 59.25, 66, 18, ""),
    
    // Mini boxes
    minis1(),
    minis2(),
    minis3(),
    
    //expansions, promos
    cardBox("Riddler",["Riddler"],20,"",12),
    cardBox("Promos",["Promos"],12,"",12),
    
    // Mask Stands
    
    // Blank marker for whatever
    marker("Blank Marker","",50),
    
];

MakeAll();

