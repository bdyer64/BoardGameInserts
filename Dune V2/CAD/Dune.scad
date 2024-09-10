insert_font = "Orthodox Herbertarian:style=Regular";

include <../../The-Boardgame-Insert-Toolkit/boardgame_insert_toolkit_lib.2.scad>;
include <../../BFD-Insert-Extensions/InsertExtensions.scad>;


g_b_print_lid = false;
g_b_print_box = true; 
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
card_sizes = [[61,92]];
card_width = 61;
card_height = 92;

cardPositions = [[0,0]];

treacheryCardSizes = [[67.5,93,31]];
treacheryLabel = compartmentLabel(label=[["Treachery"]],size=10,rotation = 90,position=[0,0],depth=1);
function treacheryBox() = freeFormBox4( "Treachery Box",cardPositions,treacheryCardSizes, 71.5,97, 33,cutout_bottom=[f,f],bottom_cutout_pct = 50,label_data=[""],lid_patt_radius=5,fit_under=false,lid_inset=true,lid_height=4,stackable = false,lid_tabs = [f,f,f,f],cutout_sides=[[f,f,t,t]],side_cutout_height_pct=100,invert_labels=false,compLabel=[[treacheryLabel]],stack="1");


allianceStormCardSizes = [[67.5,93,11]];
allianceLabel = compartmentLabel(label=[["Alliance"]],size=10,rotation = 90,position=[0,8],depth=1);
stormLabel = compartmentLabel(label=[["Storm-Kwiz"]],size=10,rotation = 90,position=[0,-8],depth=1);
function allianceStormBox() = freeFormBox4( "Alliance Storm Box",cardPositions,allianceStormCardSizes, 71.5,97, 13,cutout_bottom=[f,f],bottom_cutout_pct = 50,label_data=[""],lid_patt_radius=5,fit_under=false,lid_inset=false,lid_height=4,stackable = true,lid_tabs = [t,t,f,f],cutout_sides=[[f,f,t,t]],side_cutout_height_pct=100,invert_labels=false,compLabel=[[allianceLabel,stormLabel]],stack="1");

traitorCardSizes = [[67.5,93,31]];
traitoryLabel = compartmentLabel(label=[["Traitor"]],size=10,rotation = 90,position=[0,0],depth=1);
function traitorBox() = freeFormBox4( "Traitor Box",cardPositions,traitorCardSizes, 71.5,97, 33,cutout_bottom=[f,f],bottom_cutout_pct = 50,label_data=[""],lid_patt_radius=5,fit_under=false,lid_inset=true,lid_height=4,stackable = false,lid_tabs = [t,t,f,f],cutout_sides=[[f,f,t,t]],side_cutout_height_pct=100,invert_labels=false,compLabel=[[traitoryLabel]],stack="2");

leaderStrongCardSizes = [[67.5,93,11]];
leaderLabel = compartmentLabel(label=[["Leader Skills"]],size=9,rotation = 90,position=[0,8],depth=1);
strongholdLabel = compartmentLabel(label=[["Stronghold"]],size=9,rotation = 90,position=[0,-8],depth=1);
function leaderStrongBox() = freeFormBox4( "Leader Strong Box",cardPositions,leaderStrongCardSizes, 71.5,97, 13,cutout_bottom=[f,f],bottom_cutout_pct = 50,label_data=[""],lid_patt_radius=5,fit_under=false,lid_inset=false,lid_height=4,stackable = true,lid_tabs = [t,t,f,f],cutout_sides=[[f,f,t,t]],side_cutout_height_pct=100,invert_labels=false,compLabel=[[leaderLabel,strongholdLabel]],stack="2");

spiceCardSizes = [[67.5,93,15]];
spiceLabel = compartmentLabel(label=[["Spice"]],size=10,rotation = 90,position=[0,0],depth=1);
function spiceBox() = freeFormBox4( "Spice Box",cardPositions,spiceCardSizes, 71.5,97, 17,cutout_bottom=[f,f],bottom_cutout_pct = 50,label_data=[""],lid_patt_radius=5,fit_under=false,lid_inset=true,lid_height=4,stackable = false,lid_tabs = [t,t,f,f],cutout_sides=[[f,f,t,t]],side_cutout_height_pct=100,invert_labels=false,compLabel=[[spiceLabel]],stack="3");

