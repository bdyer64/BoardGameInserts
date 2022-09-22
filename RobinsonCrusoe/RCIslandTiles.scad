include <boardgame_insert_toolkit_lib.2.scad>;

// determines whether lids are output.
g_b_print_lid = true;

// determines whether boxes are output.
g_b_print_box = false; 

// Focus on one box
g_isolated_print_box = ""; 

// Used to visualize how all of the boxes fit together. 
g_b_visualization = false;          
        
// this is the outer wall thickness. 
//Default = 1.5mm
g_wall_thickness = 1.5;

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

data =
[  
    [   "hex tray - island tiles",
        [
      
           [ BOX_SIZE_XYZ, [80, 125, 25] ],
            [ BOX_LID,
                [          
                    [ LID_SOLID_B, f],
                    [ LID_FIT_UNDER_B, f],
                    [ LID_LABELS_INVERT_B, t],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "ISLAND TILES"],
                            [ ROTATION, 90],
                            [ LBL_SIZE,     6 ],
                            [ POSITION_XY,      [ 15,0]],
                        ]
                    ],     
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "SMALL WOOD TOKENS"],
                            [ ROTATION, 90],
                            [ LBL_SIZE,     6 ],
                            [ POSITION_XY,      [ -15,0]],
                        ]
                    ],     
                ],
            ],
           [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY, [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,[ 85, 85, 18] ],
                    [CMP_SHAPE,HEX],
                    [CMP_SHAPE_VERTICAL_B,t],    
                    [CMP_CUTOUT_TYPE,EXTERIOR],
                    [CMP_CUTOUT_SIDES_4B,[f,f,f,f]], 
                    [CMP_CUTOUT_BOTTOM_B,f],
                    [CMP_CUTOUT_BOTTOM_PCT,0.5],
                    [POSITION_XY, [CENTER,33]],
                ]
            ], 
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY, [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,[ 70, 70, 20] ],
                    [CMP_SHAPE,HEX],
                    [CMP_SHAPE_VERTICAL_B,t],    
                    [CMP_CUTOUT_TYPE,EXTERIOR],
                    [CMP_CUTOUT_SIDES_4B,[f,f,f,f]], 
                    [CMP_CUTOUT_BOTTOM_B,t],
                    [CMP_CUTOUT_BOTTOM_PCT,0.5],
                    [POSITION_XY, [CENTER,38.5]],
                ]
            ],        
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY, [4,2]],
                    [CMP_COMPARTMENT_SIZE_XYZ,[ 16, 16, 23] ],
                    [CMP_SHAPE,CIRCLE],
                    [CMP_PADDING_XY,[3,1.5]],
                    [CMP_CUTOUT_TYPE,EXTERIOR],
                    [CMP_CUTOUT_SIDES_4B,[f,f,f,f]], 
                    [CMP_SHAPE_VERTICAL_B, t],
                    [CMP_CUTOUT_DEPTH,0.05],
                    [POSITION_XY, [CENTER,0.5]],
                    [CMP_CUTOUT_WIDTH,0.25],                ]
            ],    
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY, [2,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,[ 16, 16, 17] ],
                    [CMP_SHAPE,CIRCLE],
                    [CMP_PADDING_XY,[43,0]],
                    [CMP_CUTOUT_TYPE,EXTERIOR],
                    [CMP_CUTOUT_SIDES_4B,[f,f,f,f]], 
                    [CMP_SHAPE_VERTICAL_B, t],
                    [CMP_CUTOUT_DEPTH,0.05],
                    [POSITION_XY, [CENTER,105]],
                    [CMP_CUTOUT_WIDTH,0.25],                ]
            ],    
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY, [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,[ 17, 9, 17] ],
                    [CMP_SHAPE,SQUARE],
                    [CMP_PADDING_XY,[43,0]],
                    [CMP_CUTOUT_TYPE,EXTERIOR],
                    [CMP_CUTOUT_SIDES_4B,[f,f,f,f]], 
                    [CMP_SHAPE_VERTICAL_B, t],
                    [CMP_CUTOUT_DEPTH,0.05],
                    [POSITION_XY, [1.5,35]],
                    [CMP_CUTOUT_WIDTH,0.25],                ]
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY, [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,[ 9, 9, 9] ],
                    [CMP_SHAPE,SQUARE],
                    [CMP_PADDING_XY,[43,0]],
                    [CMP_CUTOUT_TYPE,EXTERIOR],
                    [CMP_CUTOUT_SIDES_4B,[f,f,f,f]], 
                    [CMP_SHAPE_VERTICAL_B, t],
                    [CMP_CUTOUT_DEPTH,0.05],
                    [POSITION_XY, [62,36]],
                    [CMP_CUTOUT_WIDTH,0.25],                ]
            ],        
        ]
    ],
];


MakeAll();