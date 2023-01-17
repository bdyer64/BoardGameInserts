// stats box x:110 y:106.5 z:53


mscw = card_sizes[2][0];
msch = card_sizes[2][1];
statsCompartmentSizes = [[lcw,lch,49],[lcw,lch,49],[106,102.5,49-12]];
statsCompartmentPositions = [[3,15.75],[lcw+2+3,15.75],[0,0]];
 
function monsterStatsBox() = 
     freeFormBox2( "Monster Stats", statsCompartmentPositions, statsCompartmentSizes, 110, 106.5, 51, stack="",cutout_bottom=[t,t],cutout_sides=[f,f,t,t],compLabel = [],positioned_labels=false,lid_tabs=[f,f,f,f],bottom_cutout_pct = 50,label_data=["Monster","Stat","Cards"],label_size=17,side_cutout_height_pct=55);