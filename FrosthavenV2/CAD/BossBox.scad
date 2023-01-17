// boss box x:39.5 y:96 z:105

bossCompartmentSizes = [[50,72,35],[90,72,13]];
bossCompartmentPositions = [[25.5,10],[5.5,10]];
 
function bossBox() = 
     freeFormBox2( "Boss Box", bossCompartmentPositions, bossCompartmentSizes, 105, 96, 37.5, stack="",cutout_bottom=[t,f],cutout_sides=[f,f,f,f],compLabel = [],positioned_labels=false,lid_tabs=[f,f,f,f],bottom_cutout_pct = 50,label_data=["Bosses"],label_size=17);