// battle box x:81.5 y:162 z:14


bcw = card_sizes[2][0]+1;
bch = card_sizes[2][1];
battleCompartmentSizes = [[lcw,lch,11],[lcw,lch,11],[lcw,lch,11]];
battleCompartmentPositions = [[2,3],[lcw+2+2,3],[(lcw*2)+4+2,3]];
 
function battleCardsBox() = 
     freeFormBox2( "Battle Cards", battleCompartmentPositions, battleCompartmentSizes, 162, 81.5, 12, stack="",cutout_bottom=[t,t,t],cutout_sides=[f,f,f,f],compLabel = [],positioned_labels=false,lid_tabs=[f,f,f,f],bottom_cutout_pct = 50,label_data=["Battle Goal","Cards"],label_size=17);