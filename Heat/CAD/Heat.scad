insert_font = "Libre Baskerville:style=Regular";

include <../../The-Boardgame-Insert-Toolkit/boardgame_insert_toolkit_lib.2.scad>;
include <../../BFD-Insert-Extensions/InsertExtensions.scad>;



g_b_print_lid = true;
g_b_print_box = false; 
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

playerBoxSizes = [[92,61,13]];
playerBoxPositions = [[0,0]];
function playerBox() = freeFormBox3( "Player Box",playerBoxPositions,playerBoxSizes, 96,65, 15,cutout_bottom=[t,f],bottom_cutout_pct = 50,label_data=[""],lid_patt_radius=5,shape=SQUARE);

function heatBox() = freeFormBox3( "Heat Box",playerBoxPositions,playerBoxSizes, 96,65, 15,cutout_bottom=[t,f],bottom_cutout_pct = 50,label_data=["Heat"],lid_patt_radius=5,shape=SQUARE);

function stressBox() = freeFormBox3( "Stress Box",playerBoxPositions,playerBoxSizes, 96,65, 15,cutout_bottom=[t,f],bottom_cutout_pct = 50,label_data=["Stress"],lid_patt_radius=5,shape=SQUARE);

upgradeBoxSizes = [[92,61,30],[92,61,30]];
upgradeBoxPositions = [[0,0],[0,65]];
function upgradeBox() = freeFormBox3( "Upgrade Box",upgradeBoxPositions,upgradeBoxSizes, 96,65+65, 15+15+2,cutout_bottom=[t,t],bottom_cutout_pct = 50,label_data=["Upgrades"],label_size=15,label_rotation=90,lid_patt_radius=5,shape=SQUARE);

gearShiftBoxSizes = [[15.5,15.5,26],[15.5,15.5,26],[15.5,15.5,26],[15.5,15.5,26],[15.5,15.5,26],[15.5,15.5,26],[15.5,15.5,26],[15.5,15.5,26],[(15.5*2)+1,(15.5*4)+(1*3),10]];
gearShiftBoxPositions = [[0,0],[0,(15.5*1)+(1*1)],[0,(15.5*2)+(1*2)],[0,(15.5*3)+(1*3)],[16.5,0],[16.5,(15.5*1)+(1*1)],[16.5,(15.5*2)+(1*2)],[16.5,(15.5*3)+(1*3)],[0,0]];
gearShiftBoxShapes=[ROUND,ROUND,ROUND,ROUND,ROUND,ROUND,ROUND,ROUND,SQUARE];
function gearShiftBox() = freeFormBox4( "Gear Shift Box",gearShiftBoxPositions,gearShiftBoxSizes, (15.5*2)+(1*1)+4,(15.5*4)+(1*3)+4, 32,bottom_cutout_pct = 50,label_data=["Gear Shifts"],label_size=7,label_rotation=90,lid_patt_radius=5,shapes=gearShiftBoxShapes,rotate_shape=t);

function carBox() = gridBox( "Car Box", [2,4], ["Cars"], 12, 90, 32, 17, 9,padding = [1,1]);

//function mapHolder() = cornerHolder("Map Holder",[100,100,58],[13,13],39);

function scorePads() = gridBox( "Score Pads", [1,1], ["Score Pads"], 10, 90, 65, 102, 17,padding = [1,1],cutout=t);

upgradeweatherRoadBoxSizes = [[80,61,13],[29,61,13]];
weatherRoadBoxPositions = [[0,2],[81,2]];
function weatherRoadBox() = freeFormBox3( "Weather Road Box",weatherRoadBoxPositions,upgradeweatherRoadBoxSizes, 114,69,19,cutout_bottom=[t,t],bottom_cutout_pct = 50,label_data=["Weather and","Road Conditions"],label_size=8,label_rotation=0,lid_patt_radius=5,shape=SQUARE);

sponsorshipBoxSizes = [[92,61,23]];
sponsorshipBoxPositions = [[0,0]];
function sponsorshipBox() = freeFormBox3( "Sponsorship Box",sponsorshipBoxPositions,sponsorshipBoxSizes, 96,65, 32,cutout_bottom=[t,f],bottom_cutout_pct = 50,label_data=["Sponsorships"],lid_patt_radius=5,shape=SQUARE,label_size=9);

otherBoxSizes = [[92,61,16]];
otherBoxPositions = [[0,0]];
function otherBox() = freeFormBox3( "Other Box",otherBoxPositions,otherBoxSizes, 96,65, 32,cutout_bottom=[t,f],bottom_cutout_pct = 50,label_data=["Tracks","Events","Legends"],lid_patt_radius=5,shape=SQUARE,label_size=8);

borderWidth = [8,8];
holderSize = [285,285,61];
mapSize = [265,265,38];
//function mapHolder() = freeFormBox4("Map Holder",
//[borderWidth],[[mapSize[0],mapSize[1],mapSize[2]]], holderSize[0], holderSize[1],holderSize[2],
//cutout_sides=[[t,t,t,t]],side_cutout_height_pct=100,cutout_bottom=[t],bottom_cutout_pct = 50,side_cutout_width_pct=50,lid=false);

function trackHolder() = mapHolder("Track Holder",holderSize,mapSize,borderWidth);

pressBoxSizes = [[66,52,9]];
pressBoxPositions = [[0,6.5]];
function otherBox() = freeFormBox3( "Press Corner Box",pressBoxPositions,pressBoxSizes, 70,69, 11,cutout_bottom=[f,f],bottom_cutout_pct = 50,label_data=["Press Corner"],lid_patt_radius=5,shape=SQUARE,label_size=7);

function spacer1() = spacer("Spacer 1",24,144,34);
function spacer2() = spacer("Spacer 2",32,69,34);
function spacer3() = spacer("Spacer 3",75,69,13);


g_isolated_print_box = "Press Corner Box"; 
 
 data = [
    playerBox(),
    upgradeBox(),
    gearShiftBox(),
    carBox(),
    trackHolder(),
    scorePads(),
    heatBox(),
    stressBox(),
    sponsorshipBox(),
    weatherRoadBox(),
    spacer1(),
    spacer2(),
    otherBox(),
    spacer3(),
 ];
 

 
MakeAll();
 
 



