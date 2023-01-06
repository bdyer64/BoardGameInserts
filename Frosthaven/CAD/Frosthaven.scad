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
// Note that the tolerance is applied exclusively to the lid.
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

card_sizes = [[52,74],[67,92],[49,71]];
card_width = 67;
card_height = 92;


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
largeCardsCompartmentSizes =[[cw,58,ch],[cw,29,ch],[cw,25,ch],[cw,25,ch],[cw,53.5,ch],[cw,44.5,ch],[cw,47,ch],[cw,10,ch],];
largeCardsCompartmentPositions = [[0,0],[0,59],[136,0],[136,26],[68,0],[68,54.5],[136,52],[0,89]];

compartmentLabelsWinter = compartmentLabel(label=[["Winter"]],size=10,rotation = 0,position=[0,8],depth=0.5);
compartmentLabelsOutposts = compartmentLabel(label=[["Outpost"]],size=10,rotation = 0,position=[0,-8],depth=0.5);
compartmentLabelsBuildings = compartmentLabel(label=[["Buildings"]],size=10,rotation = 0,position=[0,0],depth=0.5);
compartmentLabelsRandomRoom = compartmentLabel(label=[["Random Rooms"]],size=6,rotation = 0,position=[0,0],depth=0.5);
compartmentLabelsRandomSetup = compartmentLabel(label=[["Random Setups"]],size=6,rotation = 0,position=[0,0],depth=0.5);
compartmentLabelsQuests = compartmentLabel(label=[["Quests"]],size=5,rotation = 0,position=[0,0],depth=0.5);
compartmentLabelsSummer = compartmentLabel(label=[["Summer"]],size=10,rotation = 0,position=[0,8],depth=0.5);
compartmentLabelsRoad = compartmentLabel(label=[["Road"]],size=10,rotation = 0,position=[0,-8],depth=0.5);

compartmentLargeCardsLabels=[[compartmentLabelsWinter,compartmentLabelsOutposts],[compartmentLabelsBuildings],[compartmentLabelsRandomRoom],[compartmentLabelsRandomSetup],[compartmentLabelsSummer,compartmentLabelsOutposts],[compartmentLabelsWinter,compartmentLabelsRoad],[compartmentLabelsSummer,compartmentLabelsRoad],[compartmentLabelsQuests]];
largeCardLidLabels = [[[-69.5,10.5],[-69.5,22.5],[-69.5,34.5],[-69.5,-22],[-69.5,-42.5],[0,12.75],[0,24.75],[0,36.75],[0,-32.25],[0,-18.25],[69.5,39],[69.5,13],[69.5,-31],[69.5,-19]],["Winter","Outpost","Events","Buildings","Quests","Summer","Outpost","Events","Winter","Road Events","Rand Rooms","Rand Setups","Summer","Road Events"]];

function largeCardBox() = 
     freeFormBox( "Large Cards", largeCardsCompartmentPositions, largeCardsCompartmentSizes, 207, 103 , 94, stack="",cutout_bottom=f,cutout_sides=[t,t,f,f],compLabel = compartmentLargeCardsLabels,positioned_labels=true,label_data=largeCardLidLabels,label_size=7,label_rotation=180);
     
 // Small Card Box

scw = card_sizes[2][0];
sch = card_sizes[2][1] + 2;
smallCardsCompartmentSizes =[[sch,85.5,scw],[sch,89.5,scw],[sch,48.5,scw],[sch,31.5,scw],[sch,40,scw],[sch,39.5,scw],[sch,34,scw],[sch,37,scw],[sch,24,scw],[sch,27.5,scw],[sch,6,scw]];
smallCardsCompartmentPositions = [[0,0],[sch+1.5,0],[0,86.5],[sch+1.5,90.5],[0,136],[sch+1.5,123],[0,177],[sch+1.5,163.5],[0,212],[sch+1.5,201.5],[sch+1.5,230]];

