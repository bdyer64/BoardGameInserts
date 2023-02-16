module box() { cube([287,287,69]); };


// Thin bottom
lIngredientX = 121;
lIngredientY = 164;
lIngredientZ = 17;
echo(str("large ingredient boxes x:",lIngredientX," y:",lIngredientY," z:",lIngredientZ));
module lIndgredientBox() { cube([lIngredientX,lIngredientY,lIngredientZ]); };


// Thin bottom
sIngredientX = 121;
sIngredientY = 121;
sIngredientZ = 17;
echo(str("small ingredient boxes x:",sIngredientX," y:",sIngredientY," z:",sIngredientZ));
module sIndgredientBox() { cube([sIngredientX,sIngredientY,sIngredientZ]); };

boardsX = 240;
boardsY = 265;
boardsZ = 12;
echo(str("boards x:",boardsX," y:",boardsY," z:",boardsZ));
module boards() { cube([boardsX,boardsY,boardsZ]); };

boards2X = 240;
boards2Y = 285;
boards2Z = 6;
echo(str("boards2 x:",boards2X," y:",boards2Y," z:",boards2Z));
module boards2() { cube([boards2X,boards2Y,boards2Z]); };

// Thin bottom
fortuneCardsX = 61;
fortuneCardsY = 92;
fortuneCardsZ = 17;
echo(str("fortune cards x:",fortuneCardsX," y:",fortuneCardsY," z:",fortuneCardsZ));
module fortuneCards() { cube([fortuneCardsX,fortuneCardsY,fortuneCardsZ]); };

// Thin bottom
essenceCardsX = 61;
essenceCardsY = 92;
essenceCardsZ = 10;
echo(str("essence cards x:",essenceCardsX," y:",essenceCardsY," z:",essenceCardsZ));
module essenceCards() { cube([essenceCardsX,essenceCardsY,essenceCardsZ]); };

rubiesX = lIngredientZ*3;
rubiesY = 89;
rubiesZ = 18;
echo(str("rubies x:",rubiesX," y:",rubiesY," z:",rubiesZ));
module rubies() { cube([rubiesX,rubiesY,rubiesZ]); };

overflowX = 89;
overflowY = 89;
overflowZ = sIngredientZ;
echo(str("overflow x:",overflowX," y:",overflowY," z:",overflowZ));
module overflow() { cube([overflowX,overflowY,overflowZ]); };

// Thin bottom, 1.5 mm lid
playerX = lIngredientX;
playerY = 69;
playerZ = 14.5;
echo(str("player x:",playerX," y:",playerY," z:",playerZ));
module player() { cube([playerX,playerY,playerZ]); };

// Thin bottom
witchesX = lIngredientX + playerZ;
witchesY = 88;
witchesZ = 30;
echo(str("witches x:",witchesX," y:",witchesY," z:",witchesZ));
module witches() { cube([witchesX,witchesY,witchesZ]); };

// Thin bottom
patientChartX = lIngredientX + playerZ;;
patientChartY = 84 + 4;
patientChartZ = 18 + 3;
echo(str("patient charts x:",patientChartX," y:",patientChartY," z:",patientChartZ));
module charts() { cube([patientChartX,patientChartY,patientChartZ]); };

penniesX = lIngredientZ*3;
penniesY = 74;
penniesZ = 16;
echo(str("pennies x:",penniesX," y:",penniesY," z:",penniesZ));
module pennies() { cube([penniesX,penniesY,penniesZ]); };

alchemistX = lIngredientZ*3;
alchemistY = 287 - sIngredientY - rubiesY;
alchemistZ = rubiesZ + penniesZ-essenceCardsZ;
echo(str("alchemist x:",alchemistX," y:",alchemistY," z:",alchemistZ));
module alchemist() { cube([alchemistX,alchemistY,alchemistZ]); };

cherryBX = playerZ;
cherryBY = lIngredientY - playerX;
cherryBZ = playerY;
echo(str("cherry bombs x:",cherryBX," y:",cherryBY," z:",cherryBZ));
module cherryB() { cube([cherryBX,cherryBY,cherryBZ]); };

spacerX = lIngredientX - fortuneCardsY;
spacerY = lIngredientY;
spacerZ = fortuneCardsZ;
echo(str("spacer x:",spacerX," y:",spacerY," z:",spacerZ));
module spacer() { cube([spacerX,spacerY,spacerZ]); };

layer1 = true;
layer2 = true;
layer3 = true;
layer4 = false;

//color("red",0.10) box();

if (layer1) {
    color("Red") lIndgredientBox();
    translate([lIngredientX,0,0]) color("DarkOrange") lIndgredientBox();
    translate([sIngredientY,lIngredientY,0]) rotate([0,0,90]) color("black") sIndgredientBox();
    translate([lIngredientX,lIngredientY+patientChartY+rubiesZ,rubiesX]) rotate([90,90,0]) color("Crimson") rubies();
    translate([lIngredientX,lIngredientY+patientChartY+rubiesZ+penniesZ,rubiesX]) rotate([90,90,0]) color("Maroon") pennies();
    translate([lIngredientX+penniesY,lIngredientY+patientChartY+rubiesZ+penniesZ,essenceCardsX]) rotate([90,90,0]) color("Purple") essenceCards();
    translate([lIngredientX+rubiesY,lIngredientY+patientChartY+rubiesZ+penniesZ-essenceCardsZ,alchemistX]) rotate([90,90,0]) color("White") alchemist();
    //translate([lIngredientX + witchesX,lIngredientY,cardsX]) rotate([0,90,0]) color("white") cards();
    translate([lIngredientX*2,0,0]) rotate([90,0,90]) color("SpringGreen") player();
    translate([lIngredientX*2+playerZ,0,0]) rotate([90,0,90]) color("SteelBlue") player();
    translate([lIngredientX*2+playerZ*2,0,0]) rotate([90,0,90]) color("Yellow") player();
    translate([lIngredientX*2+playerZ*2,playerX,0]) rotate([90,0,90]) color("Red") player();
    translate([lIngredientX*2+playerZ,playerX,0]) rotate([90,0,90]) color("Black") player();
    translate([lIngredientX,lIngredientY,0]) color("Cyan") charts();
    translate([2*lIngredientX,playerX,0]) color("Grey") cherryB();
}  
if (layer2) {  
    translate([0,0,lIngredientZ]) color("green") lIndgredientBox();
    translate([lIngredientX,0,lIngredientZ]) color("Yellow") lIndgredientBox();
    translate([sIngredientY,lIngredientY,lIngredientZ]) rotate([0,0,90]) color("HotPink") sIndgredientBox();
    translate([lIngredientX,lIngredientY,patientChartZ]) color("YellowGreen") witches();
}
if (layer3) {
    translate([0,0,lIngredientZ*2]) color("blue") lIndgredientBox();
    translate([sIngredientY,lIngredientY,lIngredientZ*2]) rotate([0,0,90]) color("purple") sIndgredientBox();
    translate([lIngredientX+fortuneCardsY,overflowY,lIngredientZ*2]) rotate([0,0,90]) color("white") fortuneCards();
    //translate([lIngredientX+cardsX,0,lIngredientZ*2]) color("Crimson") rubies();
    translate([lIngredientX,0,lIngredientZ*2]) color("Gold") overflow();
    translate([lIngredientX+fortuneCardsY,0,lIngredientZ*2]) color("Pink") spacer();
}

if (layer4) {
    translate([0,0,lIngredientZ*3]) color("grey") boards();
    translate([0,0,lIngredientZ*3+boardsZ]) color("LightSlateGray") boards2();
}