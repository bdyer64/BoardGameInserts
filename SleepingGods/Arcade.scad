
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
            [ BOX_SIZE_XYZ,                 [104, 64, 18] ],    
            [ BOX_LID,
                [
                    [ LID_PATTERN_RADIUS,5],        
                    [ LID_INSET_B, f ],
                    [ LID_TABS_4B, [ t,t,t,t]],
                    [ LID_FIT_UNDER_B, f],
                    [ LID_LABELS_INVERT_B, t],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     label ],
                            [ LBL_SIZE,     11 ],
                            [ ROTATION,     0 ],
                            [ LBL_FONT,     "Centaur:style=Regular"],
                        ]
                    ],
                ],
            ],
                         
            // hand cards
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,[ 92, 61, 15] ],
                    [CMP_NUM_COMPARTMENTS_XY,[1,1] ], 
                    [POSITION_XY,[CENTER, CENTER ] ],   
                    [CMP_CUTOUT_BOTTOM_B,t],
                    [CMP_CUTOUT_BOTTOM_PCT,0.4],
                ]
            ],
        ]
    ];

//////////////////

data =
[
    makeBox("Arcade Mode")
];


MakeAll();
