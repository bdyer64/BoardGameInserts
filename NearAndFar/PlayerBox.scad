
include <boardgame_insert_toolkit_lib.bill.scad>;

// determines whether lids are output.
g_b_print_lid = t;

// determines whether boxes are output.
g_b_print_box = t; 

// Focus on one box
g_isolated_print_box = ""; 

g_wall_thickness = 1.0;

lid_parms = 
[
    [ LID_PATTERN_RADIUS,4],        
    [ LID_INSET_B, t ],
    [ LID_TABS_4B, [ t,t,f,f]],
    [ LID_FIT_UNDER_B, f],
    [ LID_LABELS_INVERT_B, t],
 ];

function makeBox() = 
    [   label,
        [
            [ BOX_SIZE_XYZ,                 [64, 122, 22] ],    
            [ BOX_LID,
                [
                    [ LID_PATTERN_RADIUS,6],        
                    [ LID_INSET_B, t ],
                    //[ LID_HEIGHT, 1 ],
                    [ LID_TABS_4B, [ f,f,t,t]],
                    [ LID_FIT_UNDER_B, f],
                    [ LID_LABELS_INVERT_B, t],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Player Stuff" ],
                            [ LBL_SIZE,     10 ],
                            [ ROTATION,     90 ],
                            //[ LBL_FONT,     "Orthodox Herbertarian:style=Regular"],
                        ]
                    ],
                ],
            ],
                       
            // facttion cards
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 60, 92, 21.5 ]],
                    [CMP_CUTOUT_BOTTOM_B,t],
                    [CMP_CUTOUT_BOTTOM_PCT,0.30],
                    [POSITION_XY, [1,0.5]],
                ]
            ],
             [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 60, 25.5, 21.5 ]],
                    [POSITION_XY, [1,94]],
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