preditcionCardSizes = [[67.5,93,11]];
predictionLabel = compartmentLabel(label=[["Prediction"]],size=10,rotation = 90,position=[0,0],depth=1);

function predictionBox() = freeFormBox4( "Prediction Box",cardPositions,preditcionCardSizes, 71.5,97, 13,cutout_bottom=[f,f],bottom_cutout_pct = 50,label_data=[""],lid_patt_radius=5,fit_under=false,lid_inset=true,lid_height=4,stackable = true,lid_tabs = [t,t,f,f],cutout_sides=[[f,f,t,t]],side_cutout_height_pct=100,invert_labels=false,compLabel=[[predictionLabel]],stack="3");

nexusHomeCardSizes = [[67.5,93,12]];
nexusLabel = compartmentLabel(label=[["Nexus"]],size=10,rotation = 90,position=[0,8],depth=1);
homeLabel = compartmentLabel(label=[["HomeWorlds"]],size=10,rotation = 90,position=[0,-8],depth=1);
function leaderStrongBox() = freeFormBox4( "Nexus Home Box",cardPositions,nexusHomeCardSizes, 71.5,97, 14,cutout_bottom=[f,f],bottom_cutout_pct = 50,label_data=[""],lid_patt_radius=5,fit_under=false,lid_inset=false,lid_height=4,stackable = true,lid_tabs = [t,t,f,f],cutout_sides=[[f,f,t,t]],side_cutout_height_pct=100,invert_labels=false,compLabel=[[nexusLabel,homeLabel]],stack="2");


bottomCutoutSides = [[f,f,t,t],[f,f,t,t],[f,f,t,t],[f,f,t,t],[f,f,t,t],[f,f,t,t]];
bottomTroopsSizes = [[ 70.5, 19, 19],[ 70.5, 19, 19],[ 70.5, 19, 19],[ 70.5, 19, 19],[70.5, 19, 19],[ 70.5, 19, 19]];
bottomTroopPositions = [[0,0],[0,20],[0,40],[0,60],[0,80],[0,100]];
function bottomTroopsBox() = freeFormBox4( "Bottom Troops Box",bottomTroopPositions,bottomTroopsSizes, 74.5,123,21,label_data=[""],lid_patt_radius=5,fit_under=false,lid_inset=true,lid_height=4,stackable = false,lid_tabs = [t,t,f,f],cutout_sides=bottomCutoutSides,side_cutout_height_pct=50,invert_labels=false,shapes=[ROUND],rotate_shape=f,side_cutout_width_pct=75);

function topTroopsBox() = freeFormBox4( "Top Troops Box",bottomTroopPositions,bottomTroopsSizes, 74.5,123,21,label_data=["Troops"],label_size=15,label_rotation=90,lid_patt_radius=5,fit_under=false,lid_inset=false,lid_height=4,stackable = true,lid_tabs = [t,t,f,f],cutout_sides=bottomCutoutSides,side_cutout_height_pct=50,invert_labels=false,shapes=[ROUND],rotate_shape=f,side_cutout_width_pct=75);

battleWheelSizes = [[126,126,13]];
battleWheelPositions = [[0,0]];
function battleWheelsBox() = freeFormBox4( "Battle Wheels Box",battleWheelPositions,battleWheelSizes, 130,130, 15,cutout_bottom=[t],bottom_cutout_pct = 15,label_data=["DUNE"],label_size=15,lid_patt_radius=8,fit_under=false,lid_inset=false,lid_height=4,stackable = false,lid_tabs = [f,f,f,f],cutout_sides=[[t,t,t,t]],side_cutout_height_pct=100,invert_labels=false,shapes=[ROUND],rotate_shape=t,side_cutout_width_pct=40);

