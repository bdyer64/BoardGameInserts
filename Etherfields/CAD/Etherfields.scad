include <boardgame_insert_toolkit_lib.2.scad>;

// determines whether lids are output.
g_b_print_lid = false;

// determines whether boxes are output.
g_b_print_box = true; 

// Focus on one box
g_isolated_print_box = "Tough Guy Divider"; 

// Used to visualize how all of the boxes fit together. 
//g_b_visualization = true;          
        
// this is the outer wall thickness. 
//Default = 1.5mm
g_wall_thickness = 2.0;


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

card_sizes = [[68,91],[102,102]];
card_width = 68;
card_height = 91;
insert_font = "Libre Baskerville:style=Regular";

function label_offset(num_labels,index,label_gap,label_size) = 
    num_labels == 1 ? 0:((num_labels-1)*(label_gap+label_size))*((index/(num_labels-1))-0.5)*-1;

function boxLid( label, label_size, label_rotation,label_gap) =
    [ BOX_LID,
        [
            [ LID_PATTERN_RADIUS,           8],        
            [ LID_PATTERN_N1,               6 ],
            [ LID_PATTERN_N2,               3 ],
            [ LID_PATTERN_ANGLE,            60 ],
            [ LID_PATTERN_ROW_OFFSET,       10 ],
            [ LID_PATTERN_COL_OFFSET,       140 ],
            [ LID_PATTERN_THICKNESS,        0.6 ],      
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
        
function bowlCompartment(num,x,y,height,cutout) = 
    [ BOX_COMPONENT,
        [
            [CMP_NUM_COMPARTMENTS_XY,   [num,1]],
            [CMP_COMPARTMENT_SIZE_XYZ,  [ x, y, height] ],
            [POSITION_XY, [CENTER,CENTER]],
            [CMP_SHAPE, BOWL],
        ]
    ];
 
function bowlBox(box_name, label, height, stack ) = 
            bowl(box_name, 1, label,10, 90, card_width, card_height, height, stack);
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
function cardBox(box_name, label, height, stack , label_size = 10) = 
            box(box_name, 1, label,label_size, 90, card_width, card_height, height, stack, t);
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
    
function bowl( box_name, num_compartments, label, label_size, label_rotation, x, y, height, stack) =
    [   box_name,
        [
            [ BOX_SIZE_XYZ, [((x+3) * num_compartments), y + 3, height + 1.5] ],  
            boxLid(label, label_size, label_rotation, 12),
            bottomLabel(stack,y),
            bowlCompartment(num_compartments,x,y,height),        
        ]
    ];
function divider( divider_name, label, tab_height) = 
     [ divider_name,
        [
            [ TYPE,                     DIVIDERS ],

            [ DIV_TAB_TEXT,             [label]],

            [ DIV_TAB_TEXT_SIZE,        6],
            [ DIV_THICKNESS,            1],
            [ DIV_TAB_TEXT_CHAR_THRESHOLD, 20],

            [ DIV_TAB_SIZE_XY,          [card_width-2, tab_height]],
            [ DIV_TAB_CYCLE,            2],
            [ DIV_TAB_CYCLE_START,      1],
            [ DIV_TAB_TEXT_FONT,        insert_font],

            [ DIV_FRAME_NUM_COLUMNS,    1],
            [ DIV_FRAME_SIZE_XY,        [card_width-2, card_height-2]],
            [ DIV_FRAME_COLUMN,         15],


        ]
    ];
    
function marker( marker_name, label, tab_height) = 
     [ marker_name,
        [
            [ TYPE,                     DIVIDERS ],

            [ DIV_TAB_TEXT,             [label]],

            [ DIV_TAB_TEXT_SIZE,        20],
            [ DIV_THICKNESS,            0.75],
            [ DIV_TAB_TEXT_CHAR_THRESHOLD, 3],

            [ DIV_TAB_SIZE_XY,          [card_width-2, tab_height]],
            [ DIV_TAB_CYCLE,            2],
            [ DIV_TAB_CYCLE_START,      1],
            [ DIV_TAB_TEXT_FONT,        insert_font],

            [ DIV_FRAME_NUM_COLUMNS,    -1],
            [ DIV_FRAME_SIZE_XY,        [card_width-2, card_height-tab_height]],
            [ DIV_FRAME_COLUMN,         15],


        ]
    ];
data =
[
    verticleCardBox("Secret Cards", ["Secret Cards"], 150, 2, 10, "1"),
    verticleCardBox("Player Cards", ["Player Cards"], 138, 1, 10,  "2"),
    divider("Specialist Divider","Specialist",10),
    divider("Tough Guy Divider","Tough Guy",10),
    divider("Free Spirit Divider","Free Spirit",10),
    divider("Gambler Divider","Gambler",10),
    divider("Reaper Divider","Reaper",10),
    marker("Deck Marker","Deck",50),
    marker("Discard Marker","Discard",50),
    marker("Hand Marker","Hand",50),
    marker("Progress Marker","Progress",50),
    marker("Other Marker","Other",50),
    arker("Blank Marker","",50),
    verticleCardBox("Core Tile Cards", ["Core Tiles"], 115, 1, 10,  "3", 1),
];

MakeAll();
