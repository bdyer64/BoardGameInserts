// monster boxes x:225 y:159 z:105

// ***** Monster Box 1 Labels*****

monsterBox1LabelData = [[[57.8,-74],[46.2,-74],[57.8,0],[46.2,0],[52,74],[11,-74],[11,0],[11,74],[-5,-74],[-17,-74],[-5,0],[-17,0],[-11,74],[-46.2,-74],[-57.8,-74],[-52,0],[-46.2,74],[-57.8,74]],["ALGOX","GUARD","ALGOX","SCOUT","FOREST IMP","CITY GUARD","ABAEL SCOUT","BLACK IMP","VERMLING","PRIEST","VERMLING","SCOUT","SNOW IMP","ALGOX","PRIEST","SHRIKE FIEND","STEEL","AUTOMATON"]];

monsterBox1CompLabelTop1 = compartmentLabel(label=[["FOREST IMP"],["ALGOX"],["ALGOX"]],size=7,rotation = 90,position=[0,18],depth=1);
monsterBox1CompLabelTop2 = compartmentLabel(label=[[""],["SCOUT"],["GUARD"]],size=7,rotation = 90,position=[0,-18],depth=1);

monsterBox1CompLabelMiddle1 = compartmentLabel(label=[["SNOW"],["BLACK"],["VERMLING"],["ABAEL"],["VERMLING"],["CITY"]],size=6.5,rotation = 0,position=[0,5],depth=1);
monsterBox1CompLabelMiddle2 = compartmentLabel(label=[["IMP"],["IMP"],["SCOUT"],["SCOUT"],["PRIEST"],["GUARD"]],size=6.5,rotation = 0,position=[0,-5],depth=1);

monsterBox1CompLabelBottom1 = compartmentLabel(label=[["STEEL"],["SHRIKE FIEND"],["ALGOX PRIEST"]],size=7,rotation = 90,position=[0,18],depth=1);
monsterBox1CompLabelBottom2 = compartmentLabel(label=[["AUTOMATON"],[""],[""]],size=7,rotation = 90,position=[0,-18],depth=1);

// ***** Monster Box 2 Labels ****

monsterBox2CompLabel1 = compartmentLabel(label=[["OOZE","PIRANHA PIG","RUINED"],["FROZEN","LIVING SPIRIT","LIGHTNING"],["DEEP TERROR","EARTH","FLAMING"]],size=7,rotation = 90,position=[0,18],depth=1);
monsterBox2CompLabel2 = compartmentLabel(label=[["","","MACHINE"],["CORPSE","","EEL"],["","DEMON","BLADESPINNER"]],size=7,rotation = 90,position=[0,-18],depth=1);

monsterBox2LabelData = [[[57.7,-74],[46.3,-74],[57.8,0],[46.2,0],[52,74],[6.2,-74],[-5.8,-74],[6.2,0],[-5.8,0],[6.2,74],[-5.8,74],[-46.2,-74],[-57.8,-74],[-46.2,0],[-57.8,0],[-46.2,74],[-57.8,74]],["DEEP","TERROR","FROZEN","CORPSE","OOZE","EARTH","DEMON","LIVING","SPIRIT","PIRANHA","PIG","FLAMING", "BLADESPINNER","LIGHTNING","EEL","RUINED","MACHINE"]];

// ***** Monster Box 3 Labels *****

monsterBox3CompLabel1 = compartmentLabel(label=[["WIND DEMON","SPITTING","SUN DEMON"],["SAVVAS","SAVVAS","ROBOTIC"],["ALGOX","POLAR BEAR","RENDING"]],size=6.5,rotation = 90,position=[0,18],depth=1);
monsterBox3CompLabel2 = compartmentLabel(label=[["","DRAKE",""],["LAVAFLOW","ICESTORM","BOLTSHOOTER"],["SNOWSPEAKER","","DRAKE"]],size=6.5,rotation = 90,position=[0,-18],depth=1);

monsterBox3LabelData = [[[58,-74],[46,-74],[58,0],[46,0],[52,74],[0,-74],[6,0],[-6,0],[6,74],[-6,74],[-46,-74],[-58,-74],[-46.5,-0],[-57.5,0],[-52,74]],["ALGOX","SNOWSPEAKER","SAVVAS","LAVAFLOW","WIND DEMON","POLAR BEAR","SAVVAS","ICESTORM","SPITTING","DRAKE","RENDING","DRAKE", "ROBOTIC","BOLTSHOOTER","SUN DEMON"]];

// ***** Monster Box 4 Labels ****

