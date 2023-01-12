module box() { cube([400,285,240]); };
charX = 153.5;
charY = 285;
charZ = 122;
module characters() { cube([charX,charY,charZ]); };
monsX = 228-3.5;
monsY = 162-3;
monsZ = 25+21+21+21+17;
module monsterBoxes() { cube([monsX,monsY,monsZ]); };
//statsX = 20 + 2;
//statsY = 213.5;
//statsZ = 106.5;
//module monsterStats() { cube([statsX,statsY,statsZ]); };
largeCX = 207;
largeCZ = 105;
largeCY = 94 + 2;
module largeCardBox() { cube([largeCX,largeCY,largeCZ]); };
playerX = 153.5;
playerY = 120;
playerZ =  28 + 2;
module playerBox() { cube([playerX,playerY,playerZ]); };
statsX = 106+4;
statsY = 102.5 +4;
statsZ = 53;
module statsBox() { cube([statsX,statsY,statsZ]); };
smallCX = charX;
echo("small Cards Y");
smallCY = charY - statsY;
echo(smallCY);
smallCZ = statsZ;
module smallCardsBox() { cube([smallCX,smallCY,smallCZ]); };
damageX = smallCX - statsX;
echo(damageX);
damageY = statsY;
echo(damageZ);
damageZ = statsZ;
echo(damageZ);
module damageTokensBox() { cube([damageX,damageY,damageZ]); };
obsY = 156+6; // current size, can it shrink by 6?
obsX = 143;
obsZ = 60;
module obstacleBox() { cube([obsX,obsY,obsZ]); };
miniX =  216;
miniY = 93;
miniZ = 60;
module miniBox() { cube([miniX,miniY,miniZ]); };
bossX = 39.5;
bossY = largeCY;
bossZ = largeCZ;
module bossBox() { cube([bossX,bossY,bossZ]); };
envX = 78+4-0.5;
envY = 158 + 4;
envZ = 50+2;
module envelopeBox() { cube([envX,envY,envZ]); };
statusZ = monsZ;
statusY = monsY;
statusX = 22;
echo("status box");
echo(statusX);echo(statusY);echo(statusZ);
module statusBox() { cube([statusX,statusY,statusZ]); };

// Loot Cards
// Modifier Cards
// Battle Goal Cards


layer1 = true;
layer2 = true;
layer3 = true;


//color("red",0.10) box();

if (layer1) {
    color("white") characters();
    translate([charX,0,0]) color("grey") monsterBoxes();
    //translate([charX+monsX,0,0]) color("beige") monsterStats();
    // This is on its side
    translate([charX,monsY,0]) color("blue") largeCardBox();
    translate([charX+playerY,monsY+largeCY+playerZ,0]) rotate([90,-90,0]) color("purple") playerBox();
    translate([charX+(2*playerY),monsY+largeCY+playerZ,0]) rotate([90,-90,0]) color("LimeGreen") playerBox();
    translate([charX+largeCX,monsY,0]) color("Black") bossBox();
    translate([charX+monsX,0,0]) color("Chocolate") statusBox();
}  
if (layer2) {  
    translate([0,charY-statsY,charZ]) color("orange") statsBox();
    translate([0,0,charZ]) color("Magenta") smallCardsBox();
    translate([statsX,smallCY,charZ]) color("red") damageTokensBox();
    rotate([0,0,0]) translate([charX,0,monsZ]) color("LightSalmon") obstacleBox();
    translate([charX,obsY,largeCZ]) color("Gold") miniBox();
    translate([charX+obsX,0,monsZ]) color("Aqua") envelopeBox();
}
if (layer3) {
     translate([0,0,charZ+smallCZ]) rotate([0,0,0]) color("Coral") playerBox();
     translate([0,playerY,charZ+smallCZ]) rotate([0,0,0]) color("Teal") playerBox();
}