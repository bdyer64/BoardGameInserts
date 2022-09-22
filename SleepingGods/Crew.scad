
include <boardgame_insert_toolkit_lib.bill.scad>;

// determines whether lids are output.
g_b_print_lid = f;

// determines whether boxes are output.
g_b_print_box = t; 

// Focus on one box
g_isolated_print_box = ""; 

g_wall_thickness = 1.5;

function makeCrew( name ) = 
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
                            [ LBL_TEXT,     name ],
                            [ LBL_SIZE,     12 ],
                            [ ROTATION,     90 ],
                            [ LBL_FONT,     "Centaur:style=Regular"],
                        ]
                    ],
                ],
            ],
                         
            // troops
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,[ 105, 142, 10.5] ],
                    [CMP_NUM_COMPARTMENTS_XY,[1,1] ], 
                    [POSITION_XY,[CENTER, 1.0 ] ],   
                    [CMP_CUTOUT_BOTTOM_B,t],
                    [CMP_CUTOUT_BOTTOM_PCT,0.4],
                ]
            ],

            // cards 
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [2,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 52, 32, 19] ],
                    [POSITION_XY, [CENTER, 144]],
                ]
            ],
                     
        ]
    ];

//////////////////

data =
[
    //makeCrew( "Marco Reyes" ),
    //makeCrew( "Rafael Vieira" ),
    //makeCrew("'Mac' Mara Johnson"),
    //makeCrew("Gregory Little"),
    //makeCrew("Laurent Lapointe"),
    //makeCrew("Kannan Sharma"),
    //makeCrew("Kasumi Aoshima"),
    //makeCrew("Audrie Williams"),
    makeCrew("Cpt. Sofi Odessa")
];


MakeAll();