leadersCutoutSides = [[f,f,t,t],[f,f,t,t],[f,f,t,t],[f,f,t,t],[f,f,t,t],[f,f,t,t],[f,f,t,t],[f,f,t,t],[f,f,t,t]];
leadersSizes = [[ 12, 40.5, 40.5],[ 12, 40.5, 40.5],[ 12, 40.5, 40.5],[ 12, 40.5, 40.5],[ 12, 40.5, 40.5],[ 12, 40.5, 40.5],[ 12, 40.5, 40.5],[ 12, 40.5, 40.5],[ 12, 40.5, 40.5]];
leaderPositions = [[0,0],[0,41.5],[0,83],[13,0],[13,41.5],[13,83],[26,0],[26,41.5],[26,83]];
function leadersBox() = freeFormBox4( "Leaders Box",leaderPositions,leadersSizes, 42,127.5,42.5,label_data=["Leaders"],label_size=10,label_rotation=90,lid_patt_radius=5,fit_under=false,lid_inset=false,lid_height=4,stackable = false,lid_tabs = [t,t,f,f],cutout_sides=leadersCutoutSides,side_cutout_height_pct=50,invert_labels=false,shapes=[ROUND],rotate_shape=f,side_cutout_width_pct=75);

leaders2CutoutSides = [[f,f,t,t],[f,f,t,t],[f,f,t,t]];
leaders2Sizes = [[ 40.5, 40.5, 12],[ 40.5, 40.5, 13.5],[ 40.5, 40.5,13.5]];
leaders2Positions = [[0,0],[0,41.5],[0,83]];
function leaders2Box() = freeFormBox4( "Leaders 2 Box",leaders2Positions,leaders2Sizes, 44.5,127.5,15.5,label_data=["Leaders"],label_size=10,label_rotation=90,lid_patt_radius=5,fit_under=false,lid_inset=false,lid_height=4,stackable = false,lid_tabs = [t,t,f,f],cutout_sides=leadersCutoutSides,side_cutout_height_pct=100,invert_labels=false,shapes=[ROUND],rotate_shape=true,side_cutout_width_pct=50);

planetsCutoutSides = [[f,f,t,t],[f,f,t,t],[f,f,f,f]];
planetsSizes = [[ 61.5, 61.5, 16],[ 61.5, 61.5, 16],[61.5,61.5,2.5]];
planetsPositions = [[0,0],[0,62.5],[0,31.25]];
function planetsBox() = freeFormBox4( "Planets Box",planetsPositions,planetsSizes, 65.5,128,18,label_data=["Planets"],label_size=10,label_rotation=90,lid_patt_radius=5,fit_under=false,lid_inset=false,lid_height=4,stackable = false,lid_tabs = [t,t,f,f],cutout_sides=planetsCutoutSides,side_cutout_height_pct=100,invert_labels=false,shapes=[ROUND,ROUND,ROUND],rotate_shape=true,side_cutout_width_pct=50);


                                                          
function noShipHolder() = tokenHolder("No Ship Holder",shape = ROUND,
                                           size=[20,20,2.1],wall_width=1,
                                           base_width=0.8,
                                           base_height=0.4,cutout_bottom = true);  
                                     
function choamMarklerHolder() = tokenHolder("Choam Marker Holder",shape = ROUND,
                                           size=[20,20,2.1],wall_width=1,
                                           base_width=0.8,
                                           base_height=0.4,cutout_bottom = true);         
                                    
function trooperHolder() = tokenHolder("Trooper Holder",shape = ROUND,
                                           size=[15.1,15.1,2.2],wall_width=1.5,
                                           base_width=0.8,
                                           base_height=0.9,cutout_bottom = true,
                                           stackable = true);
                                           
function ambassadorHolder() = tokenHolder("Ambassador Holder",shape = SQUARE,
                                           size=[19.8,19.8,2.2],wall_width=1,
                                           base_width=0.8,
                                           base_height=0.4,cutout_bottom = true);
                                    
function discoveryHolder() = tokenHolder("Discovery Holder",shape = ROUND,
                                           size=[24.9,24.9,2.1],wall_width=1,
                                           base_width=0.8,
                                           base_height=0.4,cutout_bottom = true);
                                           
function terrorHolder() = tokenHolder("Terror Holder",shape = ROUND,
                                           size=[19.8,19.8,2.1],wall_width=1,
                                           base_width=0.8,
                                           base_height=0.4,cutout_bottom = true);
                                           
function kwisatzTokenHolder() = tokenHolder("Kwisatz Token Holder",shape = SQUARE,
                                           size=[40,24.8,2.1],wall_width=1,base_width=0.8,
                                           base_height=0.4,cutout_bottom = true);
                                           