compartmentLabelsSmallCraft= compartmentLabel(label=[["Craft"]],size=10,rotation = 0,position=[0,8],depth=0.5);
compartmentLabelsSmallItems = compartmentLabel(label=[["Items"]],size=10,rotation = 0,position=[0,-8],depth=0.5);
compartmentLabelsSmallPurchase  = compartmentLabel(label=[["Purchase"]],size=10,rotation = 0,position=[0,8],depth=0.5);
compartmentLabelsSmallPotions = compartmentLabel(label=[["Potions"]],size=10,rotation = 0,position=[0,0],depth=0.5);
compartmentLabelsSmallRandom  = compartmentLabel(label=[["Random"]],size=10,rotation = 0,position=[0,8],depth=0.5);
compartmentLabelsSmallBattle  = compartmentLabel(label=[["Battle"]],size=10,rotation = 0,position=[0,8],depth=0.5);
compartmentLabelsSmallGoals  = compartmentLabel(label=[["Goals"]],size=10,rotation = 0,position=[0,-8],depth=0.5);
compartmentLabelsSmallTown  = compartmentLabel(label=[["Town"]],size=10,rotation = 0,position=[0,8],depth=0.5);
compartmentLabelsSmallGuard  = compartmentLabel(label=[["Guard"]],size=10,rotation = 0,position=[0,-8],depth=0.5);
compartmentLabelsSmallChallenge  = compartmentLabel(label=[["Challenge"]],size=10,rotation = 0,position=[0,8],depth=0.5);
compartmentLabelsSmallCards  = compartmentLabel(label=[["Cards"]],size=10,rotation = 0,position=[0,-8],depth=0.5);
compartmentLabelsSmallLoot  = compartmentLabel(label=[["Loot"]],size=10,rotation = 0,position=[0,8],depth=0.5);
compartmentLabelsSmallBlank  = compartmentLabel(label=[[""]],size=10,rotation = 0,position=[0,8],depth=0.5);
compartmentLabelsSmallModifier  = compartmentLabel(label=[["Modifiers"]],size=8,rotation = 0,position=[0,-6],depth=0.5);
compartmentLabelsSmallMonstAlly  = compartmentLabel(label=[["Monst/Ally"]],size=8,rotation = 0,position=[0,5],depth=0.5);
ompartmentLabelsSmallAttack  = compartmentLabel(label=[["Attack Decks"]],size=8,rotation = 0,position=[0,-6],depth=0.5);
compartmentLabelsSmallTemporary  = compartmentLabel(label=[["Conditional"]],size=9,rotation = 0,position=[0,6],depth=0.5);

compartmentSmallCardsLabels=[[compartmentLabelsSmallCraft,compartmentLabelsSmallItems],[compartmentLabelsSmallPurchase,compartmentLabelsSmallItems],[compartmentLabelsSmallPotions],[compartmentLabelsSmallRandom,compartmentLabelsSmallItems],[compartmentLabelsSmallBattle,compartmentLabelsSmallGoals],[compartmentLabelsSmallLoot,compartmentLabelsSmallCards],[compartmentLabelsSmallChallenge,compartmentLabelsSmallCards],[compartmentLabelsSmallTown,compartmentLabelsSmallGuard],[compartmentLabelsSmallMonstAlly,ompartmentLabelsSmallAttack],[compartmentLabelsSmallTemporary,compartmentLabelsSmallModifier],[compartmentLabelsSmallBlank]];
smallCardLidLabels = [[[-38,70.25],[-38,84.25],[38,68.25],[38,82.25],[-38,9.25],[38,6.75],[38,20.75],[-38,-43],[-38,-29],[38,-29.75],[38,-15.75],[-38,-80],[-38,-68],[38,-68],[38,-56],[-38,-110],[-38,-98],[38,-101.25],[38,-89.25]],["Craftable","Items","Purchasable","Items","Potions","Random","Items","Battle","Goals","Loot","Cards","Challenge","Cards","Town","Guard","Monst/Ally","Attack Decks","Conditional","Modifiers"]];

