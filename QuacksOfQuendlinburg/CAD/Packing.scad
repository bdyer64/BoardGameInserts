module box() { cube([285,285,69]); };

lIngredientX = 121;
lIngredientY = 164;
lIngredientZ = 18;
echo(str("large ingredient boxes x:",lIngredientX," y:",lIngredientY," z:",lIngredientZ));
module lIndgredientBox() { cube([lIngredientX,lIngredientY,lIngredientZ]); };

sIngredientX = 121;
sIngredientY = 121;
sIngredientZ = 18;
echo(str("large ingredient boxes x:",sIngredientX," y:",sIngredientY," z:",sIngredientZ));
module sIndgredientBox() { cube([sIngredientX,sIngredientY,sIngredientZ]); };

boardsX = 245;
boardsY = 265;
boardsZ = 13;
echo(str("boards x:",lIngredientX," y:",lIngredientY," z:",lIngredientZ));
module boards() { cube([boardsX,boardsY,boardsZ]); };

cardsX = 58;
cardsY = 89;
cardsZ = 18;
echo(str("cards x:",cardsX," y:",cardsY," z:",cardsZ));
module cards() { cube([cardsX,cardsY,cardsZ]); };

rubiesX = lIngredientZ*3;
rubiesY = 89;
rubiesZ = 18;
echo(str("cards x:",rubiesX," y:",rubiesY," z:",rubiesZ));
module rubies() { cube([rubiesX,rubiesY,rubiesZ]); };

overflowX = 85;
overflowY = 86;
overflowZ = 16;
echo(str("overflow x:",overflowX," y:",overflowY," z:",overflowZ));
module overflow() { cube([overflowX,overflowY,overflowZ]); };


witchesX = 119;
witchesY = 88;
witchesZ = 31;
echo(str("witches x:",witchesX," y:",witchesY," z:",witchesZ));
module witches() { cube([witchesX,witchesY,witchesZ]); };

bagX = 44;
bagY = 100;
bagZ = 24;
echo(str("witches x:",bagX," y:",bagY," z:",bagZ));
module bag() { cube([bagX,bagY,bagZ]); };

layer1 = true;
layer2 = true;
layer3 = true;
layer4 = false;

//color("red",0.10) box();

if (layer1) {
    color("Red") lIndgredientBox();
    translate([lIngredientX,0,0]) color("DarkOrange") lIndgredientBox();
    translate([sIngredientY,lIngredientY,0]) rotate([0,0,90]) color("black") sIndgredientBox();
    translate([lIngredientX*2,0,rubiesX]) rotate([0,90,0]) color("Crimson") rubies();
    translate([lIngredientX*2+rubiesZ,0,cardsX]) rotate([0,90,0]) color("white") cards();
    //translate([lIngredientX*2+rubiesZ,0,bagX]) rotate([0,90,0]) color("SpringGreen") bag();
    translate([lIngredientX,lIngredientY,0]) color("YellowGreen") witches();
}  
if (layer2) {  
    translate([0,0,lIngredientZ]) color("green") lIndgredientBox();
    translate([lIngredientX,0,lIngredientZ]) color("Yellow") lIndgredientBox();
    translate([sIngredientY,lIngredientY,lIngredientZ]) rotate([0,0,90]) color("HotPink") sIndgredientBox();
}
if (layer3) {
    translate([0,0,lIngredientZ*2]) color("blue") lIndgredientBox();
    translate([sIngredientY,lIngredientY,lIngredientZ*2]) rotate([0,0,90]) color("purple") sIndgredientBox();
    //translate([lIngredientX+cardsY,0,lIngredientZ*2]) rotate([0,0,90]) color("white") cards();
    //translate([lIngredientX+cardsX,0,lIngredientZ*2]) color("Crimson") rubies();
    translate([lIngredientX,0,lIngredientZ*2]) color("Gold") overflow();
}

if (layer4) {
    translate([0,0,lIngredientZ*3]) color("grey") boards();
}