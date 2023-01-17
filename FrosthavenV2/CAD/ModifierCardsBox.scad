// mod box x:30.5 y:93 z:60


mcw = card_sizes[2][0];
mch = card_sizes[2][1];
modCompartmentSizes = [[mch,mcw,26.5]];
modCompartmentPositions = [[9,3.5]];
 
function modifierCardsBox() = 
     freeFormBox2( "Modifier Cards", modCompartmentPositions, modCompartmentSizes, 93, 60, 28.5, stack="",cutout_bottom=[t],cutout_sides=[f,f,f,f],compLabel = [],positioned_labels=false,lid_tabs=[f,f,f,f],bottom_cutout_pct = 50,label_data=["Modifier","Cards"],label_size=10);