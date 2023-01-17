// monster boxes x:225 y:159 z:105

// ***** Monster Box 1 Labels*****

monsterBox1LabelData = [[[52,-74],[52,0],[52,74],[10,-74],[10,0],[10,74],[-10,-74],[-10,0],[-10,74],[-52,-74],[-52,0],[-44,74],[-60,74]],["Algox Guard","Algox Scout","Forest Imp","City Guard","Abael Scout","Black Imp","Vermling Priest","Vermling Scout","Snow Imp","Algox Priest","Shrike Fiend","Steel","Automaton"]];

monsterBox1CompLabelTop = compartmentLabel(label=[["Forest Imp"],["Algox Scout"],["Algox Guard"]],size=7,rotation = 90,position=[0,18],depth=0.5);

monsterBox1CompLabelMiddle1 = compartmentLabel(label=[["Snow Imp"],["Black Imp"],[""],[""],[""],[""]],size=7,rotation = 0,position=[0,0],depth=0.5);
monsterBox1CompLabelMiddle2 = compartmentLabel(label=[[""],[""],["Vermling"],["Abael"],["Vermling"],["City"]],size=7,rotation = 0,position=[0,5],depth=0.5);
monsterBox1CompLabelMiddle3 = compartmentLabel(label=[[""],[""],["Scout"],["Scout"],["Priest"],["Guard"]],size=7,rotation = 0,position=[0,-5],depth=0.5);

monsterBox1CompLabelBottom1 = compartmentLabel(label=[["Steel"],["Shrike Fiend"],["Algox Priest"]],size=7,rotation = 90,position=[0,18],depth=0.5);
monsterBox1CompLabelBottom2 = compartmentLabel(label=[["Automaton"],[""],[""]],size=7,rotation = 90,position=[0,-18],depth=0.5);

// ***** Monster Box 2 Labels ****

monsterBox2CompLabel1 = compartmentLabel(label=[["Ooze","Piranha Pig","Ruined"],["Frozen Corpse","Living Spirit","Lightening Eel"],["Deep Terror","Earth Demon","Flaming"]],size=7,rotation = 90,position=[0,18],depth=0.5);
monsterBox2CompLabel2 = compartmentLabel(label=[["","","Machine"],["","",""],["","","Bladespinner"]],size=7,rotation = 90,position=[0,-18],depth=0.5);

monsterBox2LabelData = [[[52,-74],[60,0],[44,0],[52,74],[0,-74],[0,0],[0,74],[-44,-74],[-60,-74],[-52,0],[-44,74],[-60,74]],["Deep Terror","Frozen","Corpse","Ooze","Earth Demon","Living Spirit","Piranha Pig","Flaming", "Bladespinner","Lightening Eel","Ruined","Machine"]];

// ***** Monster Box 3 Labels *****

monsterBox3CompLabel1 = compartmentLabel(label=[["Wind Demon","Spitting Drake","Sun Demon"],["Savvas","Savvas Icestorm","Robotic"],["Algox","Polar Bear","Rending Drake"]],size=7,rotation = 90,position=[0,18],depth=0.5);
monsterBox3CompLabel2 = compartmentLabel(label=[["","",""],["Lavaflow","Icestorm","Boltshooter"],["Snowspeaker","",""]],size=7,rotation = 90,position=[0,-18],depth=0.5);

monsterBox3LabelData = [[[44,-74],[60,-74],[60,0],[44,0],[52,74],[0,-74],[8,0],[-8,0],[8,74],[-8,74],[-44,-74],[-60,-74],[-44,-0],[-60,0],[-52,74]],["Algox","Snowspeaker","Savvas","Lavaflow","Wind Demon","Polar Bear","Savvas","Icestorm","Spitting","Drake","Rending","Drake", "Robotic","Boltshooter","Sun Demon"]];

// ***** Monster Box 4 Labels ****

