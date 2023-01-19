module box() { cube([400,285,240]); };

// Nothing to print
charX = 152;
charY = 285;
charZ = 122;
echo(str("character boxes x:",charX," y:",charY," z:",charZ));
module characters() { cube([charX,charY,charZ]); };

// Done
monsX = 228-3;
monsY = 162-3;
monsZ = 25+21+21+21+17;
echo(str("monster boxes x:",monsX," y:",monsY," z:",monsZ));
module monsterBoxes() { cube([monsX,monsY,monsZ]); };

// Done
largeCX = 207;
largeCZ = 105;
largeCY = 94 + 2;
echo(str("large card box x:",largeCX," y:",largeCY," z:",largeCZ));
module largeCardBox() { cube([largeCX,largeCY,largeCZ]); };

// Done
playerX = 152;
playerY = 120;
playerZ =  28 + 2;
echo(str("player boxes x:",playerX," y:",playerY," z:",playerZ));
module playerBox() { cube([playerX,playerY,playerZ]); };

// Done
statsX = 106+4;
statsY = 102.5 +4;
statsZ = 53;
echo(str("stats box x:",statsX," y:",statsY," z:",statsZ));
module statsBox() { cube([statsX,statsY,statsZ]); };

// Done
smallCX = charX;
smallCY = charY - statsY;
smallCZ = statsZ;
echo(str("small cards x:",smallCX," y:",smallCY," z:",smallCZ));
module smallCardsBox() { cube([smallCX,smallCY,smallCZ]); };

// Done
damageX = smallCX - statsX;
damageY = statsY;
damageZ = statsZ;
echo(str("damage  box x:",damageX," y:",damageY," z:",damageZ));
module damageTokensBox() { cube([damageX,damageY,damageZ]); };

// Done
obsY = 156+6; // current size, can it shrink by 6?
obsX = 143;
obsZ = 60;
echo(str("obstacle box x:",obsX," y:",obsY," z:",obsZ));
module obstacleBox() { cube([obsX,obsY,obsZ]); };

// Done
miniX =  216;
miniY = 93;
miniZ = 60;
echo(str("minis box x:",miniX," y:",miniY," z:",miniZ));
module miniBox() { cube([miniX,miniY,miniZ]); };

// Done
bossX = 39.5;
bossY = largeCY;
bossZ = largeCZ;
echo(str("boss box x:",bossX," y:",bossY," z:",bossZ));
module bossBox() { cube([bossX,bossY,bossZ]); };

// 
envX = 78+4-0.5;
envY = 158 + 4;
envZ = 50+2-6;
echo(str("envelope box x:",envX," y:",envY," z:",envZ));
module envelopeBox() { cube([envX,envY,envZ]); };

// Done
statusZ = monsZ;
statusY = monsY;
statusX = 22;
echo(str("status box x:",statusX," y:",statusY," z:",statusZ));
module statusBox() { cube([statusX,statusY,statusZ]); };

// Done
battleZ = 14;
battleY = envY; //(50*3)+4+2;
battleX = envX; //72 + 4;
echo(str("battle box x:",battleX," y:",battleY," z:",battleZ));
module battleBox() { cube([battleX,battleY,battleZ]); };

// Done
lootX = 22;
lootZ = envZ+battleZ;
lootY = envY;
echo(str("loot box x:",lootX," y:",lootY," z:",lootZ));
module lootBox() { cube([lootX,lootY,lootZ]); };

// Done
modX = 400 - charX - miniX-1.5;
modZ = miniZ;
modY = miniY;
echo(str("mod box x:",modX," y:",modY," z:",modZ));
module modBox() { cube([modX,modY,modZ]); };

// 
standsX = playerX;
standsY = 285 - (2 * playerY);
standsZ = playerZ;
echo(str("stands box x:",standsX," y:",standsY," z:",standsZ));
module standsBox() { cube([standsX,standsY,standsZ]); };

layer1 = true;
layer2 = false;
layer3 = false;

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
    translate([charX+miniX,envY,monsZ]) color("SeaGreen") modBox();
    translate([charX+obsX+envX,0,monsZ]) color("CornflowerBlue") lootBox();
}
if (layer3) {
     translate([0,0,charZ+smallCZ]) rotate([0,0,0]) color("Coral") playerBox();
     translate([0,playerY,charZ+smallCZ]) rotate([0,0,0]) color("Teal") playerBox();
     translate([charX+obsX,0,monsZ+envZ]) color("YellowGreen") battleBox();
     translate([0,2*playerY,charZ+statsZ]) color("Silver") standsBox();
}