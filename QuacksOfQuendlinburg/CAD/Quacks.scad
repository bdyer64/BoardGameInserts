insert_font = "Futura:style=Medium";
include <../../The-Boardgame-Insert-Toolkit/boardgame_insert_toolkit_lib.2.scad>;
include <../../BFD-Insert-Extensions/InsertExtensions.scad>;

$fn = 100;


// Used to visualize how all of the boxes fit together. 
//g_b_visualization = true;          
        
// this is the outer wall thickness. 
//Default = 1.5mm
g_wall_thickness = 2.0;
g_lid_thickness = 2.0;
g_min_bottom_thickness = 1.0;


// The tolerance value is extra space put between planes of the lid and box that fit together.
// Increase the tolerance to loosen the fit and decrease it to tighten it.
//
// Note that the tolerance is applied exclusivelysto the lid.
// So if the lid is too tight or too loose, change this value ( up for looser fit, down for tighter fit ) and 
// you only need to reprint the lid.
// 
// The exception is the stackable box, where the bottom of the box is the lid of the box below,
// in which case the tolerance also affects that box bottom.
//
g_tolerance = 0.15;
g_detent_thickness = 0.25;

// This adjusts the position of the lid detents downward. 
// The larger the value, the bigger the gap between the lid and the box.
g_tolerance_detents_pos = 0.1;


// Focus on one box
g_isolated_print_box = "Overflow"; 
g_b_print_lid = false;
g_b_print_box = true; 

// arge ingredient boxes x:121 y:164 z:17
function largeIngredientBox(label = "") =
    [   label,
        [
            [ BOX_SIZE_XYZ, [121,164,15]],
            boxLid([label], 12, 90, 812,lid_radius = 8),            
            bowlGridCompartment2([2,1],58,48,14,false,position=[CENTER,0],r=7.5,padding=[1,1]),
            bowlGridCompartment2([1,1],117,35,14,false,position=[CENTER,49],r=7.5,padding=[1,1]),
            squareCompartmentGrid([1,1],117,75,6.5,t,padding=[1,1],position=[CENTER,85]), 
        ]
    ];
    
    
function pumpkinBox() =
    [   "PUMPKINS",
        [
            [ BOX_SIZE_XYZ, [121,164,15]],
            boxLid(["PUMPKINS"], 12, 90, 812,lid_radius = 8),            
            bowlGridCompartment2([1,1],117,48,14,false,position=[CENTER,0],r=7.5,padding=[1,1]),
            bowlGridCompartment2([1,1],117,35,14,false,position=[CENTER,49],r=7.5,padding=[1,1]),
            squareCompartmentGrid([1,1],117,75,4.5,t,padding=[1,1],position=[CENTER,85]), 
        ]
    ];
    
function smallIngredientBox(label=[],books=3) =
    [   label[0],
        [
            [ BOX_SIZE_XYZ, [121,125,15]],
            boxLid(label, 12, 90, 12,lid_radius = 8),
            bowlGridCompartment2([1,1],117,45,14,false,position=[CENTER,0],r=7.5,padding=[1,1]),
            squareCompartmentGrid([1,1],117,75,(books*2)+0.5,t,padding=[1,1],position=[CENTER,46]), 
        ]
    ];

// player x:121 y:69 z:15
function player() = gridBox( "Player", [1,1], [""], 10, 0, 117, 65, 13,cutout = false,thin_bottom=true);

// patient charts x:135.5 y:88 z:21
function charts() =
    [   "Charts",
        [
            [ BOX_SIZE_XYZ, [135.5,88,19]],
            boxLid(["PATIENT CHARTS"], 12, 0, 12,lid_radius = 8),
            squareCompartmentGrid([1,1],129,84,18,t,padding=[1,1],position=[CENTER,CENTER]), 
        ]
    ];
  
    
// witches x:135.5 y:88 z:30  
function witches() =
    [   "Witches",
        [
            [ BOX_SIZE_XYZ, [135.5,88,28]],
            boxLid(["HERB","WITCHES"], 12, 0, 12,lid_radius = 8),
            squareCompartmentGrid([1,1],116,84,27,t,padding=[1,1],position=[CENTER,CENTER]), 
        ]
    ];

// overflow x:89 y:89 z:17
function overflow() =
    [   "Overflow",
        [
            [ BOX_SIZE_XYZ, [89,86,15]],
            boxLid(["OVERFLOW","BOWLS"], 12, 0, 12,lid_radius = 8),
            squareCompartmentGrid([1,1],85,85,11.5,t,padding=[1,1],position=[CENTER,CENTER]), 
        ]
    ];

data =
[ 
    largeIngredientBox("TOADSTOOLS"),
    largeIngredientBox("CROW SKULLS"),
    largeIngredientBox("MANDRAKE"),
    largeIngredientBox("GARDEN SPIDERS"),
    pumpkinBox(),
    smallIngredientBox(["LOCOWEED"],3),
    smallIngredientBox(["AFRICAN","DEATH'S","HEAD","HAWKMOTHS"],2),
    smallIngredientBox(["GHOST'S","BREATH"],3),
    player(),
    charts(),
    witches(),
    overflow(),
];

//echo(data);
MakeAll();