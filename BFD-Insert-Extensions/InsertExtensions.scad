function label_offset(num_labels,index,label_gap,label_size) = 
    num_labels == 1 ? 0:((num_labels-1)*(label_gap+label_size))*((index/(num_labels-1))-0.5)*-1;

function boxLid( label, label_size, label_rotation,label_gap) =
    [ BOX_LID,
        [
            [ LID_PATTERN_RADIUS,           6],        
            [ LID_PATTERN_THICKNESS,        0.8 ],      
            [ LID_INSET_B, f ],
            [ LID_TABS_4B, [ t,t,t,t]],
            [ LID_FIT_UNDER_B, f],
            [ LID_LABELS_INVERT_B, t],
            for (i = [0:len(label)-1]) 
                [ LABEL,
                    [
                        [ LBL_TEXT,     label[i] ],
                        [ LBL_SIZE,     label_size],
                        [ ROTATION,     label_rotation ],
                        [ LBL_FONT,     insert_font],
                        [ POSITION_XY,   [label_rotation == 0?0:label_offset(len(label),i,label_gap,label_size),
                                          label_rotation == 90?0:label_offset(len(label),i,label_gap,label_size)]]
                    ]
                ], 
        ],
    ];
    
function boxLidPositionedLabels( label_data, label_size, label_rotation) =
    [ BOX_LID,
        [
            [ LID_PATTERN_RADIUS,           8],        
            [ LID_PATTERN_THICKNESS,        0.8 ],      
            [ LID_INSET_B, f ],
            [ LID_TABS_4B, [ t,t,t,t]],
            [ LID_FIT_UNDER_B, f],
            [ LID_LABELS_INVERT_B, t],
            for (i = [0:len(label_data[1])-1]) 
                [ LABEL,
                    [
                        [ LBL_TEXT,     label_data[1][i] ],
                        [ LBL_SIZE,     label_size],
                        [ ROTATION,     label_rotation ],
                        [ LBL_FONT,     insert_font],
                        [ POSITION_XY,  [label_data[0][i][0],label_data[0][i][1]]]
                    ]
                ], 
        ],
    ];
    
function compartmentLabel(label="label",size=5,rotation = 0,position=[0,0],depth=0.5) = 
 [ LABEL,
    [
        [ LBL_TEXT,     label ],
        [ LBL_SIZE,     size],
        [ ROTATION,     rotation],
        [ LBL_FONT,     insert_font],
        [ POSITION_XY,   position],
        [ LBL_DEPTH, depth ]
    ]
];
            
function spacer(spacer_name, x, y, height) =
    [spacer_name,
        [
            [ BOX_SIZE_XYZ, [x, y, height] ],
            [ TYPE, SPACER]
                          
        ]
    ];
    
function bottomLabel(label_text,y) = 
    [ LABEL,
        [
            [ LBL_DEPTH,        0.5],
            [ LBL_TEXT,         label_text],
            [ LBL_SIZE,         10 ],
            [ LBL_PLACEMENT,    BOTTOM],
            [ POSITION_XY,      [0,(y+3)/2 - 15] ]
        ]
    ];       
    
function squareCompartment(num,x,y,height,cutout_bottom, cutout_sides = [f,f,f,f]) = 
    [ BOX_COMPONENT,
        [
            [CMP_NUM_COMPARTMENTS_XY,   [num,1]],
            [CMP_COMPARTMENT_SIZE_XYZ,  [ x, y, height] ],
            [CMP_CUTOUT_BOTTOM_B,cutout_bottom],
            [CMP_CUTOUT_BOTTOM_PCT,40],
            [POSITION_XY, [CENTER,CENTER]],
            [CMP_CUTOUT_SIDES_4B,       cutout_sides], // all sides
            [CMP_CUTOUT_DEPTH_PCT,          20],
            [CMP_CUTOUT_WIDTH_PCT,          50],
            [CMP_CUTOUT_HEIGHT_PCT,         33],    
            [CMP_PADDING_HEIGHT_ADJUST_XY, [ -10, 0] ],
            [CMP_PADDING_XY, [ 2, 1 ] ]
        ]
    ];
    
