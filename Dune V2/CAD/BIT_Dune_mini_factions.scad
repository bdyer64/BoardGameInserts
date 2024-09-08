
include <../../The-Boardgame-Insert-Toolkit/boardgame_insert_toolkit_lib.2.scad>;
include <../../BFD-Insert-Extensions/InsertExtensions.scad>;

// determines whether lids are output.
g_b_print_lid = t;

// determines whether boxes are output.
g_b_print_box = t; 

// Focus on one box
g_isolated_print_box = ""; 

lid_parms = 
[
    [ LID_PATTERN_RADIUS,         5],        
    [ LID_LABELS_BG_THICKNESS, 4],

    [ LID_PATTERN_N1,               7 ],
    [ LID_PATTERN_N2,               7 ],
    [ LID_PATTERN_ANGLE,            25.7 ],
    [ LID_PATTERN_ROW_OFFSET,       10 ],
    [ LID_PATTERN_COL_OFFSET,       140 ],
    [ LID_PATTERN_THICKNESS,        0.6 ]
 ];

function makeFaction( label ) = 
    [   label,
        [
            [ BOX_SIZE_XYZ,                 [46, 67, 17] ],    
            [ BOX_LID,  lid_parms ],

            [ LABEL,
                [
                    [ LBL_TEXT,     label ],
                    [ LBL_SIZE,     AUTO ],
                    [ ROTATION,     90 ],
                    [ LBL_FONT,         "Orthodox Herbertarian:style=Regular"],

                ]
            ],     
            
            // leaders
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,                [ 40.5, 40.5, 14] ],  
                    [CMP_SHAPE,                             ROUND],
                    [CMP_SHAPE_VERTICAL_B,                  t],
                    [POSITION_XY,                        [CENTER, 0 ] ],   
                    [CMP_CUTOUT_SIDES_4B,               [ t,f,f,f]],

                ]
            ],
                    
            // troops
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,                [ 16, 23, 16] ],
                    [CMP_NUM_COMPARTMENTS_XY,               [2,1] ], 
                    [CMP_SHAPE_ROTATED_B,                   f],



                    [CMP_SHAPE,                             ROUND ],  
                    [POSITION_XY,                           [CENTER, 41 ] ],   
                    [CMP_MARGIN_4B,                         [f,f,t,t]],
                    [CMP_PADDING_HEIGHT_ADJUST_XY,          [-8, 0] ],

                    [CMP_PADDING_XY,                        [12,1]],


                ]
            ],

            // markers
            [ BOX_COMPONENT,
                [
                    [ENABLED_B, label != "ATREIDES"],

                    [CMP_COMPARTMENT_SIZE_XYZ,                [ 5, 16, 16] ],
                    [CMP_SHAPE_ROTATED_B,                   t],

                    [CMP_NUM_COMPARTMENTS_XY,               [1,1] ],  
                    [CMP_SHAPE,                             ROUND ],  
                    [POSITION_XY,                           [CENTER, 44 ] ],   
                    [CMP_PADDING_HEIGHT_ADJUST_XY,          [-8, 0] ],
                    [CMP_MARGIN_4B,                         [f,f,t,t]],
                    [CMP_PADDING_XY,                        [1,5]],
                ]
            ],

            // kwisatz haderach
            [ BOX_COMPONENT,
                [
                    [ENABLED_B, label == "ATREIDES"],

                    [CMP_COMPARTMENT_SIZE_XYZ,                [ 7, 16, 16] ],
                    [CMP_SHAPE_ROTATED_B,                   t],

                    [CMP_NUM_COMPARTMENTS_XY,               [1,1] ],  
                    [CMP_SHAPE,                             ROUND ],  
                    [POSITION_XY,                           [CENTER, 44 ] ],   
                    [CMP_PADDING_HEIGHT_ADJUST_XY,          [-8, 0] ],
                    [CMP_MARGIN_4B,                         [f,f,t,t]],
                    [CMP_PADDING_XY,                        [1,5]],



                ]
            ],                 
        ]
    ];

//////////////////

data =
[

    makeFaction( "ATREIDES" ),
    makeFaction( "HARKONNEN" ),
    makeFaction( "BENE GESSERIT" ),
    makeFaction( "FREMEN" ),
    makeFaction( "EMPEROR" ),
    makeFaction( "SPACING GUILD" ),

    makeFaction( "TLEILAXU" ),
    makeFaction( "IXIAN" ),


];


MakeAll();
