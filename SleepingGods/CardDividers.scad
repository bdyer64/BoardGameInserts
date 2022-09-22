
include <boardgame_insert_toolkit_lib.bill.scad>;

// determines whether lids are output.
g_b_print_lid = t;

// determines whether boxes are output.
g_b_print_box = f; 

// Focus on one box
g_isolated_print_box = ""; 

g_wall_thickness = 1.0;


function makeDivider() = 
    [   label,
        [
            [ TYPE,                     DIVIDERS ],
            [ DIV_THICKNESS, 0.6],
            [ DIV_TAB_TEXT,             ["",""]],
            [ DIV_FRAME_NUM_COLUMNS,    4 ],
            [ DIV_FRAME_SIZE_XY, [92,56] ],
            [ DIV_TAB_SIZE_XY, [30,2] ]
        ]
    ];

//////////////////

data =
[

    makeDivider(),

];


MakeAll();