monsterBox4CompLabel1 = compartmentLabel(label=[["Harrower","Living Bones","Lurker"],["Lurker","Lurker","Ice Wraith"],["Hound","Living Doom","Lurker Soldier"]],size=6,rotation = 90,position=[0,18],depth=0.5);

monsterBox4CompLabel2 = compartmentLabel(label=[["Infester","","Mindsnipper"],["Wavethrower","Clawcrusher",""],["","",""]],size=6,rotation = 90,position=[0,-18],depth=0.5);

monsterBox4LabelData = [[[52,-74],[60,0],[44,0],[60,74],[44,74],[0,-74],[8,0],[-8,0],[0,74],[-52,-74],[-52,0],[-44,74],[-60,74]],["Hound","Lurker","Waverthrower","Harrower","Infester","Living Doom","Lurker","Clawcrusher","Living Bones","Lurker Soldier","Ice Wraith","Lurker","Mindsnipper"]];

// ***** Monster Box 5 Labels ****

monsterBox5CompLabel1 = compartmentLabel(label=[["Night Demon","Frost Demon","Flame Demon"],["Algox","Burrowing","Algox Archer"],["Chaos Demon","Ancient Artillery","Abael Herder"]],size=6,rotation = 90,position=[0,18],depth=0.5);

monsterBox5CompLabel2 = compartmentLabel(label=[["","",""],["Icespeaker","Blade",""],["","",""]],size=6,rotation = 90,position=[0,-18],depth=0.5);

monsterBox5LabelData = [[[52,-74],[60,0],[44,0],[52,74],[8,-74],[-8,-74],[8,0],[-8,0],[0,74],[-54,-74],[-52,0],[-52,74]],["Chaos Demon","Algox","Icespeaker","Night Demon","Ancient","Artillery","Burrowing","Blade","Frost Demon","Abael Herder","Algox Archer","Flame Demon"]];

function monsterBox1() =
    [   "Monster Box 1",
        [
            [ BOX_SIZE_XYZ, [159,225,23]],
            boxLidPositionedLabels( monsterBox1LabelData, 7, 90),
            squareCompartmentGrid([1,3],51,73,21,t,padding=[1,1],compartmentLabels=[monsterBox1CompLabelTop],position=[0,0]), 
            squareCompartmentGrid([1,6],51,36,21,f,padding=[1,1],compartmentLabels=[monsterBox1CompLabelMiddle1,monsterBox1CompLabelMiddle2,monsterBox1CompLabelMiddle3],position=[CENTER,CENTER]),
            squareCompartmentGrid([1,3],51,73,21,t,padding=[1,1],compartmentLabels=[monsterBox1CompLabelBottom1,monsterBox1CompLabelBottom2],position=[104,0]),   
        ]
    ];
    
function monsterBox2() = 
    gridBox( "Monster Box 2", [3,3], ["Monster Box 2"], 7, 90, 51, 73, 17, "", t , padding = [1,1],compLabel=[monsterBox2CompLabel1,monsterBox2CompLabel2],positioned_labels=t,label_data=monsterBox2LabelData);

function monsterBox3() = 
    gridBox( "Monster Box 3", [3,3], ["Monster Box 3"], 7, 90, 51, 73, 13, "", t , padding = [1,1],compLabel=[monsterBox3CompLabel1,monsterBox3CompLabel2],positioned_labels=t,label_data=monsterBox3LabelData);
    
function monsterBox4() = 
    gridBox( "Monster Box 4", [3,3], ["Monster Box 4"], 7, 90, 51, 73, 17, "", t , padding = [1,1],compLabel=[monsterBox4CompLabel1,monsterBox4CompLabel2],positioned_labels=t,label_data=monsterBox4LabelData);
    
function monsterBox5() = 
    gridBox( "Monster Box 5", [3,3], ["Monster Box 5"], 7, 90, 51, 73, 17, "", t , padding = [1,1],compLabel=[monsterBox5CompLabel1,monsterBox5CompLabel2],positioned_labels=t,label_data=monsterBox5LabelData);