
include <boardgame_insert_toolkit_lib.bill.scad>;

// determines whether lids are output.
g_b_print_lid = f;

// determines whether boxes are output.
g_b_print_box = t; 

// Focus on one box
g_isolated_print_box = ""; 

g_wall_thickness = 1.5;

lid_parms = 
[
    [ LID_PATTERN_RADIUS,4],        
    [ LID_INSET_B, t ],
    [ LID_TABS_4B, [ t,t,f,f]],
    [ LID_FIT_UNDER_B, f],
    [ LID_LABELS_INVERT_B, t],
 ];

function makeCrew( name ) = 
    [   name,
        [
            [ BOX_SIZE_XYZ,                 [109, 180, 11] ],    
            [ BOX_LID,
                [
                    [ LID_PATTERN_RADIUS,4],        
                    [ LID_INSET_B, t ],
                    [ LID_TABS_4B, [ t,t,f,f]],
                    [ LID_FIT_UNDER_B, f],
                    [ LID_LABELS_INVERT_B, t],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     label ],
                            [ LBL_SIZE,     10 ],
                            [ ROTATION,     90 ],
                            [ LBL_FONT,     "Orthodox Herbertarian:style=Regular"],
                        ]
                    ],
                ],
            ],
                         
            // troops
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,[ 105, 142, 9] ],
                    [CMP_NUM_COMPARTMENTS_XY,[1,1] ], 
                    [POSITION_XY,[CENTER, 1.0 ] ],   
                     [CMP_CUTOUT_BOTTOM_B,t],
                    [CMP_CUTOUT_BOTTOM_PCT,0.4],
                ]
            ],

            // cards 
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 105, 32, 19] ],
                    [POSITION_XY, [CENTER, 144]],
                ]
            ],
                     
        ]
    ];

//////////////////

data =
[

    //makeFaction( "ATREIDES" ),
    //makeFaction( "HARKONNEN" ),
    //makeFaction( "BENE GESSERIT" ),
    //makeFaction( "FREMEN" ),
    //makeFaction( "EMPEROR" ),
    //makeFaction( "GUILD" ),
    //makeFaction( "IXIAN" ),
    makeCrew( "Marco Reyes" ),

];


MakeAll();
