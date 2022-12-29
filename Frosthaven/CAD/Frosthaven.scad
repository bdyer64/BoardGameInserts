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


//**************n Basic Template for creating monster box labels
monsterBoxCompLabelTemplate = compartmentLabel(label=[["Three","Six","Nine"],["Two","Five","Eight"],["One","Four","Seven"]],size=6,rotation = 90,position=[0,18],depth=0.5);

monsterBoxLabelDataTemplate = [[[53,-75],[53,0],[53,75],[0,-75],[0,0],[0,75],[-44,-75],[-62,-75],[-53,0],[-53,75]],["One","Two","Three","Four","Five","Six","Seven One", "Seven Two","Eight","Nine"]];


// ***** Monster Box 1 Labels*****

monsterBox1LabelData = [[[53,-75],[53,0],[53,75],[10,-75],[10,0],[10,75],[-10,-75],[-10,0],[-10,75],[-53,-75],[-53,0],[-53,75]],["Algox Guard","Algox Scout","Forest Imp","City Guard","Abael Scout","Black Imp","Vermling Priest","Vermling Scout","Snow Imp","Algox Priest","Shrike Fiend","Steel Automaton"]];

monsterBox1CompLabelTop = compartmentLabel(label=[["Forest Imp"],["Algox Scout"],["Algox Guard"]],size=7,rotation = 90,position=[0,18],depth=0.5);

monsterBox1CompLabelMiddle1 = compartmentLabel(label=[["Snow Imp"],["Black Imp"],[""],[""],[""],[""]],size=7,rotation = 0,position=[0,0],depth=0.5);
monsterBox1CompLabelMiddle2 = compartmentLabel(label=[[""],[""],["Vermling"],["Abael"],["Vermling"],["City"]],size=7,rotation = 0,position=[0,5],depth=0.5);
monsterBox1CompLabelMiddle3 = compartmentLabel(label=[[""],[""],["Scout"],["Scout"],["Priest"],["Guard"]],size=7,rotation = 0,position=[0,-5],depth=0.5);

monsterBox1CompLabelBottom1 = compartmentLabel(label=[["Steel"],["Shrike Fiend"],["Algox Priest"]],size=7,rotation = 90,position=[0,18],depth=0.5);
monsterBox1CompLabelBottom2 = compartmentLabel(label=[["Automaton"],[""],[""]],size=7,rotation = 90,position=[0,-18],depth=0.5);

// ***** Monster Box 2 Labels ****

monsterBox2CompLabel1 = compartmentLabel(label=[["Ooze","Piranha Pig","Ruined"],["Frozen Corpse","Living Spirit","Lightening Eel"],["Deep Terror","Earth Demon","Flaming"]],size=7,rotation = 90,position=[0,18],depth=0.5);
monsterBox2CompLabel2 = compartmentLabel(label=[["","","Machine"],["","",""],["","","Bladespinner"]],size=7,rotation = 90,position=[0,-18],depth=0.5);

monsterBox2LabelData = [[[53,-75],[53,0],[53,75],[0,-75],[0,0],[0,75],[-44,-75],[-62,-75],[-53,0],[-46,75],[-60,75]],["Deep Terror","Frozen Corpse","Ooze","Earth Demon","Living Spirit","Piranha Pig","Flaming", "Bladespinner","Lightening Eel","Ruined","Machine"]];

// ***** Monster Box 3 Labels *****

monsterBox3CompLabel1 = compartmentLabel(label=[["Wind Demon","Spitting Drake","Sun Demon"],["Savvas Lavaflow","Savvas Icestorm","Robotic"],["Algox","Polar Bear","Rending Drake"]],size=7,rotation = 90,position=[0,18],depth=0.5);
monsterBox3CompLabel2 = compartmentLabel(label=[["","",""],["","","Boltshooter"],["Snowspeaker","",""]],size=7,rotation = 90,position=[0,-18],depth=0.5);