function smallCardBox() = 
     freeFormBox( "Small Cards", smallCardsCompartmentPositions, smallCardsCompartmentSizes, 152, 240 , scw+2, stack="",cutout_bottom=f,cutout_sides=[t,t,f,f],compLabel = compartmentSmallCardsLabels,positioned_labels=true,label_data=smallCardLidLabels,label_size=8,label_rotation=180);
     
 // Obstacle box 1 stuff
 
 obstacle1CompartmentSizes = [[38.75,34,13],[38.75,34,13],[38.75,34,13],[38.75,69,13],[38.75,34,13],[38.75,34,13],[38.75,34,13],[38.75,69,13],[38.75,69,13],[38.75,69,13],[38.75,69,13]];
 obstacle1CompartmentPositions = [[0,0],[39.75,0],[79.5,0],[119.25,0],[0,35],[39.75,35],[79.5,35],[0,70],[39.75,70],[79.5,70],[119.25,70]];
 function obstacleBox1() = 
     freeFormBox( "Obstacle Box 1", obstacle1CompartmentPositions, obstacle1CompartmentSizes, 162, 143, 15, stack="",cutout_bottom=t,cutout_sides=[f,f,f,f],compLabel = [],positioned_labels=false,lid_inset = true,lid_tabs=[f,f,f,f],bottom_cutout_pct = 60);
     
 // Obstacle box 2 stuff
 
 obstacle2CompartmentSizes = [[30.8,69,13],[30.8,69,13],[30.8,69,13],[30.8,69,13],[30.8,69,13],[30.8,69,13],[30.8,69,13],[30.8,69,13],[30.8,69,13],[30.8,69,13]];
 obstacle2CompartmentPositions = [[0,0],[31.8,0],[63.6,0],[95.4,0],[127.2,0],[0,70],[31.8,70],[63.6,70],[95.4,70],[127.2,70]];
 function obstacleBox2() = 
     freeFormBox2( "Obstacle Box 2", obstacle2CompartmentPositions, obstacle2CompartmentSizes, 162, 143, 15, stack="",cutout_bottom=[t,t,t,t,f,t,t,t,t,t],cutout_sides=[f,f,f,f],compLabel = [],positioned_labels=false,lid_inset = true,stackable=true,lid_tabs=[f,f,f,f],bottom_cutout_pct = 60);
     
 // Obstacle box 3 stuff
 
 obstacle3CompartmentSizes = [[21,31,13],[21,53,13],[21,53,13],[34,69,13],[34,34,13],[34,34,13],[69,69,13],[34,34,13],[34,34,13],[34,34,13],[34,34,13],[31,38,13],[31,39.5,13],[31,59.5,13]];
 obstacle3CompartmentPositions = [[0,0],[0,32],[0,86],[22,0],[22,70],[22,105],[57,0],[57,70],[57,105],[92,70],[92,105],[127,0],[127,39],[127,79.5]];
 function obstacleBox3() = 
     freeFormBox2( "Obstacle Box 3", obstacle3CompartmentPositions, obstacle3CompartmentSizes, 162, 143, 15, stack="",cutout_bottom=[t,f,f,t,t,t,t,t,t,t,t,t,f,f],cutout_sides=[f,f,f,f],compLabel = [],positioned_labels=false,lid_inset = true,stackable=true,lid_tabs=[f,f,f,f],bottom_cutout_pct = 60);
     
// Obstacle box 4 stuff
 
 obstacle4CompartmentSizes = [[34,34,11],[34,34,11],[34,69,11],[27,34,11],[27,34,11],[27,34,11],[27,34,11],[24.5,34,11],[24.5,34,11],[24.5,69,11],[35,139,11],[33.5,34,11],[33.5,34,11],[33.5,34,11],[33.5,34,11]];
 obstacle4CompartmentPositions = [[0,0],[0,35],[0,70],[35,0],[35,35],[35,70],[35,105],[63,0],[63,35],[63,70],[88.5,0],[124.5,0],[124.5,35],[124.5,70],[124.5,105]];
 function obstacleBox4() = 
     freeFormBox( "Obstacle Box 4", obstacle4CompartmentPositions, obstacle4CompartmentSizes, 162, 143, 13, stack="",cutout_bottom=t,cutout_sides=[f,f,f,f],compLabel = [],positioned_labels=false,lid_inset = false,stackable=true,lid_tabs=[f,f,f,f],label_data=["Obstacles"],label_size=16,bottom_cutout_pct = 60);
     
