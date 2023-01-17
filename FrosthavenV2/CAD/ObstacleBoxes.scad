// obstacle box x:143 y:162 z:60

// Obstacle box 1 stuff
 
 obstacle1CompartmentSizes = [[38.75,34,13],[38.75,34,13],[38.75,34,13],[38.75,69,13],[38.75,34,13],[38.75,34,13],[38.75,34,13],[38.75,69,13],[38.75,69,13],[38.75,69,13],[38.75,69,13]];
 obstacle1CompartmentPositions = [[0,0],[39.75,0],[79.5,0],[119.25,0],[0,35],[39.75,35],[79.5,35],[0,70],[39.75,70],[79.5,70],[119.25,70]];
 function obstacleBox1() = 
     freeFormBox( "Obstacle Box 1", obstacle1CompartmentPositions, obstacle1CompartmentSizes, 162, 143, 15, stack="",cutout_bottom=t,cutout_sides=[f,f,f,f],compLabel = [],positioned_labels=false,lid_inset = true,lid_tabs=[f,f,f,f],bottom_cutout_pct = 60);
     
 // Obstacle box 2 stuff
 
 obstacle2CompartmentSizes = [[30.8,69,13],[30.8,69,13],[30.8,69,13],[30.8,69,13],[30.8,69,13],[30.8,69,13],[30.8,69,13],[30.8,69,13],[30.8,69,13],[30.8,69,13]];
 obstacle2CompartmentPositions = [[0,0],[31.8,0],[63.6,0],[95.4,0],[127.2,0],[0,70],[31.8,70],[63.6,70],[95.4,70],[127.2,70]];
 function obstacleBox2() = 
     freeFormBox2( "Obstacle Box 2", obstacle2CompartmentPositions, obstacle2CompartmentSizes, 162, 143, 15, stack="",cutout_bottom=[t,t,t,t,f,t,t,t,t,t],cutout_sides=[f,f,f,f],compLabel = [],positioned_labels=false,lid_inset = true,stackable=true,lid_tabs=[f,f,f,f],bottom_cutout_pct = 60);
     
 // Obstacle box 3 stuff
 
 obstacle3CompartmentSizes = [[21,31,13],[21,53,13],[21,53,13],[34,69,13],[34,34,13],[34,34,13],[69,69,13],[34,34,13],[34,34,13],[34,34,13],[34,34,13],[31,38,13],[31,39.5,13],[31,59.5,13]];
 obstacle3CompartmentPositions = [[0,0],[0,32],[0,86],[22,0],[22,70],[22,105],[57,0],[57,70],[57,105],[92,70],[92,105],[127,0],[127,39],[127,79.5]];
 function obstacleBox3() = 
     freeFormBox2( "Obstacle Box 3", obstacle3CompartmentPositions, obstacle3CompartmentSizes, 162, 143, 15, stack="",cutout_bottom=[t,f,f,t,t,t,t,t,t,t,t,t,f,f],cutout_sides=[f,f,f,f],compLabel = [],positioned_labels=false,lid_inset = true,stackable=true,lid_tabs=[f,f,f,f],bottom_cutout_pct = 60);
     
// Obstacle box 4 stuff
 
 obstacle4CompartmentSizes = [[34,34,11],[34,34,11],[34,69,11],[27,34,11],[27,34,11],[27,34,11],[27,34,11],[24.5,34,11],[24.5,34,11],[24.5,69,11],[35,139,11],[33.5,34,11],[33.5,34,11],[33.5,34,11],[33.5,34,11]];
 obstacle4CompartmentPositions = [[0,0],[0,35],[0,70],[35,0],[35,35],[35,70],[35,105],[63,0],[63,35],[63,70],[88.5,0],[124.5,0],[124.5,35],[124.5,70],[124.5,105]];
 function obstacleBox4() = 
     freeFormBox( "Obstacle Box 4", obstacle4CompartmentPositions, obstacle4CompartmentSizes, 162, 143, 13, stack="",cutout_bottom=t,cutout_sides=[f,f,f,f],compLabel = [],positioned_labels=false,lid_inset = false,stackable=true,lid_tabs=[f,f,f,f],label_data=["Obstacles"],label_size=16,bottom_cutout_pct = 60);