
include <boardgame_insert_toolkit_lib.custom.scad>;

// determines whether lids are output.
g_b_print_lid = true;

// determines whether boxes are output.
g_b_print_box = false;

// Focus on one box
g_isolated_print_box = "Box 10.1"; 

g_wall_thickness = 3;

g_b_visualization = false;

// thickness of detent. For a looser snap fit, reduce this. For a tighter snap fit, increase it.  ( recommended 0.05 increments )
g_detent_thickness = 0.2;

// tolerance for fittings. This is the gap between fitting pieces,
// such as lids and boxes. Increase to loosen the fit and decrease to
// tighten it.
g_tolerance = 0.2;

card_width = 67.5;
card_height = 93;

function label_offset(num_labels,index,label_gap,label_size) = 
    num_labels == 1 ? 0:((num_labels-1)*(label_gap+label_size))*((index/(num_labels-1))-0.5)*-1;

function boxLid( label, label_size, label_rotation,label_gap) =
    [ BOX_LID,
        [
            [ LID_PATTERN_RADIUS,           10],        
            [ LID_PATTERN_N1,               6 ],
            [ LID_PATTERN_N2,               3 ],
            [ LID_PATTERN_ANGLE,            60 ],
            [ LID_PATTERN_ROW_OFFSET,       10 ],
            [ LID_PATTERN_COL_OFFSET,       140 ],
            [ LID_PATTERN_THICKNESS,        0.8],      
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
                        [ LBL_FONT,     "Libre Baskerville:style=Regular"],
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
    
function squareCompartment(num,x,y,height,cutout) = 
    [ BOX_COMPONENT,
        [
            [CMP_NUM_COMPARTMENTS_XY,   [num,1]],
            [CMP_COMPARTMENT_SIZE_XYZ,  [ x, y, height] ],
            [CMP_CUTOUT_BOTTOM_B,cutout],
            [CMP_CUTOUT_BOTTOM_PCT,0.4],
            [POSITION_XY, [CENTER,CENTER]],
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
            
function box( box_name, num_compartments, label, label_size, label_rotation, x, y, height, stack, cutout ) =
    [   box_name,
        [
            [ BOX_SIZE_XYZ, [((x+g_wall_thickness*2) * num_compartments), y + g_wall_thickness*2, height + g_wall_thickness] ],  
            boxLid(label, label_size, label_rotation, 12),
            bottomLabel(stack,y),
            squareCompartment(num_compartments,x,y,height,cutout),        
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

//////////////////

data =
[
    // Total 39
    tripleCardBox("Box Scene",["Scene Cards"], 36,"1-3"),               // 39
    tripleSpacer("Scene Spacer",6),                                     //  6
    
    // Total 39
    cardBox("Box 4.1",["Animal","Specialist","Cards"],12,"4.1"),        // 15
    standardBox("Box 4.2",["Animal","Specialist","Animals"],21,"4.2"),  // 24
    
    // Total 39
    standardBox("Box 5.1",["Large","Mammals"],36,"5.1"),                // 39
    
    // Total 39 
    standardBox("Box 6.1",["Carnivorous","Predators"],22,"6.1",9),      // 25
    standardBox("Box 6.2",["Scavangers"],11,"6.2"),                     // 14

    // Total 39
    standardBox("Box 7.1",["Migratory","Herbivores"],21,"7.1"),         // 24
    standardBox("Box 7.2",["Player","Tokens"], 12,"7.2"),               // 15
    
    // Total 39
    bowlBox("Box 8.1",["Coins"],20, "8.1"),                             // 23
    bowlBox("Box 8.2",["Food"], 13, "8.2"),                             // 16
    
    // Total 39
    standardBox("Box 9.1",["Game","Tokens"], 11,  "9.1"),                // 14
    bowlBox("Box 9.2",["VFX","Tokens"], 13, "9.2"),                     // 16
    standardBox("Box 9.3",["Lock","Tokens"],6, "9.3"),                   // 9
    
    // Total 39
    standardBox("Box 10.1",["Award","Tiles"],13,"10.1"),                 // 16
    cardBox("Box 10.2",["Great","Migration","Cards"],8,"10.2"),          // 11
    cardBox("Box 10.3",["Specialist","Cards"],9,"10.3"),                 // 12
    
    standardBox("Box 11.1",["Cardboard","Tokens"],36,"11.1",10,0,3),     // 39
    
    spacer("Spacer",23,140,39)                                  // need two
];

MakeAll();
