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

card_sizes = [[52,74],[67,92],[49,71]];
card_width = 67;
card_height = 92;

include <SmallCardBox.scad>;
include <LootCardsBox.scad>;
include <ModifierCardsBox.scad>;
include <BattleCardsBox.scad>;
include <MonsterStatsBox.scad>;
include <MonsterBoxes.scad>;
include <ObstacleBoxes.scad>;
include <LargeCards.scad>;
include <BossBox.scad>;
include <StatusTokens.scad>;
include <DamageTokens.scad>;
include <PlayerBoxes.scad>;
include <MinisBox.scad>;
include <EnvelopeBox.scad>;
include <PlasticBases.scad>;

// Focus on one box
g_isolated_print_box = "Monster Box 2"; 
g_b_print_lid = true;
g_b_print_box = false; 
     
data =
[ 
    smallCardBox(),
    // Print 6
    smallUnavailableMarker(),
    // Print 1
    smallCompletedMarker(),
    // Print 1
    smallBlueprintsMarker(),
    lootCardsBox(),
    modifierCardsBox(),
    battleCardsBox(),
    monsterStatsBox(),
    monsterBox1(),
    monsterBox2(),
    monsterBox3(),
    monsterBox4(),
    monsterBox5(),
    obstacleBox1(),
    obstacleBox2(),
    obstacleBox3(),
    obstacleBox4(),
    largeCardBox(),
    // Print 5
    largeUnavailableMarker(),
    // Print 4
    largeRemovedMarker(),
    bossBox(),
    statusTokens(),
    damageTokensBottom(),
    damageTokensMiddle(),
    damageTokensTop(),
    playerBox("Player 1"),
    playerBox("Player 2"),
    playerBox("Player 3"),
    playerBox("Player 4"),
    minisBox(),
    envelopesBox(),
    plasticBasesBox(),
];

//echo(data);
MakeAll();