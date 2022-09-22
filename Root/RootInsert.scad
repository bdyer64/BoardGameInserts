
include <boardgame_insert_toolkit_lib.custom.scad>;

// determines whether lids are output.
g_b_print_lid = f;

// determines whether boxes are output.
g_b_print_box = t; 

// Focus on one box
g_isolated_print_box = "Box 7.2"; 

g_wall_thickness = 1.5;

g_b_visualization = f;

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
                        [ LBL_FONT,     "Libre Baskerville:style=Regular"],
                        [ POSITION_XY,   [label_rotation == 0?0:label_offset(len(label),i,label_gap,label_size),
                                          label_rotation == 90?0:label_offset(len(label),i,label_gap,label_size)]]
                    ]
                ], 
        ],
    ];

function cardBox(box_name, label, height, stack , label_size = 10) = 
            box(box_name,label,label_size, 90, card_width, card_height, height, stack, t);
function standardBox(box_name, label, height, stack ) = 
            box(box_name,label,10, 90, card_width, card_height, height, stack, f);  
function halfSizeBox(box_name, label, height, stack ) =
            box(box_name,label, 6, 0, card_width, (card_height/2 - 1.5), height, stack, f);
function thirdSizeBox(box_name,label, height, stack ) =
            box(box_name,label, 4, 0, card_width, (card_height/3 - 1.5), height, stack, f);
function twoThirdsSizeBox(box_name,label, height, stack ) =
            box(box_name,label,6,0,card_width,((card_height*2)/3 - 1.5),height,stack, f);        
            
function box( box_name, label, label_size, label_rotation, x, y, height, stack, cutout ) =
    [   box_name,
        [
            [ BOX_SIZE_XYZ, [x + 3, y + 3, height + 1.5] ],  
            boxLid(label, label_size, label_rotation, 12),

            [ LABEL,
                [
                    [ LBL_DEPTH,        0.5],
                    [ LBL_TEXT,         stack],
                    [ LBL_SIZE,         10 ],
                    [ LBL_PLACEMENT,    BOTTOM],
                    [ POSITION_XY,      [0,(y+3)/2 - 15] ]
                ]
            ],            
            // card hole
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,   [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ x, y, height] ],
                    [CMP_CUTOUT_BOTTOM_B,cutout],
                    [CMP_CUTOUT_BOTTOM_PCT,0.4],
                    [POSITION_XY, [CENTER,CENTER]],
                ]
            ],
                     
        ]
    ];

//////////////////

data =
[
    // Stack 1/8 - 60
    cardBox("Box 1.1",["Base Cards"], 33, "1.1"),                        //* h = 36
    cardBox("Box 1.2",["Corvid","Conspiracy"],13, "1.2"),                //* h = 16
    standardBox("Box 1.3",["Items and","Clearing", "Markers"],5,"1.3"),  //* h = 8
    
    // Stack 2/8 - 60
    cardBox("Box 2.1",["Exiles", "and","Partisans"],33,"2.1"),           //* h = 36
    cardBox("Box 2.2",["Marquise","de Cat"],21,"2.2"),                   //* h = 24
    
    // Stack 3/8 - 60
    cardBox("Box 3.1",["Vagabond"],24, "3.1"),                           //* h = 27
    halfSizeBox("Box 3.2.1",["Protector","Flotilla"], 9, "3.2"),         //* h = 12
    halfSizeBox("Box 3.2.2",["Bandit","Hirelings"], 9, "3.2"),           //* h = 12 
    cardBox("Box 3.3",["Advanced","Setup","Cards"],6, "3.3"),            //* h =  9
    thirdSizeBox("Box 3.4.1",["The Exile"], 9, "3.4"),                   //* h = 12
    twoThirdsSizeBox("Box 3.4.2",["Mole","Hirelings"], 9, "3.4"),        //* h = 12
    
    
    // Stack 4/8 - 60
    cardBox("Box 4.1",["Underground","Duchy"],24,"4.1",8),               //* h = 27
    thirdSizeBox("Box 4.2.1",["Rabbit","Hirelings"],16,"4.2"),           //* h = 19
    twoThirdsSizeBox("Box 4.2.2",["Hireling","Tokens/Die"], 16, "4.2"),  //* h = 19
    thirdSizeBox("Box 4.3.1",["Lizard","Hirelings"], 11, "4.3"),         //* h = 14
    twoThirdsSizeBox("Box 4.3.2",["Rat","Hirelings"], 11, "4.3"),        //* h = 14
    
    
    // Stack 5/8 - 60
    cardBox("Box 5.1",["Lord","of the","Hundreds"],26, "5.1"),            //* h = 29
    cardBox("Box 5.2",["Riverfolk","Company"],13,"5.2"),                  //* h = 16
    cardBox("Box 5.3",["Second","Vagabond"],12,"5.3"),                    //* h = 15
    
    
    // Stack 6/8 - 60
    cardBox("Box 6.1",["Keepers","in","Iron"],22,"6.1"),                  //* h = 25
    cardBox("Box 6.2",["Eyrie","Dynasties"],19,"6.2"),                    //* h = 22
    halfSizeBox("Box 6.3.1",["Band","Hirelings"], 10, "6.3"),             //* h = 13
    halfSizeBox("Box 6.3.2",["Bird","Hirelings"],10,"6.3"),               //* h = 13
    
    // Stack 7/8 - 51
    cardBox("Box 7.1",["Lizard","Cult"],22,"7.1"),                        //* h = 25
    cardBox("Box 7.2",["Woodland","Alliance"],10, "7.2"),                 //* h = 13
    halfSizeBox("Box 7.3.1",["Raven","Hirelings"],10,"7.3"),              //* h = 13
    halfSizeBox("Box 7.3.2",["Badger","Hirelings"],10,"7.3"),             //* h = 13
    
    
    // Stack 8/8 - 51
    cardBox("Box 8.1",["Landmarks"], 23, "8.1",9),                        //* h = 26
    halfSizeBox("Box 8.2.1",["Cat","Hirelings"], 22, "8.2"),              //* h = 25 - reprint
    halfSizeBox("Box 8.2.2",["Dice"], 22, "8.2"),                         //* h = 25 - reprint

    
    box("Box CPM",["Closed Path Markers"],10, 90, 48, 200, 10,"", f),      // h = 11
    box("Box Hirelings",["Hireling Cards"],10, 90, 71, 121, 5, "7+8", t),  // h = 8
    box("Box Extras",["Extras"],10, 0, 67.5, 48, 12, "9", f),
    
    ["spacer",
        [
            [ BOX_SIZE_XYZ,[85, 90, 8] ],
            [ TYPE, SPACER]
                          
        ]
    ]
];

MakeAll();
