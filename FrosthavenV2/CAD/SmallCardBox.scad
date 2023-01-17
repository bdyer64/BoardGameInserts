// small cards x:152 y:178.5 z:53
// Lid labels need adjusted

scw = card_sizes[2][0];
sch = card_sizes[2][1] + 2;
smallCardsCompartmentSizes =[[sch,87,scw],[sch,91,scw],[sch,50,scw],[sch,33,scw],[sch,35.5,scw],[sch,38.5,scw],[sch,9,scw]];
smallCardsCompartmentPositions = [[0,0],[sch+1.5,0],[0,88],[sch+1.5,92],[0,177-40-1+3],[sch+1.5,163.5-39.4-1+3],[sch+1.5,230-39.5-27.5-2+4.5]];

compartmentLabelsSmallCraft= compartmentLabel(label=[["Craftable"]],size=10,rotation = 0,position=[0,8],depth=0.5);
compartmentLabelsSmallItems = compartmentLabel(label=[["Items"]],size=10,rotation = 0,position=[0,-8],depth=0.5);
compartmentLabelsSmallPurchase  = compartmentLabel(label=[["Purchase"]],size=10,rotation = 0,position=[0,8],depth=0.5);
compartmentLabelsSmallPotions = compartmentLabel(label=[["Potions"]],size=10,rotation = 0,position=[0,0],depth=0.5);
compartmentLabelsSmallRandom  = compartmentLabel(label=[["Random"]],size=10,rotation = 0,position=[0,8],depth=0.5);
compartmentLabelsSmallTown  = compartmentLabel(label=[["Town"]],size=10,rotation = 0,position=[0,8],depth=0.5);
compartmentLabelsSmallGuard  = compartmentLabel(label=[["Guard"]],size=10,rotation = 0,position=[0,-8],depth=0.5);
compartmentLabelsSmallChallenge  = compartmentLabel(label=[["Challenge"]],size=10,rotation = 0,position=[0,8],depth=0.5);
compartmentLabelsSmallCards  = compartmentLabel(label=[["Cards"]],size=10,rotation = 0,position=[0,-8],depth=0.5);
compartmentLabelsSmallBlank  = compartmentLabel(label=[[""]],size=10,rotation = 0,position=[0,8],depth=0.5);
compartmentLabelsSmallModifier  = compartmentLabel(label=[["Modifiers"]],size=8,rotation = 0,position=[0,-6],depth=0.5);
compartmentLabelsSmallTemporary  = compartmentLabel(label=[["Conditional"]],size=9,rotation = 0,position=[0,6],depth=0.5);

compartmentSmallCardsLabels=[   [compartmentLabelsSmallCraft,compartmentLabelsSmallItems],
                                [compartmentLabelsSmallPurchase,compartmentLabelsSmallItems],
                                [compartmentLabelsSmallPotions],
                                [compartmentLabelsSmallRandom,compartmentLabelsSmallItems],
                                [compartmentLabelsSmallChallenge,compartmentLabelsSmallCards],
                                [compartmentLabelsSmallTown,compartmentLabelsSmallGuard],
                                [compartmentLabelsSmallBlank]];
smallCardLidLabels = [[[-38,36.75],[-38,50.75],[38,34.75],[38,48.75],[-38,-25.75],[38,-28.25],[38,-14.25],[-38,-75.5],[-38,-63.5],[38,-64],[38,-52]],["Craftable","Items","Purchasable","Items","Potions","Random","Items","Challenge","Cards","Town","Guard"]];

function smallCardBox() = 
     freeFormBox( "Small Cards", smallCardsCompartmentPositions, smallCardsCompartmentSizes, 152, 178.5 , scw+2, stack="",cutout_bottom=f,cutout_sides=[t,t,f,f],compLabel = compartmentSmallCardsLabels,positioned_labels=true,label_data=smallCardLidLabels,label_size=8,label_rotation=180);
     
 // Print 4
function smallUnavailableMarker() = marker("Small Unavailable Marker","Unavailable",30,card = 2,sideways = true);

// Print 1
function smallCompletedMarker() = marker("Small Completed Marker","Completed",30,card = 2,sideways = true);