// large card box x:207 y:96 z:105

// Large Card Box stuff

cw = card_sizes[1][0];
ch = card_sizes[1][1];
largeCardsCompartmentSizes =[[cw,58,ch],[cw,29,ch],[cw,25,ch],[cw,25,ch],[cw,53.5,ch],[cw,44.5,ch],[cw,47,ch],[cw,10,ch],];
largeCardsCompartmentPositions = [[0,0],[0,59],[136,0],[136,26],[68,0],[68,54.5],[136,52],[0,89]];

compartmentLabelsWinter = compartmentLabel(label=[["Winter"]],size=10,rotation = 0,position=[0,8],depth=0.5);
compartmentLabelsOutposts = compartmentLabel(label=[["Outpost"]],size=10,rotation = 0,position=[0,-8],depth=0.5);
compartmentLabelsBuildings = compartmentLabel(label=[["Buildings"]],size=10,rotation = 0,position=[0,0],depth=0.5);
compartmentLabelsRandomRoom = compartmentLabel(label=[["Random Rooms"]],size=6,rotation = 0,position=[0,0],depth=0.5);
compartmentLabelsRandomSetup = compartmentLabel(label=[["Random Setups"]],size=6,rotation = 0,position=[0,0],depth=0.5);
compartmentLabelsQuests = compartmentLabel(label=[["Quests"]],size=5,rotation = 0,position=[0,0],depth=0.5);
compartmentLabelsSummer = compartmentLabel(label=[["Summer"]],size=10,rotation = 0,position=[0,8],depth=0.5);
compartmentLabelsRoad = compartmentLabel(label=[["Road"]],size=10,rotation = 0,position=[0,-8],depth=0.5);

compartmentLargeCardsLabels=[[compartmentLabelsWinter,compartmentLabelsOutposts],[compartmentLabelsBuildings],[compartmentLabelsRandomRoom],[compartmentLabelsRandomSetup],[compartmentLabelsSummer,compartmentLabelsOutposts],[compartmentLabelsWinter,compartmentLabelsRoad],[compartmentLabelsSummer,compartmentLabelsRoad],[compartmentLabelsQuests]];
largeCardLidLabels = [[[-69.5,8.5],[-69.5,20.5],[-69.5,32.5],[-69.5,-24],[-69.5,-42.5],[0,10.75],[0,22.75],[0,34.75],[0,-34.25],[0,-20.25],[69.5,35],[69.5,11],[69.5,-33],[69.5,-21]],["Winter","Outpost","Events","Buildings","Quests","Summer","Outpost","Events","Winter","Road Events","Rand Rooms","Rand Setups","Summer","Road Events"]];

function largeCardBox() = 
     freeFormBox( "Large Cards", largeCardsCompartmentPositions, largeCardsCompartmentSizes, 207, 105 , 96, stack="",cutout_bottom=f,cutout_sides=[t,t,f,f],compLabel = compartmentLargeCardsLabels,positioned_labels=true,label_data=largeCardLidLabels,label_size=7,label_rotation=180);
     
// Print 5
function largeUnavailableMarker() = marker("Large Unavailable Marker","Unavailable",30,card = 1,sideways = false);

// Print 4
function largeRemovedMarker() = marker("Large Removed Marker","Removed",30,card = 1,sideways = false);