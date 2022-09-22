include <boardgame_insert_toolkit_lib.2.scad>;

// determines whether lids are output.
g_b_print_lid = f;

// determines whether boxes are output.
g_b_print_box = t; 

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

    [   "wound, number, determination, misc tokens",
        [
            [ BOX_SIZE_XYZ, [141, 73, 10.0] ],
              
            [ BOX_LID,
                [            
                    [ LID_SOLID_B, f],
                    [ LID_FIT_UNDER_B, f],
                    [ LID_LABELS_INVERT_B, t],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Wound"],
                            [ ROTATION,     90 ],
                            [ LBL_SIZE,     6 ],
                            [ POSITION_XY, [ 45,0 ]],
                        ]
                    ],  
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Determination"],
                            [ ROTATION,     90 ],
                            [ LBL_SIZE,     6 ],
                            [ POSITION_XY, [ 15,0 ]],
                        ]
                    ],  
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Number"],
                            [ ROTATION,     90 ],
                            [ LBL_SIZE,     6 ],
                            [ POSITION_XY, [ -15,0 ]],
                        ]
                    ],  
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "Misc"],
                            [ ROTATION,     90 ],
                            [ LBL_SIZE,     6 ],
                            [ POSITION_XY, [ -45,0 ]],
                        ]
                    ],  
                ],
            ],

            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [3,2]],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 23, 23, 8] ],
                    [CMP_CUTOUT_SIDES_4B,       [t,t,f,f]],
                    [CMP_PADDING_XY,[3,22]],
                    [POSITION_XY, [1.5,CENTER]],
                    [CMP_CUTOUT_TYPE,EXTERIOR],
                    [CMP_SHAPE,CIRCLE],
                    [CMP_SHAPE_VERTICAL_B,t],    
                ]
            ],     

            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [1,3]],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 19, 19, 8] ],
                    [CMP_CUTOUT_SIDES_4B,       [f,f,f,t]],
                    [CMP_PADDING_XY,[3,3]],
                    [POSITION_XY, [119.5,CENTER]],
                    [CMP_CUTOUT_TYPE,EXTERIOR],
                    [CMP_SHAPE,CIRCLE],
                    [CMP_SHAPE_VERTICAL_B,t],    
                ]
            ], 
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [2,2]],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 19, 19, 8] ],
                    [CMP_CUTOUT_SIDES_4B,       [t,t,f,f]],
                    [CMP_PADDING_XY,[3,36]],
                    [POSITION_XY, [77.5,CENTER]],
                    [CMP_CUTOUT_TYPE,EXTERIOR],
                    [CMP_SHAPE,CIRCLE],
                    [CMP_SHAPE_VERTICAL_B,t],    
                ]
            ], 
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [4,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 19, 19, 4] ],
                    [CMP_CUTOUT_SIDES_4B,       [f,f,t,t]],
                    [CMP_PADDING_XY,[3,3]],
                    [CMP_PADDING_HEIGHT_ADJUST_XY,[0, 0] ],
                    //[CMP_CUTOUT_TYPE,EXTERIOR],
                    [CMP_SHAPE,CIRCLE],
                    [CMP_SHAPE_VERTICAL_B,t],    
                ]
            ],                             
        ]
    ],

 
];


MakeAll();