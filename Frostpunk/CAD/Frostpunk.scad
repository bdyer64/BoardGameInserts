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

card_sizes = [[67,92],[73,126]];
card_width = 68;
card_height = 91;
insert_font = "Futura:style=Medium";

function tents() = 
 [   "Tents",
        [
            [ BOX_SIZE_XYZ,                                     [71, 37, 7.5] ],
            boxLid(["Tents"], 10, 0, 12),
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 33, 33, 5.5] ],
                    [CMP_SHAPE,                             SQUARE],   
                    [ POSITION_XY,                          [0, 0 ] ],
                    [CMP_CUTOUT_SIDES_4B,                   [t,f,f,f]],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Tent" ],
                            [ LBL_SIZE,     5],
                            [ ROTATION,     0 ],
                            [ LBL_FONT,     insert_font],
                            [ POSITION_XY,   [0,0]]
                        ]
                    ], 
                ]
            ],  
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 33, 33, 5.5] ],
                    [CMP_SHAPE,                             SQUARE],   
                    [ POSITION_XY,                          [34, 0 ] ],
                    [CMP_CUTOUT_SIDES_4B,                   [t,f,f,f]],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Tent" ],
                            [ LBL_SIZE,     5],
                            [ ROTATION,     0 ],
                            [ LBL_FONT,     insert_font],
                            [ POSITION_XY,   [0,0]]
                        ]
                    ], 
                ]
            ],
        ]
];

function bunkhouses() = 
 [   "Bunkhouses",
        [
            [ BOX_SIZE_XYZ,                                     [71, 37, 12.5] ],
            boxLid(["Bunkhouse"], 10, 0, 12),
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 33, 33, 10] ],
                    [CMP_SHAPE,                             SQUARE],   
                    [ POSITION_XY,                          [0, 0 ] ],
                    [CMP_CUTOUT_SIDES_4B,                   [t,f,f,f]],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Bunkhouse" ],
                            [ LBL_SIZE,     5],
                            [ ROTATION,     -45 ],
                            [ LBL_FONT,     insert_font],
                            [ POSITION_XY,   [0,3]]
                        ]
                    ], 
                ]
            ],  
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 33, 33, 10] ],
                    [CMP_SHAPE,                             SQUARE],   
                    [ POSITION_XY,                          [34, 0 ] ],
                    [CMP_CUTOUT_SIDES_4B,                   [t,f,f,f]],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Bunkhouse" ],
                            [ LBL_SIZE,     5],
                            [ ROTATION,     -45 ],
                            [ LBL_FONT,     insert_font],
                            [ POSITION_XY,   [0,3]]
                        ]
                    ], 
                ]
            ],
        ]
];

function houses() = 
 [   "Houses",
        [
            [ BOX_SIZE_XYZ,                                     [71, 37, 12.5] ],
            boxLid(["Houses"], 10, 0, 12),
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 33, 33, 10] ],
                    [CMP_SHAPE,                             SQUARE],   
                    [ POSITION_XY,                          [0, 0 ] ],
                    [CMP_CUTOUT_SIDES_4B,                   [t,f,f,f]],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "House" ],
                            [ LBL_SIZE,     5],
                            [ ROTATION,     0 ],
                            [ LBL_FONT,     insert_font],
                            [ POSITION_XY,   [0,0]]
                        ]
                    ], 
                ]
            ],  
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 33, 33, 10] ],
                    [CMP_SHAPE,                             SQUARE],   
                    [ POSITION_XY,                          [34, 0 ] ],
                    [CMP_CUTOUT_SIDES_4B,                   [t,f,f,f]],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "House" ],
                            [ LBL_SIZE,     5],
                            [ ROTATION,     0 ],
                            [ LBL_FONT,     insert_font],
                            [ POSITION_XY,   [0,0]]
                        ]
                    ], 
                ]
            ],
        ]
];

