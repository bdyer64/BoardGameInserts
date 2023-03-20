// player boxes x:152 y:120 z:30

playerBoxCompartmentSizes = [[75,92,29],[75,23,17],[72,55,29],[72,60,29],[148,73,9.5],[148,96,3.5],[148,116,1.5]];
 playerBoxCompartmentPositions = [[0,0],[0,93],[76,0],[76,56],[0,0],[0,0],[0,0]];
 function playerBox(player) = 
     freeFormBox2( player, playerBoxCompartmentPositions, playerBoxCompartmentSizes, 152, 120, 28, stack="",cutout_bottom=[t,f,t],cutout_sides=[f,f,f,f],compLabel = [],positioned_labels=false,lid_inset = false,stackable=false,lid_tabs=[f,f,f,f],label_data=[player],label_size=20);