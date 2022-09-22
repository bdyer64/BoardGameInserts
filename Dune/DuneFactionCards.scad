
include <boardgame_insert_toolkit_lib.bill.scad>;

// determines whether lids are output.
g_b_print_lid = f;

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
            [ BOX_SIZE_XYZ,                 [184, 134, 7] ],    
            [ BOX_LID,
                [
                    [ LID_PATTERN_RADIUS,6],        
                    [ LID_INSET_B, t ],
                    [ LID_HEIGHT, 1 ],
                    [ LID_TABS_4B, [ t,t,t,t]],
                    [ LID_FIT_UNDER_B, f],
                    [ LID_LABELS_INVERT_B, t],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Faction Cards" ],
                            [ LBL_SIZE,     10 ],
                            [ ROTATION,     0 ],
                            [ LBL_FONT,     "Orthodox Herbertarian:style=Regular"],
                        ]
                    ],
                ],
            ],
                       
            // facttion cards
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 181, 131, 6] ],
                    [CMP_CUTOUT_BOTTOM_B,t],
                    [CMP_CUTOUT_BOTTOM_PCT,0.2],
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
