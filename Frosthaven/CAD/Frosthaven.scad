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

card_sizes = [[52,74],[67,92]];
card_width = 68;
card_height = 91;
insert_font = "Futura:style=Medium";


// This is a bit messy but it would be hard to write a generalied function to put the labels in the 
// compartments and on the lid since they are structured very differently - maybe someday

monsterBox1LabelData = [[[53,-75],[53,0],[53,75],[9,-75],[9,0],[9,75],[-9,-75],[-9,0],[-9,75],[-53,-75],[-53,0],[-53,75]],["Algox Guard","Algox Scout","Forest Imp","City Guard","Abael Scout","Black Imp","Vermling Priest","Vermling Scout","Snow Imp","Algox Priest","Shrike Fiend","Steel Automaton"]];

monsterBox2CompLabel = compartmentLabel(label=[["Ooze","Piranha Pig","Ruined Machine"],["Frozen Corpse","Living Spirit","Lightening Eel"],["Deep Terror","Earth Demon","Flaming Bladespinner"]],size=5,rotation = 90,position=[0,16],depth=0.5);

monsterBox2LabelData = [[[53,-75],[53,0],[53,75],[0,-75],[0,0],[0,75],[-44,-75],[-62,-75],[-53,0],[-53,75]],["Deep Terror","Frozen Corpse","Ooze","Earth Demon","Living Spirit","Piranha Pig","Flaming", "Bladespinner","Lightening Eel","Ruined Machine"]];


function monsterBox1() =
    [   "Monster Box 1",
        [
        // (y * num_compartments[1]) + (num_compartments[1] - 1) * padding[1] + g_wall_thickness * 2
            [ BOX_SIZE_XYZ, [162,228,19]],
            boxLidPositionedLabels( monsterBox1LabelData, 7, 90),
            squareCompartmentGrid([1,3],52,74,17,t,padding=[1,1],position=[0,0]), 
            squareCompartmentGrid([1,6],52,36.5,17,t,padding=[1,1],position=[CENTER,CENTER]),
            squareCompartmentGrid([1,3],52,74,17,t,padding=[1,1],position=[106,0]),   
        ]
    ];
    
function monsterBox2() = 
    gridBox( "Monster Box 2", [3,3], ["Monster Box 2"], 7, 90, 52, 74, 17, "", t , padding = [1,1],compLabel=monsterBox2CompLabel,positioned_labels=t,label_data=monsterBox2LabelData);
    
function testHalfBox() = 
    gridBox( "Test Half Box", [2,1], ["Test Half Box"], 7, 90, 52, 36.5, 21, "", t , padding = [1,1]);
// Focus on one box
g_isolated_print_box = "Monster Box 2"; 
g_b_print_lid = true;
g_b_print_box = false; 

data =
[    
    monsterBox1(),
    monsterBox2(),
    testHalfBox(),
    
   
];

MakeAll();