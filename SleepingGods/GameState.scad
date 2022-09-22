
include <boardgame_insert_toolkit_lib.bill.scad>;

// determines whether lids are output.
g_b_print_lid = t;

// determines whether boxes are output.
g_b_print_box = f; 

// Focus on one box
g_isolated_print_box = ""; 

g_wall_thickness = 1.5;

function makeBox( label ) = 
    [   name,
        [
            [ BOX_SIZE_XYZ,                 [108, 180, 11.5] ],    
            [ BOX_LID,
                [
                    [ LID_PATTERN_RADIUS,6],        
                    [ LID_INSET_B, f ],
                    [ LID_TABS_4B, [ t,t,t,t]],
                    [ LID_FIT_UNDER_B, f],
                    [ LID_LABELS_INVERT_B, t],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     label ],
                            [ LBL_SIZE,     12 ],
                            [ ROTATION,     90 ],
                            [ LBL_FONT,     "Centaur:style=Regular"],
                        ]
                    ],
                ],
            ],
                         
            // hand cards
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,[ 69, 46, 10.5] ],
                    [CMP_NUM_COMPARTMENTS_XY,[1,1] ], 
                    [POSITION_XY,[1.0, 1.0 ] ],   
                    [CMP_CUTOUT_BOTTOM_B,t],
                    [CMP_CUTOUT_BOTTOM_PCT,0.4],
                ]
            ],

            // ahip ude, firar player token
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 33, 46, 10.5] ],
                    [POSITION_XY, [71, 1.0]],
                ]
            ],
            
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [1,2]],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [102.5, 27, 10.5] ],
                    [POSITION_XY, [CENTER, 48]],
                ]
            ],
            
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [102.5,32, 10.5] ],
                    [POSITION_XY, [CENTER, 104]],
                ]
            ],
            
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [26,39, 10.5] ],
                    [POSITION_XY, [1.0, 137.0]],
                ]
            ],
            
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [57,16, 10.5] ],
                    [POSITION_XY, [28, 137]],
                ]
            ],
                  
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [57,22, 10.5] ],
                    [POSITION_XY, [28, 154]],
                ]
            ],   
            
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [18,39, 10.5] ],
                    [POSITION_XY, [86, 137]],
                ]
            ],   
        ]
    ];

//////////////////

data =
[
    makeBox("Game State")
];


MakeAll();
