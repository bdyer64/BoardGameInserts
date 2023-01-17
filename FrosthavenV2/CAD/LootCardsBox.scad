// loot box x:22 y:162 z:60


lcw = card_sizes[2][0];
lch = card_sizes[2][1];
lootCompartmentSizes = [[lch,lcw,17],[lch,lcw,17]];
lootCompartmentPositions = [[7,3],[lch+2+7,3]];
 
function lootCardsBox() = 
     freeFormBox2( "Loot Cards", lootCompartmentPositions, lootCompartmentSizes, 162, 60, 18, stack="",cutout_bottom=[t,t],cutout_sides=[f,f,f,f],compLabel = [],positioned_labels=false,lid_tabs=[f,f,f,f],bottom_cutout_pct = 50,label_data=["Loot Cards"],label_size=17);