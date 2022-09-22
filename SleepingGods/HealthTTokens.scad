
include <boardgame_insert_toolkit_lib.bill.dev.scad>;

// determines whether lids are output.
g_b_print_lid = t;

// determines whether boxes are output.
g_b_print_box = f; 

// Focus on one box
g_isolated_print_box = ""; 

g_wall_thickness = 1.0;

function makeBox() = 
    [   label,
        [
            [ BOX_SIZE_XYZ,                 [103, 89, 20] ],    
            [ BOX_LID,
                [
                    [ LID_PATTERN_RADIUS,6],        
                    [ LID_INSET_B, f ],
                    [ LID_FIT_UNDER_B, f],
                    [ LID_LABELS_INVERT_B, t],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Damage" ],
                            [ LBL_SIZE,     14 ],
                            [ ROTATION,     0 ],
                            [ LBL_FONT,     "Calligraph421 BT:style=Roman"],
                        ]
                    ],
                ],
            ],
                       
            // facttion cards
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [1,1]],
                    [CMP_SHAPE_ROTATED_B, f],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 100, 86, 18] ],
                    [CMP_FILLET_RADIUS , 15],
                    [CMP_SHAPE, BOWL],
                    [POSITION_XY, [CENTER,CENTER]],
                ]
            ],
        ]
    ];

//////////////////

data =
[

    makeBox(),

];


MakeAll();