function smallBuildings() = 
 [   "Small Buildings",
        [
            [ BOX_SIZE_XYZ,                                     [71, 139, 15] ],
            boxLid(["Small Buildings"], 10, 90, 12),
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 33, 33, 10.5] ],
                    [CMP_SHAPE,                             SQUARE],   
                    [ POSITION_XY,                          [0, 0 ] ],
                    [CMP_CUTOUT_SIDES_4B,                   [f,f,t,f]],
                    compartmentLabel(label="Gathering",rotation = -90,position=[0,10]),
                    compartmentLabel(label="Post",rotation = -90),     
                ]
            ],  
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 33, 33, 8] ],
                    [CMP_SHAPE,                             SQUARE],   
                    [ POSITION_XY,                          [34, 0 ] ],
                    [CMP_CUTOUT_SIDES_4B,                   [f,f,f,t]],
                    compartmentLabel(label="Medical",rotation = 90,position=[0,10]),
                    compartmentLabel(label="Post",rotation = 90),   
                ]
            ],
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 33, 33, 13] ],
                    [CMP_SHAPE,                             SQUARE],   
                    [ POSITION_XY,                          [0, 34 ] ],
                    [CMP_CUTOUT_SIDES_4B,                   [f,f,t,f]],
                    compartmentLabel(label="Hunters",rotation = -90,position=[0,10]),
                    compartmentLabel(label="Hut",rotation = -90),   
                ]
            ],  
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 33, 33, 8] ],
                    [CMP_SHAPE,                             SQUARE],   
                    [ POSITION_XY,                          [34, 34 ] ],
                    [CMP_CUTOUT_SIDES_4B,                   [f,f,f,t]],
                    compartmentLabel(label="Sawmill",rotation = 90),
                ]
            ], 
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 33, 33, 8] ],
                    [CMP_SHAPE,                             SQUARE],   
                    [ POSITION_XY,                          [0, 68 ] ],
                    [CMP_CUTOUT_SIDES_4B,                   [f,f,t,f]],
                    compartmentLabel(label="Charcoal",rotation = -90,position=[0,10]),
                    compartmentLabel(label="Kiln",rotation = -90),   
                ]
            ],  
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 33, 33, 3] ],
                    [CMP_SHAPE,                             SQUARE],   
                    [ POSITION_XY,                          [34, 68 ] ],
                    [CMP_CUTOUT_SIDES_4B,                   [f,f,f,t]],
                    compartmentLabel(label="Factory",rotation = 90),
                ]
            ],   
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 33, 33, 5.5] ],
                    [CMP_SHAPE,                             SQUARE],   
                    [ POSITION_XY,                          [0, 102 ] ],
                    [CMP_CUTOUT_SIDES_4B,                   [f,f,t,f]],
                    compartmentLabel(label="Workshop",rotation = -90),
                ]
            ],  
        ]
];

function lawBuildings() = 
 [   "Law Buildings",
        [
            [ BOX_SIZE_XYZ,                                     [71, 139, 12.5] ],
            boxLid(["Law Buildings"], 10, 90, 12),
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 33, 33, 5.5] ],
                    [CMP_SHAPE,                             SQUARE],   
                    [ POSITION_XY,                          [0, 0 ] ],
                    [CMP_CUTOUT_SIDES_4B,                   [f,f,t,f]],  
                ]
            ],  
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 33, 33, 5.5] ],
                    [CMP_SHAPE,                             SQUARE],   
                    [ POSITION_XY,                          [34, 0 ] ],
                    [CMP_CUTOUT_SIDES_4B,                   [f,f,f,t]],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 33, 33, 3] ],
                    [CMP_SHAPE,                             SQUARE],   
                    [ POSITION_XY,                          [0, 34 ] ],
                    [CMP_CUTOUT_SIDES_4B,                   [f,f,t,f]],
                ]
            ],  
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 33, 33, 3] ],
                    [CMP_SHAPE,                             SQUARE],   
                    [ POSITION_XY,                          [34, 34 ] ],
                    [CMP_CUTOUT_SIDES_4B,                   [f,f,f,t]],
                ]
            ], 
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 33, 33, 10.5] ],
                    [CMP_SHAPE,                             SQUARE],   
                    [ POSITION_XY,                          [0, 68 ] ],
                    [CMP_CUTOUT_SIDES_4B,                   [f,f,t,f]],
                ]
            ],  
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 33, 33, 3] ],
                    [CMP_SHAPE,                             SQUARE],   
                    [ POSITION_XY,                          [34, 68 ] ],
                    [CMP_CUTOUT_SIDES_4B,                   [f,f,f,t]],
                ]
            ],   
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 65, 33, 3] ],
                    [CMP_SHAPE,                             SQUARE],   
                    [ POSITION_XY,                          [0.5, 102 ] ],
                    [CMP_CUTOUT_SIDES_4B,                   [f,f,t,t]],
                ]
            ],  
        ]
];

