
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
            [ BOX_SIZE_XYZ,                 [125, 75, 15] ],    
            [ BOX_LID,
                [
                    [ LID_PATTERN_RADIUS,7],        
                    [ LID_INSET_B, f ],
                    [ LID_FIT_UNDER_B, f],
                    [ LID_LABELS_INVERT_B, t],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Other Stuff" ],
                            [ LBL_SIZE,     10 ],
                            [ ROTATION,     0 ],
                            [POSITION_XY,[-13, 0 ] ], 
                            [ LBL_FONT,     "Calligraph421 BT:style=Roman"],
                        ]
                    ],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Combat" ],
                            [ LBL_SIZE,     8 ],
                            [ ROTATION,     90 ],
                            [POSITION_XY,[50, 0 ] ], 
                            [ LBL_FONT,     "Calligraph421 BT:style=Roman"],
                        ]
                    ],
                ],
            ],
                       
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 108, 72, 12.5] ],
                    [POSITION_XY,[0, CENTER ] ], 
                    [POSITION_XY, [CENTER,CENTER]],
                ]
            ],
            
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 13, 72, 12.5] ],
                    [POSITION_XY,[109, CENTER ] ], 
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
