
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

function makeBox() = 
    [   label,
        [
            [ BOX_SIZE_XYZ,                 [184, 134, 14.5] ],    
            [ BOX_LID,
                [
                    [ LID_PATTERN_RADIUS,6],        
                    [ LID_INSET_B, t ],
                    [ LID_HEIGHT, 1.5 ],
                    [ LID_TABS_4B, [ t,t,f,f]],
                    [ LID_FIT_UNDER_B, f],
                    [ LID_LABELS_INVERT_B, t],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Battle Wheels" ],
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
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 126,126,13] ],
                    [CMP_CUTOUT_BOTTOM_B,f],
                    [CMP_SHAPE, ROUND],
                    [CMP_SHAPE_VERTICAL_B,t],
                    [CMP_CUTOUT_SIDES_4B,[f,f,t,f]],
                    [POSITION_XY, [0,CENTER]],
                    [CMP_CUTOUT_DEPTH,0.1],
                ]
            ],
            
             [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 126,126,6.5] ],
                    [CMP_CUTOUT_BOTTOM_B,f],
                    [CMP_SHAPE, ROUND],
                    [CMP_SHAPE_VERTICAL_B,t],
                    [CMP_CUTOUT_SIDES_4B,[f,f,f,t]],
                    [POSITION_XY, [55,CENTER]],
                    [CMP_CUTOUT_DEPTH,0.1],
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