function scenerioBuildings() = 
 [   "Scenerio Buildings",
        [
            [ BOX_SIZE_XYZ,                                     [71, 105, 12.5] ],
            boxLid(["Scenerio" , "Buildings"], 10, 90, 12),
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 33, 33, 10.5] ],
                    [CMP_SHAPE,                             SQUARE],   
                    [ POSITION_XY,                          [0, 0 ] ],
                    [CMP_CUTOUT_SIDES_4B,                   [f,f,t,f]],
                ]
            ],  
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 33, 33, 8] ],
                    [CMP_SHAPE,                             SQUARE],   
                    [ POSITION_XY,                          [34, 0 ] ],
                    [CMP_CUTOUT_SIDES_4B,                   [f,f,f,t]],
                ]
            ], 
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 65, 33, 8] ],
                    [CMP_SHAPE,                             SQUARE],   
                    [ POSITION_XY,                          [0.5, 34 ] ],
                    [CMP_CUTOUT_SIDES_4B,                   [f,f,t,f]],
                ]
            ],  
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 65, 33, 10.5] ],
                    [CMP_SHAPE,                             SQUARE],   
                    [ POSITION_XY,                          [0.5, 68 ] ],
                    [CMP_CUTOUT_SIDES_4B,                   [f,f,t,f]],
                ]
            ],  
        ]
];

function destroyedBuildings() = 
 [   "Destroyed Buildings",
        [
            [ BOX_SIZE_XYZ,                                     [71, 71, 12.5] ],
            boxLid(["Destroyed","Buildings"], 9, 90, 16),
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 33, 33, 10.5] ],
                    [CMP_SHAPE,                             SQUARE],   
                    [ POSITION_XY,                          [0, 0 ] ],
                    [CMP_CUTOUT_SIDES_4B,                   [f,f,t,f]],  
                ]
            ],  
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 33, 33, 10.5] ],
                    [CMP_SHAPE,                             SQUARE],   
                    [ POSITION_XY,                          [34, 0 ] ],
                    [CMP_CUTOUT_SIDES_4B,                   [f,f,f,t]],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 33, 33, 10.5] ],
                    [CMP_SHAPE,                             SQUARE],   
                    [ POSITION_XY,                          [0, 34 ] ],
                    [CMP_CUTOUT_SIDES_4B,                   [f,f,t,f]],
                ]
            ],  
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 33, 33, 8] ],
                    [CMP_SHAPE,                             SQUARE],   
                    [ POSITION_XY,                          [34, 34 ] ],
                    [CMP_CUTOUT_SIDES_4B,                   [f,f,f,t]],
                ]
            ], 
        ]
];

