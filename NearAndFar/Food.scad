include <boardgame_insert_toolkit_lib.bill.scad>;

// determines whether lids are output.
g_b_print_lid = t;

// determines whether boxes are output.
g_b_print_box = f; 

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

    [   "card tray - adventure cards",
        [
            [ BOX_SIZE_XYZ, [74, 25, 22] ],
              
            [ BOX_LID,
                [   
                    [ LID_INSET_B, t ],
                    [ LID_PATTERN_RADIUS,6], 
                    [ LID_TABS_4B, [ f,f,t,t]],
                    [ LID_FIT_UNDER_B, f],
                    [ LID_LABELS_INVERT_B, t],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Food"],
                            [ ROTATION,     0 ],
                            [ LBL_SIZE,     8 ],
                            //[ POSITION_XY, [ 34,0 ]],
                        ]
                    ], 
                ],
            ],

            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [3,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 20, 23, 15 ] ],
                    [CMP_CUTOUT_SIDES_4B,       [t,f,f,f]],
                    [CMP_CUTOUT_DEPTH, 0.10],
                    //[CMP_PADDING_XY,[0.5,0.5]],
                    //[CMP_CUTOUT_BOTTOM_B,t],
                    //[CMP_CUTOUT_BOTTOM_PCT,0.6],
                ]
            ],           
        ],
    ],

 
];


MakeAll();