function squareCompartmentGrid(num,x,y,height,cutout_bottom, cutout_sides = [f,f,f,f],padding=[2,2],compartmentLabels=[[""]],position=[CENTER,CENTER]) = 
    [ BOX_COMPONENT,
        [
            [CMP_NUM_COMPARTMENTS_XY,   num],
            [CMP_COMPARTMENT_SIZE_XYZ,  [ x, y, height] ],
            [CMP_CUTOUT_BOTTOM_B,cutout_bottom],
            [CMP_CUTOUT_BOTTOM_PCT,40],
            [POSITION_XY, position],
            [CMP_CUTOUT_SIDES_4B,       cutout_sides], // all sides
            [CMP_CUTOUT_DEPTH_PCT,          20],
            [CMP_CUTOUT_WIDTH_PCT,          50],
            [CMP_CUTOUT_HEIGHT_PCT,         33],    
            [CMP_PADDING_HEIGHT_ADJUST_XY, [ 0, 0] ],
            [CMP_PADDING_XY, padding ],
            for (i = [0:len(compartmentLabels)-1])
                compartmentLabels[i]
        ]
    ];
        
function bowlCompartment(num,x,y,height,cutout,pos_x = CENTER, pos_y = CENTER,r=7.5) = 
    [ BOX_COMPONENT,
        [
            [CMP_NUM_COMPARTMENTS_XY,   [num,1]],
            [CMP_COMPARTMENT_SIZE_XYZ,  [ x, y, height] ],
            [POSITION_XY, [pos_x,pos_y]],
            [CMP_SHAPE, BOWL],
            [CMP_FILLET_RADIUS,       r],
        ]
    ];
 
function bowlBox(box_name, label, height, stack , r = 7.5) = 
            bowl(box_name, 1, label,10, 90, card_width, card_height, height, stack,radius=r);
function singleSpacer(spacer_name,height) = 
    spacer(spacer_name,((card_width+3) * 1), card_height+3,height);
function doubleSpacer(spacer_name,height) = 
            spacer(spacer_name,((card_width+3) * 2), card_height+3,height);
function tripleSpacer(spacer_name,height) = 
            spacer(spacer_name,((card_width+3) * 3), card_height+3,height);
function tripleCardBox(box_name, label, height, stack , label_size = 10) = 
            box(box_name, 3, label,label_size, 0, card_width, card_height, height, stack, t);
function doubleCardBox(box_name, label, height, stack , label_size = 10) = 
            box(box_name, 2, label,label_size, 0, card_width, card_height, height, stack, t);
function cardBox(box_name, label, height, stack , label_size = 10,card=0) = 
            box(box_name, 1, label,label_size, 90, card_sizes[card][0], card_sizes[card][1], height, stack, t);
function standardBox(box_name, label, height, stack , label_size = 10,shrink_x=0,shrink_y=0) = 
            box(box_name, 1, label,label_size, 90, card_width-shrink_x, card_height-shrink_y, height, stack, f);  
function halfSizeBox(box_name, label, height, stack ) =
            box(box_name, 1, label, 6, 0, card_width, (card_height/2 - 1.5), height, stack, f);
function thirdSizeBox(box_name,label, height, stack ) =
            box(box_name, 1, label, 4, 0, card_width, (card_height/3 - 1.5), height, stack, f);
function twoThirdsSizeBox(box_name,label, height, stack ) =
            box(box_name, 1, label,6,0,card_width,((card_height*2)/3 - 1.5),height,stack, f);     
function verticleCardBox(box_name, label, length, num_rows, divider_space=0,stack, card= 0) =
    box(box_name, num_rows, label,10,90,card_sizes[card][0], length, card_sizes[card][1]+divider_space,stack,f,cutout_sides = [t,t,f,f]);


// This function creates a single row of compartments. Here for backward compatibility with 
// earlier insert    
function box( box_name, num_compartments, label, label_size, label_rotation, x, y, height, stack, cutout , padding = 2,cutout_sides = [f,f,f,f]) =
    [   box_name,
        [
            [ BOX_SIZE_XYZ, 
                [(x * num_compartments) + (num_compartments-1) * padding +g_wall_thickness * 2, 
                  y + 2 * g_wall_thickness, 
                  height + g_wall_thickness] ],  
            boxLid(label, label_size, label_rotation, 12),
            bottomLabel(stack,y),
            squareCompartment(num_compartments,x,y,height,cutout,cutout_sides),        
        ]
    ];