monsterBox4CompLabel1 = compartmentLabel(label=[["HARROWER","LIVING","LURKER"],["LURKER","LURKER","ICE WRAITH"],["HOUND","LIVING","LURKER"]],size=6.5,rotation = 90,position=[0,18],depth=1);

monsterBox4CompLabel2 = compartmentLabel(label=[["INFESTER","BONES","MINDSNIPPER"],["WAVETHROWER","CLAWCRUSHER",""],["","DOOM","SOLDIER"]],size=6.5,rotation = 90,position=[0,-18],depth=1);

monsterBox4LabelData = [[[52,-74],[57,0],[47,0],[57,74],[47,74],[5,-74],[-5,-74],[5,0],[-5,0],[5,74],[-5,74],[-47,-74],[-57,-74],[-52,0],[-47,74],[-57,74]],["HOUND","LURKER","WAVETHROWER","HARROWER","INFESTER","LIVING","DOOM","LURKER","CLAWCRUSHER","LIVING","BONES","LURKER","SOLDIER","ICE WRAITH","LURKER","MINDSNIPPER"]];

// ***** Monster Box 5 Labels ****

monsterBox5CompLabel1 = compartmentLabel(label=[["NIGHT","FROST","FLAME"],["ALGOX","BURROWING","ALGOX"],["CHAOS","ANCIENT","ABAEL"]],size=7,rotation = 90,position=[0,18],depth=1);

monsterBox5CompLabel2 = compartmentLabel(label=[["DEMON","DEMON","DEMON"],["ICESPEAKER","BLADE","ARCHER"],["DEMON","ARTILLERY","HERDER"]],size=7,rotation = 90,position=[0,-18],depth=1);

monsterBox5LabelData = [[[58,-74],[46,-74],[58,0],[46,0],[58,74],[46,74],[6,-74],[-6,-74],[6,0],[-6,0],[6,74],[-6,74],[-46.2,-74],[-57.8,-74],[-46,0],[-58,-0],[-46,74],[-58,74]],["CHAOS","DEMON","ALGOX","ICESPEAKER","NIGHT","DEMON","ANCIENT","ARTILLERY","BURROWING","BLADE","FROST","DEMON","ABAEL","HERDER","ALGOX","ARCHER","FLAME","DEMON"]];

function monsterBox1() =
    [   "Monster Box 1",
        [
            [ BOX_SIZE_XYZ, [159,225,23]],
            boxLidPositionedLabels( monsterBox1LabelData, 7, 90,lid_label_thickness = 1),
            squareCompartmentGrid([1,3],50.5,73,21,t,padding=[1,1],compartmentLabels=[monsterBox1CompLabelTop1,monsterBox1CompLabelTop2],position=[0,0]), 
            squareCompartmentGrid([1,6],52,36,21,f,padding=[1,1],compartmentLabels=[monsterBox1CompLabelMiddle1,monsterBox1CompLabelMiddle2],position=[CENTER,CENTER]),
            squareCompartmentGrid([1,3],50.5,73,21,t,padding=[1,1],compartmentLabels=[monsterBox1CompLabelBottom1,monsterBox1CompLabelBottom2],position=[104.5,0]),   
        ]
    ];
    
function monsterBox2() = 
    gridBox( "Monster Box 2", [3,3], ["Monster Box 2"], 7, 90, 51, 73, 17, "", t , padding = [1,1],compLabel=[monsterBox2CompLabel1,monsterBox2CompLabel2],positioned_labels=t,label_data=monsterBox2LabelData,lid_label_thick = 1);

function monsterBox3() = 
    gridBox( "Monster Box 3", [3,3], ["Monster Box 3"], 7, 90, 51, 73, 13, "", t , padding = [1,1],compLabel=[monsterBox3CompLabel1,monsterBox3CompLabel2],positioned_labels=t,label_data=monsterBox3LabelData,lid_label_thick = 1);
    
function monsterBox4() = 
    gridBox( "Monster Box 4", [3,3], ["Monster Box 4"], 7, 90, 51, 73, 17, "", t , padding = [1,1],compLabel=[monsterBox4CompLabel1,monsterBox4CompLabel2],positioned_labels=t,label_data=monsterBox4LabelData,lid_label_thick = 1);
    
function monsterBox5() = 
    gridBox( "Monster Box 5", [3,3], ["Monster Box 5"], 7, 90, 51, 73, 17, "", t , padding = [1,1],compLabel=[monsterBox5CompLabel1,monsterBox5CompLabel2],positioned_labels=t,label_data=monsterBox5LabelData,lid_label_thick = 1);