function largeBuildings() = 
 [   "Large Buildings",
        [
            [ BOX_SIZE_XYZ,                                     [105, 135, 7.5] ],
            boxLid(["Large Buildings"], 10, 90, 12),
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 33, 65, 5.5] ],
                    [CMP_SHAPE,                             SQUARE],   
                    [ POSITION_XY,                          [0, 0 ] ],
                    [CMP_CUTOUT_SIDES_4B,                   [t,f,f,f]],
                    compartmentLabel(label="Coal",size=8,rotation = 90,position=[8,6]),
                    compartmentLabel(label="Thumper",size=8,rotation = 90,position=[8,-6]),   
                ]
            ],  
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 33, 65, 5.5] ],
                    [CMP_SHAPE,                             SQUARE],   
                    [ POSITION_XY,                          [34, 0 ] ],
                    [CMP_CUTOUT_SIDES_4B,                   [t,f,f,f]],
                    compartmentLabel(label="Hothouse",size=8,rotation = 90,position=[8,0]),
                ]
            ],
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 33, 65, 5.5] ],
                    [CMP_SHAPE,                             SQUARE],   
                    [ POSITION_XY,                          [68, 0 ] ],
                    [CMP_CUTOUT_SIDES_4B,                   [t,f,f,f]],
                    compartmentLabel(label="Wall",size=8,rotation = 90,position=[8,6]),
                    compartmentLabel(label="Drill",size=8,rotation = 90,position=[8,-6]), 
                ]
            ], 
           [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 33, 65, 3] ],
                    [CMP_SHAPE,                             SQUARE],   
                    [ POSITION_XY,                          [0, 66 ] ],
                    [CMP_CUTOUT_SIDES_4B,                   [f,t,f,f]],
                    compartmentLabel(label="Beacon",size=8,rotation = 90,position=[-8,0]),
                ]
            ],  
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 33, 65, 5.5] ],
                    [CMP_SHAPE,                             SQUARE],   
                    [ POSITION_XY,                          [34, 66 ] ],
                    [CMP_CUTOUT_SIDES_4B,                   [f,t,f,f]],
                    compartmentLabel(label="Infirmary",size=8,rotation = 90,position=[-8,0]),
                ]
            ],
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 33, 65, 5.5] ],
                    [CMP_SHAPE,                             SQUARE],   
                    [ POSITION_XY,                          [68, 66 ] ],
                    [CMP_CUTOUT_SIDES_4B,                   [f,t,f,f]],
                    compartmentLabel(label="Coal",size=8,rotation = 90,position=[-8,6]),
                    compartmentLabel(label="Mine",size=8,rotation = 90,position=[-8,-6]), 
                ]
            ],   
        ]
];