// This function takes an x,y array and creates a grid of compartments
function gridBox( box_name, num_compartments, label, label_size, label_rotation, x, y, height, stack, cutout , padding = [2,2],cutout_sides = [f,f,f,f],compLabel,positioned_labels=false,label_data) =
    [   box_name,
        [
            [ BOX_SIZE_XYZ, 
                [(x * num_compartments[0]) + (num_compartments[0] - 1) * padding[0] + g_wall_thickness * 2, 
                 (y * num_compartments[1]) + (num_compartments[1] - 1) * padding[1] + g_wall_thickness * 2, 
                  height + g_wall_thickness] ],
            if (positioned_labels)
                boxLidPositionedLabels( label_data, label_size, label_rotation)
            else
                boxLid(label, label_size, label_rotation, 12),
            bottomLabel(stack,y),
            squareCompartmentGrid(num_compartments,x,y,height,cutout,cutout_sides,padding,compLabel),        
        ]
    ];
    
function freeFormBox( box_name, compartmentsPositions ,compartmentsSizes, width, length, height, stack="",
                        cutout_bottom = f, cutout_sides=[f,f,f,f],
                        compLabel,positioned_labels=false,label_data=["Default"],label_size=10,label_rotation=0) =
    [   box_name,
        [
            [ BOX_SIZE_XYZ, [width, length, height] ],
            if (positioned_labels)
                boxLidPositionedLabels( label_data, label_size, label_rotation)
            else
                boxLid(label_data, label_size, label_rotation, 12),
            bottomLabel(stack,length),
            for (i = [0:len(compartmentsPositions)-1])
                squareCompartmentGrid([1,1],compartmentsSizes[i][0],compartmentsSizes[i][1],compartmentsSizes[i][2],
                                        position=[compartmentsPositions[i][0],compartmentsPositions[i][1]],
                                        cutout_bottom=cutout_bottom,cutout_sides=cutout_sides,compartmentLabels=compLabel[i]),        
        ]
    ];
    
function bowl( box_name, num_compartments, label, label_size, label_rotation, x, y,height, stack, padding = 2,radius=7.5) =
    [   box_name,
        [
            [ BOX_SIZE_XYZ, 
                [(x * num_compartments) + (num_compartments-1) * padding +g_wall_thickness * 2, 
                  y + 2 * g_wall_thickness, 
                  height + g_wall_thickness] ], 
            boxLid(label, label_size, label_rotation, 12),
            bottomLabel(stack,y),
            bowlCompartment(num_compartments,x,y,height,r=radius),        
        ]
    ];
function divider( divider_name, label, tab_height,card = 0) = 
     [ divider_name,
        [
            [ TYPE,                     DIVIDERS ],

            [ DIV_TAB_TEXT,             [label]],
            [ DIV_TAB_TEXT_INVERTED,    true],

            [ DIV_TAB_TEXT_SIZE,        6],
            [ DIV_THICKNESS,            1],
            [ DIV_TAB_TEXT_CHAR_THRESHOLD, 20],

            [ DIV_TAB_SIZE_XY,          [card_sizes[card][0]-2, tab_height]],
            [ DIV_TAB_CYCLE,            2],
            [ DIV_TAB_CYCLE_START,      1],
            [ DIV_TAB_TEXT_FONT,        insert_font],

            [ DIV_FRAME_NUM_COLUMNS,    1],
            [ DIV_FRAME_SIZE_XY,        [card_sizes[card][0]-2, card_sizes[card][1]-2]],
            [ DIV_FRAME_COLUMN,         (card_sizes[card][0]-2) * 0.2],


        ]
    ];
    
function marker( marker_name, label, tab_height, card = 0) = 
     [ marker_name,
        [
            [ TYPE,                     DIVIDERS ],

            [ DIV_TAB_TEXT,             [label]],
            [ DIV_TAB_TEXT_INVERTED,    true],

            [ DIV_TAB_TEXT_SIZE,        20],
            [ DIV_THICKNESS,            0.75],
            [ DIV_TAB_TEXT_CHAR_THRESHOLD, 3],

            [ DIV_TAB_SIZE_XY,          [card_sizes[card][0]-2, tab_height]],
            [ DIV_TAB_CYCLE,            2],
            [ DIV_TAB_CYCLE_START,      1],
            [ DIV_TAB_TEXT_FONT,        insert_font],

            [ DIV_FRAME_NUM_COLUMNS,    -1],
            [ DIV_FRAME_SIZE_XY,        [card_sizes[card][0]-2, card_sizes[card][1]-tab_height]],
            [ DIV_FRAME_COLUMN,         15],


        ]
    ];
    
    
  
   