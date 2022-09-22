
include <boardgame_insert_toolkit_lib.bill.scad>;

// determines whether lids are output.
g_b_print_lid = f;

// determines whether boxes are output.
g_b_print_box = t; 

// Focus on one box
g_isolated_print_box = ""; 

g_wall_thickness = 1.5;


function makeBox() = 
    [   label,
        [
            [ BOX_SIZE_XYZ,                 [125, 75, 35] ],    
            [ BOX_LID,
                [
                    [ LID_PATTERN_RADIUS,7],        
                    [ LID_INSET_B, f ],
                    [ LID_FIT_UNDER_B, f],
                    [ LID_LABELS_INVERT_B, t],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Enemy Cards" ],
                            [ LBL_SIZE,     12 ],
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
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 122, 72, 33] ],
                    [CMP_CUTOUT_BOTTOM_B,t],
                    [CMP_CUTOUT_BOTTOM_PCT,0.4],
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