function kwisatzMarkerHolder() = tokenHolder("Kwisatz Marker Holder",shape = ROUND,
                                           size=[12,12,2.1],wall_width=1,base_width=0.8,
                                           base_height=0.4,cutout_bottom = true);
 
stormlWidth=34.16;
stormHeight=70.99; 
function stormHolder() = tokenHolder("Storm Holder",shape = CUSTOM,
                                           size=[stormlWidth,stormHeight,2.2],wall_width=1,base_width=2,
                                           base_height=0.8,cutout_bottom = true,
                                           shape_file="../Dune V2/CAD/Storm.svg");
shieldWallWidth=36.32;
shieldWallHeight=127.38;
function shieldWallHolder() = tokenHolder("Shield Wall Holder",shape = CUSTOM,
                                           size=[shieldWallWidth,shieldWallHeight,2.2],
                                           wall_width=1,base_width=2,
                                           base_height=0.8,cutout_bottom = true,
                                           shape_file="../Dune V2/CAD/Shieldwall.svg");
        
techTokenWidth=40.77;
techTokenHeight=39.62;         
function techTokenHolder() = tokenHolder("Tech Token Holder",shape = CUSTOM,
                                           size=[techTokenWidth,techTokenHeight,2.2],
                                           wall_width=1,base_width=2,
                                           base_height=0.8,cutout_bottom = true,
                                           shape_file="../Dune V2/CAD/TechToken.svg");
                                           
function turnMarkerHolder() = tokenHolder("Turn Marker Holder",shape = DONUT,
                                           size=[38,13,2.1],wall_width=1,base_width=0.8,
                                           base_height=0.4,cutout_bottom = true,
                                           angle=36);
                                           
function hmsHolder() = tokenHolder("Turn Marker Holder",shape = TEARDROP,
                                           size=[30,45,2.1],wall_width=1,base_width=0.8,
                                           base_height=0.4,cutout_bottom = true);
                                           
                                           
testCutoutSides = [[f,f,f,f]];
testSizes = [[ shieldWallWidth+3, shieldWallHeight+3, 3]];
testPositions = [[0,0]];
function testBox() = freeFormBox4( "Test Box",testPositions,testSizes,shieldWallWidth+7,shieldWallHeight+7,5,label_data=["Test"],label_size=10,label_rotation=90,lid_patt_radius=5,fit_under=false,lid_inset=false,lid_height=4,stackable = false,lid_tabs = [t,t,f,f],cutout_sides=testCutoutSides,side_cutout_height_pct=100,invert_labels=false,shapes=[CUSTOM],rotate_shape=true,side_cutout_width_pct=50,cutout_bottom=[t,f],bottom_cutout_pct = 70,shape_file="../Dune V2/CAD/Shieldwall.svg",shape_padding=1.5);
                                           
g_isolated_print_box = "Test Box"; 
 
 data = [
    treacheryBox(), 
    allianceStormBox(),
    traitorBox(),
    leaderStrongBox(),
    spiceBox(),
    predictionBox(),
    bottomTroopsBox(),
    topTroopsBox(),
    battleWheelsBox(),
    leadersBox(),
    leaders2Box(),
    planetsBox(),
    trooperHolder(),
    ambassadorHolder(),
    terrorHolder(),
    noShipHolder(),
    discoveryHolder(),
    kwisatzTokenHolder(),
    kwisatzMarkerHolder(),
    stormHolder(),
    shieldWallHolder(),
    techTokenHolder(),
    turnMarkerHolder(),
    hmsHolder(),
    noShipHolder(),
    choamMarklerHolder(),
    testBox(),
 ];

MakeAll();
svgWidth=269;
svgHeight=559;

//cube([100,126.747,16/2],center=true);
/*
resize([36.32,127.38,16/2])
    translate([svgWidth*2,0,16/2])
            rotate([0,180,0])
                    linear_extrude(height = 16 ,  
                        scale=1, center = true)
                        import(file = "Shieldwall.svg", center = true,dpi = 96);
                        
                        
scale([0.127,0.127,1])
    translate([0,0,0])
            rotate([0,180,0])
                    linear_extrude(height = 16 ,  
                        scale=1, center = true)
                        import(file = "Shieldwall.svg", center = true,dpi = 96);
                        */
                        