monsterBox3LabelData = [[[44,-75],[62,-75],[53,0],[53,75],[0,-75],[0,0],[0,75],[-53,-75],[-45,-0],[-61,0],[-53,75]],["Algox","Snowspeaker","Savvas Lavaflow","Wind Demon","Polar Bear","Savvas Icestorm","Spitting Drake","Rending Drake", "Robotic","Boltshooter","Sun Demon"]];

// ***** Monster Box 4 Labels ****

monsterBox4CompLabel1 = compartmentLabel(label=[["Harrower","Living Bones","Lurker"],["Lurker","Lurker","Ice Wraith"],["Hound","Living Doom","Lurker Soldier"]],size=6,rotation = 90,position=[0,18],depth=0.5);

monsterBox4CompLabel2 = compartmentLabel(label=[["Infester","","Mindsnipper"],["Wavethrower","Clawcrusher",""],["","",""]],size=6,rotation = 90,position=[0,-18],depth=0.5);

monsterBox4LabelData = [[[53,-75],[61,0],[45,0],[61,75],[45,75],[0,-75],[8,0],[-8,0],[0,75],[-53,-75],[-53,0],[-45,75],[-61,75]],["Hound","Lurker","Waverthrower","Harrower","Infester","Living Doom","Lurker","Clawcrusher","Living Bones","Lurker Soldier","Ice Wraith","Lurker","Mindsnipper"]];

// ***** Monster Box 5 Labels ****

monsterBox5CompLabel1 = compartmentLabel(label=[["Night Demon","Frost Demon","Flame Demon"],["Algox","Burrowing","Algox Archer"],["Chaos Demon","Ancient Artillery","Abael Herder"]],size=6,rotation = 90,position=[0,18],depth=0.5);

monsterBox5CompLabel2 = compartmentLabel(label=[["","",""],["Icespeaker","Blade",""],["","",""]],size=6,rotation = 90,position=[0,-18],depth=0.5);

monsterBox5LabelData = [[[53,-75],[61,0],[45,0],[53,75],[8,-75],[-8,-75],[8,0],[-8,0],[0,75],[-53,-75],[-53,0],[-53,75]],["Chaos Demon","Algox","Icespeaker","Night Demon","Ancient","Artillery","Burrowing","Blade","Frost Demon","Abael Herder","Algox Archer","Flame Demon"]];

function monsterBox1() =
    [   "Monster Box 1",
        [
            [ BOX_SIZE_XYZ, [162,228,23]],
            boxLidPositionedLabels( monsterBox1LabelData, 7, 90),
            squareCompartmentGrid([1,3],52,74,21,t,padding=[1,1],compartmentLabels=[monsterBox1CompLabelTop],position=[0,0]), 
            squareCompartmentGrid([1,6],52,36.5,21,f,padding=[1,1],compartmentLabels=[monsterBox1CompLabelMiddle1,monsterBox1CompLabelMiddle2,monsterBox1CompLabelMiddle3],position=[CENTER,CENTER]),
            squareCompartmentGrid([1,3],52,74,21,t,padding=[1,1],compartmentLabels=[monsterBox1CompLabelBottom1,monsterBox1CompLabelBottom2],position=[106,0]),   
        ]
    ];
    
function monsterBox2() = 
    gridBox( "Monster Box 2", [3,3], ["Monster Box 2"], 7, 90, 52, 74, 17, "", t , padding = [1,1],compLabel=[monsterBox2CompLabel1,monsterBox2CompLabel2],positioned_labels=t,label_data=monsterBox2LabelData);

function monsterBox3() = 
    gridBox( "Monster Box 3", [3,3], ["Monster Box 3"], 7, 90, 52, 74, 13, "", t , padding = [1,1],compLabel=[monsterBox3CompLabel1,monsterBox3CompLabel2],positioned_labels=t,label_data=monsterBox3LabelData);
    
function monsterBox4() = 
    gridBox( "Monster Box 4", [3,3], ["Monster Box 4"], 7, 90, 52, 74, 17, "", t , padding = [1,1],compLabel=[monsterBox4CompLabel1,monsterBox4CompLabel2],positioned_labels=t,label_data=monsterBox4LabelData);
    