// Player Box
 
 playerBoxCompartmentSizes = [[75,92,29],[75,23,17],[72,55,29],[72,60,29],[148,73,9.5],[148,96,3.5],[148,116,1.5]];
 playerBoxCompartmentPositions = [[0,0],[0,93],[76,0],[76,56],[0,0],[0,0],[0,0]];
 function player1Box(player) = 
     freeFormBox2( player, playerBoxCompartmentPositions, playerBoxCompartmentSizes, 152, 120, 28, stack="",cutout_bottom=[t,f,t],cutout_sides=[f,f,f,f],compLabel = [],positioned_labels=false,lid_inset = false,stackable=false,lid_tabs=[f,f,f,f],label_data=[player],label_size=14);
     
// Monster Stat Cards

monsterStatsCompartmentSizes =[[102.5,102.5,19],[106,95,8],[102.5,102.5,19]];
monsterStatsCompartmentPositions = [[0,0],[103.4,3.75],[105.25,0]];

compartmentLabelsMonster = compartmentLabel(label=[["Monster"]],size=10,rotation = 0,position=[0,40],depth=0.5);
compartmentLabelsStatCards = compartmentLabel(label=[["Stat Cards"]],size=10,rotation = 0,position=[0,-40],depth=0.5);
compartmentLabelsBlank = compartmentLabel(label=[[""]],size=10,rotation = 0,position=[0,-40],depth=0.5);
compartmentLabelsBoss = compartmentLabel(label=[["Boss"]],size=10,rotation = 0,position=[0,40],depth=0.5);


compartmentMonsterStatsLabels=[[compartmentLabelsMonster,compartmentLabelsStatCards],[compartmentLabelsBlank],[compartmentLabelsBoss,compartmentLabelsStatCards]];
monsterStatsLidLabels = [[[-53.25,-20],[-53.25,0],[-53.25,20],[51.75,-20],[51.75,0],[51.75,20]],["Monster","Stat","Cards","Boss","Stat","Cards"]];

function monsterStatsBox() = 
     freeFormBox( "Monster Stats", monsterStatsCompartmentPositions, monsterStatsCompartmentSizes, 213.5, 106.5 , 20, stack="",cutout_bottom=t,cutout_sides=[f,f,f,f],compLabel = compartmentMonsterStatsLabels,positioned_labels=true,label_data=monsterStatsLidLabels,label_size=12,label_rotation=180,bottom_cutout_pct = 60);
 

// Focus on one box
g_isolated_print_box = "Obstacle Box 4"; 
g_b_print_lid = false;
g_b_print_box = true; 
g_b_fit_test = f;
g_b_visualization = t;
g_b_vis_actual = f;

data =
[    
    monsterBox1(),
    monsterBox2(),
    monsterBox3(),
    monsterBox4(),
    monsterBox5(),
    largeCardBox(),
    smallCardBox(),
    marker("Unavailable Marker","Unavailable",30,card = 2,sideways = true),
    marker("Completed Marker","Completed",30,card = 2,sideways = true),
    obstacleBox1(),
    obstacleBox2(),
    obstacleBox3(),
    obstacleBox4(),
    player1Box("Player 1"),
    player1Box("Player 2"),
    player1Box("Player 3"),
    player1Box("Player 4"),
    bowl("Status Tokens Bottom", 5, [""],10, 0, 28.8, 49, 11, "",padding = 1,radius=8,lid_inset=true),
    bowl("Status Tokens Middle", 5, [""],10, 0, 28.8, 49, 11, "",padding = 1,radius=8,lid_inset=true,stackable=true),
    bowl("Status Tokens Top", 5, ["Status Tokens"],10, 0, 28.8, 49, 11, "",padding = 1,radius=8,lid_inset=false,stackable=true),
    monsterStatsBox(),
];

MakeAll();