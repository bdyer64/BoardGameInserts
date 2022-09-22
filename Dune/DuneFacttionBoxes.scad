
include <boardgame_insert_toolkit_lib.bill.scad>;

// determines whether lids are output.
g_b_print_lid = t;

// determines whether boxes are output.
g_b_print_box = f; 

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

function makeFaction( label ) = 
    [   label,
        [
            [ BOX_SIZE_XYZ,                 [71, 121, 21] ],    
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
                    [CMP_COMPARTMENT_SIZE_XYZ,[ 70, 19, 19] ],
                    [CMP_NUM_COMPARTMENTS_XY,[1,1] ], 
                    [CMP_SHAPE_ROTATED_B,t],
                    [CMP_SHAPE, ROUND ],  
                    [POSITION_XY,[CENTER, 98 ] ],   
                    [CMP_MARGIN_FBLR, [ 0, 0, 3, 3 ]],
                    [CMP_PADDING_HEIGHT_ADJUST_XY,[-9, 0] ],
                    [CMP_PADDING_XY,[15,2]],


                ]
            ],

            // cards 
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 68, 95, 19] ],
                    [CMP_CUTOUT_BOTTOM_B,t],
                    [CMP_CUTOUT_BOTTOM_PCT,0.4],
                    [POSITION_XY, [CENTER,1.5]],
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
    //makeFaction( "TLEILAXU" ),
    //makeFaction("RICHESE"),
    makeFaction("CHOAM")

];


MakeAll();