function monsterBox5() = 
    gridBox( "Monster Box 5", [3,3], ["Monster Box 5"], 7, 90, 52, 74, 17, "", t , padding = [1,1],compLabel=[monsterBox5CompLabel1,monsterBox5CompLabel2],positioned_labels=t,label_data=monsterBox5LabelData);
    
// Large Card Box stuff

cw = card_sizes[1][0];
ch = card_sizes[1][1];
largeCardsCompartmentSizes =[[cw,49,ch],[cw,32,ch],[cw,16,ch],[cw,16,ch],[cw,40,ch],[cw,32,ch],[cw,33,ch],[cw,8,ch],];
largeCardsCompartmentPositions = [[0,0],[0,50],[0,83],[0,100],[68,0],[68,41],[68,74],[68,108]];

compartmentLabelsWinter = compartmentLabel(label=[["Winter"]],size=10,rotation = 0,position=[0,8],depth=0.5);
compartmentLabelsOutposts = compartmentLabel(label=[["Outposts"]],size=10,rotation = 0,position=[0,-8],depth=0.5);
compartmentLabelsBuildings = compartmentLabel(label=[["Buildings"]],size=10,rotation = 0,position=[0,0],depth=0.5);
compartmentLabelsRandomRoom = compartmentLabel(label=[["Random Rooms"]],size=6,rotation = 0,position=[0,0],depth=0.5);
compartmentLabelsRandomSetup = compartmentLabel(label=[["Random Setups"]],size=6,rotation = 0,position=[0,0],depth=0.5);
compartmentLabelsQuests = compartmentLabel(label=[["Quests"]],size=5,rotation = 0,position=[0,0],depth=0.5);
compartmentLabelsSummer = compartmentLabel(label=[["Summer"]],size=10,rotation = 0,position=[0,8],depth=0.5);
compartmentLabelsRoad = compartmentLabel(label=[["Road"]],size=10,rotation = 0,position=[0,-8],depth=0.5);

compartmentLargeCardsLabels=[[compartmentLabelsWinter,compartmentLabelsOutposts],[compartmentLabelsBuildings],[compartmentLabelsRandomRoom],[compartmentLabelsRandomSetup],[compartmentLabelsSummer,compartmentLabelsOutposts],[compartmentLabelsWinter,compartmentLabelsRoad],[compartmentLabelsSummer,compartmentLabelsRoad],[compartmentLabelsQuests]];
largeCardLidLabels = [[[-34.5,28.5],[-34.5,42.5],[-34.5,-6],[-34.5,-31],[-34.5,-48],[34.5,33],[34.5,47],[34.5,-3],[34.5,9],[34.5,-36],[34.5,-25],[34.5,-51]],["Winter","Outposts","Buildings","Rand Rooms","Rand Setups","Summer","Outposts","Winter","Road Events","Summer","Road Events","Quests"]];

function largeCardBox() = 
     freeFormBox( "Large Cards", largeCardsCompartmentPositions, largeCardsCompartmentSizes, 139, 120 , 94, stack="",cutout_bottom=f,cutout_sides=[t,t,f,f],compLabel = compartmentLargeCardsLabels,positioned_labels=true,label_data=largeCardLidLabels,label_size=7,label_rotation=180);

// Focus on one box
g_isolated_print_box = "stacking"; 
g_b_print_lid = true;
g_b_print_box = true; 

data =
[    
    monsterBox1(),
    monsterBox2(),
    monsterBox3(),
    monsterBox4(),
    monsterBox5(),
    largeCardBox(),
    [   "stacking",
        [
            [ BOX_SIZE_XYZ,                                     [45, 45, 15.0] ],
            [ BOX_STACKABLE_B, t],
            [ BOX_LID,
                [
                    [ LID_SOLID_B, t],
                    [ LID_INSET_B, t],
                    [ LID_TABS_4B, [ f,f,t,f]],
                    [ LID_FIT_UNDER_B, f],
                ]
            ],
            //boxLid( ["Test"], 8, 90,2,inset = t),
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 42, 42, 13.0] ],
                ]
            ],                            
        ]
    ],
];

MakeAll();