insert_font = "Libre Baskerville:style=Regular";

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
g_tolerance = 0.25;

// This adjusts the position of the lid detents downward. 
// The larger the value, the bigger the gap between the lid and the box.
g_tolerance_detents_pos = 0.1;
card_sizes = [[64,89],[65,112],[50,65],[64,64],[22,65],[64,68]];
card_width = 64;
card_height = 89;

function personnelFiles() = cardBox("Personnel Files", ["Personnel","Files"], 35, "" , 10,card=0);

function baseDice() = standardBox2("Base Dice", ["Base Dice"], 16.5, "" , 10,0,0,card=1);

function advancedDice() = standardBox2("Advanced Dice", ["Advanced","Dice"], 16.5, "" , 8,0,0,card=2);

function injuryDice() = standardBox2("Injury Dice", ["Injury","Dice"], 16.5, "" , 8,0,0,card=2);

function standeeBases() = standardBox2("Standee Bases", ["Standee","Bases"], 10, "" , 8,0,0,card=2);

function baseRings() = standardBox2("Base Rings", ["Base","Rings"], 5.5, "" , 8,0,0,card=3);

function universalBox() = bowlGrid( "Universal Markers", [1,1],["Universal","Markers"], 9, 90, 50, 65,19, "",radius=12,lid=true,fit_under=true);

function tokenBox() = standardBox2("Token Box", ["Token","Box"], 11, "" , 10,0,0,card=3);

function otherDice() = standardBox2("Other Dice", ["Other Dice"], 18, "" , 8,0,0,card=4);

function equipmentTokens() = standardBox2("Equipment Tokens", ["Equipment","Tokens"], 15.5, "" , 8,0,0,card=5);

function standees() = gridBox( "Standees", [1,1], ["Standees"], 12,0,81,64,27);

function otherStuff() = gridBox( "Other Stuff", [1,1], ["Other","Stuff"], 12,0,76,64,27);

tsbCompartmentSizes = [[50,35,15],[50,25,15]];
tsbCompartmentPositions = [[0,0],[0,36]];
function timeSuccessBox() = freeFormBox3( "Time & Success Box",tsbCompartmentPositions,tsbCompartmentSizes, 54,65, 17,label_data=["Time &","Success"],label_size=8,label_rotation=90,shape=BOWL,fillet_radius=8,fit_under=true);

g_isolated_print_box = "Time & Success Box"; 

 
 data = [
    personnelFiles(),
    baseDice(),
    advancedDice(),
    injuryDice(),
    standeeBases(),
    baseRings(),
    universalBox(),
    tokenBox(),
    timeSuccessBox(),
    otherDice(),
    equipmentTokens(),
    standees(),
    otherStuff(),
 ];
 

 
MakeAll();
 
 