function boardHexes() = 
 [   "Board Hexes",
        [
            [ BOX_SIZE_XYZ,                                     [193.5, 157, 25.5] ],
            boxLid(["Board Hexes","Other Cardboard Tokens"], 10, 0, 12),
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 87, 87, 23.5] ],
                    [CMP_SHAPE,                             HEX],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [ POSITION_XY,                          [-5, 0 ] ],
                    [CMP_CUTOUT_BOTTOM_B,                   t]
                ]
            ],  
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 87, 87, 23.5] ],
                    [CMP_SHAPE,                             HEX],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [ POSITION_XY,                          [70.3, 0 ] ],
                    [CMP_CUTOUT_BOTTOM_B,                   t]
                ]
            ], 
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 87, 87, 23.5] ],
                    [CMP_SHAPE,                             HEX],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [ POSITION_XY,                          [32.65, 65.25 ] ],
                    [CMP_CUTOUT_BOTTOM_B,                   t]
                ]
            ],
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 87, 87, 23.5] ],
                    [CMP_SHAPE,                             HEX],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [ POSITION_XY,                          [70.3+32.65+5, 65.25 ] ],
                    [CMP_CUTOUT_BOTTOM_B,                   t]
                ]
            ],         
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 15.5, 15.5, 13] ],
                    [CMP_SHAPE,                             ROUND],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [ POSITION_XY,                          [ 25, 137.5] ],   
                    [CMP_CUTOUT_TYPE,                       EXTERIOR],
                    [CMP_CUTOUT_SIDES_4B,                   [f,t,f,f]],   
                ]
            ], 
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 15.5, 15.5, 15.5] ],
                    [CMP_SHAPE,                             SQUARE],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [ POSITION_XY,                          [ 69, 0] ],   
                    [CMP_CUTOUT_TYPE,                       EXTERIOR],
                    [CMP_CUTOUT_SIDES_4B,                   [t,f,f,f]],    
                ]
            ],
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 15, 15, 18] ],
                    [CMP_SHAPE,                             SQUARE],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [ POSITION_XY,                          [ 106.5, 138] ],   
                    [CMP_CUTOUT_TYPE,                       EXTERIOR],
                    [CMP_CUTOUT_SIDES_4B,                   [f,t,f,f]],    
                ]
            ],  
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 21, 21, 18] ],
                    [CMP_SHAPE,                             ROUND],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [ POSITION_XY,                          [ 0, 73.5] ],   
                    [CMP_CUTOUT_TYPE,                       EXTERIOR],
                    [CMP_CUTOUT_SIDES_4B,                   [f,f,t,f]],    
                ]
            ], 
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 21, 21, 13] ],
                    [CMP_SHAPE,                             ROUND],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [ POSITION_XY,                          [ 0, 95.5] ],   
                    [CMP_CUTOUT_TYPE,                       EXTERIOR],
                    [CMP_CUTOUT_SIDES_4B,                   [f,f,t,f]],    
                ]
            ],
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 21.5, 21.5, 13] ],
                    [CMP_SHAPE,                             SQUARE],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [ POSITION_XY,                          [ 0, 118] ],   
                    [CMP_CUTOUT_TYPE,                       EXTERIOR],
                    [CMP_CUTOUT_SIDES_4B,                   [f,f,t,f]],    
                ]
            ],
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 27, 27, 10.5] ],
                    [CMP_SHAPE,                             HEX],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [ POSITION_XY,                          [ 164, 45] ],   
                    [CMP_CUTOUT_TYPE,                       EXTERIOR],
                    [CMP_CUTOUT_SIDES_4B,                   [f,f,f,t]],    
                ]
            ],
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 30.5, 16, 10.5] ],
                    [CMP_SHAPE,                             SQUARE],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [ POSITION_XY,                          [ 159, 23] ],   
                    [CMP_CUTOUT_TYPE,                       EXTERIOR],
                    [CMP_CUTOUT_SIDES_4B,                   [f,f,f,t]],    
                ]
            ],  
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 21, 21, 21] ],
                    [CMP_SHAPE,                             ROUND],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [ POSITION_XY,                          [ 168.5, 0] ],   
                    [CMP_CUTOUT_TYPE,                       EXTERIOR],
                    [CMP_CUTOUT_SIDES_4B,                   [t,f,f,f]],   
                ]
            ],    
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 21, 21, 18.5] ],
                    [CMP_SHAPE,                             ROUND],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [ POSITION_XY,                          [ 146, 0] ],   
                    [CMP_CUTOUT_TYPE,                       EXTERIOR],
                    [CMP_CUTOUT_SIDES_4B,                   [t,f,f,f]],   
                ]
            ],   
        ]
   ];

