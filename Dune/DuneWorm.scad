
include <boardgame_insert_toolkit_lib.bill.scad>;

// determines whether lids are output.
g_b_print_lid = f;

// determines whether boxes are output.
g_b_print_box = t; 

// Focus on one box
g_isolated_print_box = ""; 

g_b_fit_test = f;

function lid_parms( radius, tabs = [ f,f,f,f] ) = 
[
    [ LID_PATTERN_RADIUS,         radius ],        
    [ LID_LABELS_BG_THICKNESS, 4],
    [ LID_INSET_B, t ],
    [ LID_TABS_4B, tabs],

    [ LID_PATTERN_N1,               7 ],
    [ LID_PATTERN_N2,               7 ],
    [ LID_PATTERN_ANGLE,            25.7 ],
    [ LID_PATTERN_ROW_OFFSET,       10 ],
    [ LID_PATTERN_COL_OFFSET,       140 ],
    [ LID_PATTERN_THICKNESS,        0.6 ],

 ];

//////////////////

10s = 35;
5s = 37;
2s = 42;
1s = 50;

data =
[
    
    [ "Spice Bank",
    
        [
            [ BOX_SIZE_XYZ, [41, 82, 21] ],

            [ BOX_LID,
                [
                    [ LID_PATTERN_RADIUS,4],        
                    [ LID_INSET_B, t ],
                    [ LID_TABS_4B, [ t,t,f,f]],
                    [ LID_FIT_UNDER_B, f],
                    [ LID_LABELS_INVERT_B, t],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "SHAI - HULUD" ],
                            [ LBL_SIZE,     AUTO ],
                            [ ROTATION,     90 ],
                            [ LBL_FONT,     "Orthodox Herbertarian:style=Regular"],
                        ]
                    ],
                ],
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,                [ 38, 78, 19] ],
                    //[CMP_SHAPE,                             SQAURE],
                    [POSITION_XY,                           [CENTER, CENTER ] ],         
                ]
            ],
        ],
    ],
];


MakeAll();