function housingHolder() = 
[   "Housing Holder",
    [
        [ BOX_SIZE_XYZ,                                     [151, 75.5, 3] ],
        [ BOX_NO_LID_B,t],
        [ BOX_COMPONENT,
            [
                
                [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                [CMP_COMPARTMENT_SIZE_XYZ,              [ 37.5, 71.5, 1] ],
                [CMP_SHAPE,                             SQUARE],   
                [ POSITION_XY,                          [0, 0 ] ],
            ]
        ], 
        [ BOX_COMPONENT,
            [
                
                [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                [CMP_COMPARTMENT_SIZE_XYZ,              [ 15, 71.5, 2] ],
                [CMP_SHAPE,                             SQUARE],   
                [ POSITION_XY,                          [38.5, 0 ] ],
                [CMP_CUTOUT_BOTTOM_B,t],
                [CMP_CUTOUT_BOTTOM_PCT,100],
            ]
        ],   
        [ BOX_COMPONENT,
            [
                
                [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                [CMP_COMPARTMENT_SIZE_XYZ,              [ 37.5, 71.5, 1] ],
                [CMP_SHAPE,                             SQUARE],   
                [ POSITION_XY,                          [CENTER, 0 ] ],
            ]
        ],
        [ BOX_COMPONENT,
            [
                
                [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                [CMP_COMPARTMENT_SIZE_XYZ,              [ 15, 71.5, 2] ],
                [CMP_SHAPE,                             SQUARE],   
                [ POSITION_XY,                          [93.5, 0 ] ],
                [CMP_CUTOUT_BOTTOM_B,t],
                [CMP_CUTOUT_BOTTOM_PCT,100],
            ]
        ],   
        [ BOX_COMPONENT,
            [
                
                [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                [CMP_COMPARTMENT_SIZE_XYZ,              [ 37.5, 71.5, 1] ],
                [CMP_SHAPE,                             SQUARE],   
                [ POSITION_XY,                          [109.5, 0 ] ],
            ]
        ],
    ]
];

function mapBorder() = 
[   "Map Border",
    [
        [ BOX_SIZE_XYZ,                                     [304, 68, 28] ],
        [ BOX_NO_LID_B,t],
        [ BOX_COMPONENT,
            [
                
                [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                [CMP_COMPARTMENT_SIZE_XYZ,              [ 300, 64, 26] ],
                [CMP_SHAPE,                             SQUARE],   
                [ POSITION_XY,                          [0, 0 ] ],
            ]
        ], 
    ],
];

function resinResources() =
    [   "Resin Resources",
        [
            [ BOX_SIZE_XYZ, [149,77,15 ]], 
            boxLid(["Resin","Resources"], 12, 0, 12),
            bowlCompartment(1,59,73,16,pos_x = 0, pos_y = 0), 
            bowlCompartment(1,40,40,16,pos_x = 60, pos_y = 0),
            bowlCompartment(1,40,32,16,pos_x = 60, pos_y = 41),
            bowlCompartment(1,44,73,16,pos_x = 101, pos_y = 0),        
        ]
    ];
    
function woodenResources() =
    [   "Wooden Resources",
        [
            [ BOX_SIZE_XYZ, [118,77,27 ]], 
            boxLid(["Wooden","Resources"], 12, 0, 12),
            bowlCompartment(1,56,73,25,pos_x = 0, pos_y = 0,r=12), 
            bowlCompartment(1,57,42,25,pos_x = 57, pos_y = 0,r=12),
            bowlCompartment(1,57,30,25,pos_x = 57, pos_y = 43,r=12),      
        ]
    ];

// Focus on one box
g_isolated_print_box = "Wooden Citizens"; 
g_b_print_lid = true;
g_b_print_box = true; 

data =
[
    cardBox("Laws",["Laws"],32,"",20,card=1),
    cardBox("Morning",["Morning"],22,"",20,card=1),
    cardBox("Society",["Society","Social Dispute"],18,"",8,card=1),
    cardBox("Dusk",["Dusk"],39,"",20,card=1),
    cardBox("Scenerios",["Scenerios"],25,"",18,card=1),
    cardBox("Weather",["Weather"],8,"",14,card=0),
    cardBox("Citizens",["Citizens"],20,"",14,card=0),
    cardBox("Technologies",["Technologies"],11,"",10,card=0),
    cardBox("Expeditions",["Expeditions"],24,"",10,card=0),
    box( "Hope And Discontent", 1, ["Hope &","Discontent"], 8, 0, 60, 60, 31, "", f),
    bowl("Resin Trees", 1, ["Resin","Trees"],15, 90, 73, 96, 25, ""),
    bowl("Bowl Test", 1, ["Testing"],15, 90, 50, 50, 15, ""),
    box( "Wooden Markers", 1, ["Wooden","Markers"], 8, 0, 76, 50, 20, "", f),
    bowl("Stress Markers", 1, ["Wooden Coal/","Stress Markers"], 7, 0, 76, 47, 20, ""),
    bowl("Wooden Trees", 1, ["Wooden","Trees"], 12, 90, 67, 75, 41, "",radius=20),
    box( "Wooden Citizens", 1, ["Wooden Citizens"], 8, 0, 131, 51, 20, "", f),
    box( "Wooden Automatons", 1, ["Wooden","Automatons"], 8, 0, 88, 54.5, 23.5, "", f),
    spacer("Spacer 1", 105, 55, 22),
    spacer("Spacer 2", 101, 45, 34.5),
    boardHexes(),
    smallBuildings(),
    largeBuildings(),
    tents(),
    bunkhouses(),
    houses(),
    lawBuildings(),
    destroyedBuildings(),
    scenerioBuildings(),
    housingHolder(),
    resinResources(),
    woodenResources(),
    mapBorder(),
];

MakeAll();