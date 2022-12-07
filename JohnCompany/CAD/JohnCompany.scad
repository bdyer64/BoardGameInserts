include <../../The-Boardgame-Insert-Toolkit/boardgame_insert_toolkit_lib.2.scad>;
include <../../BFD-Insert-Extensions/InsertExtensions.scad>;



g_b_print_lid = true;
g_b_print_box = false; 
g_wall_thickness = 2.0;
g_lid_thickness = 2.0;
g_min_bottom_thickness = 1.0;
insert_font = "Libre Baskerville:style=Regular";

// The tolerance value is extra space put between planes of the lid and box that fit together.
// Increase the tolerance to loosen the fit and decrease it to tighten it.
//
// Note that the tolerance is applied exclusively to the lid.
// So if the lid is too tight or too loose, change this value ( up for looser fit, down for tighter fit ) and 
// you only need to reprint the lid.
// 
// The exception is the stackable box, where the bottom of the box is the lid of the box below,
// in which case the tolerance also affects that box bottom.
//
g_tolerance = 0.15;

// This adjusts the position of the lid detents downward. 
// The larger the value, the bigger the gap between the lid and the box.
g_tolerance_detents_pos = 0.1;
card_sizes = [[90,100]];
card_width = 90;
card_height = 100;

g_isolated_print_box = "Walsh & Co."; 

function factionBox(factionName) = 
 [   factionName,
        [
            [ BOX_SIZE_XYZ,                                     [75, 106, 15] ],
            boxLid([factionName], 10, 90, 12),
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 71, 48, 13] ],
                    [CMP_SHAPE,                             SQUARE],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [ POSITION_XY,                          [ MAX, MAX ] ],
                    [CMP_CUTOUT_BOTTOM_B,                   t],
                    [CMP_CUTOUT_BOTTOM_PCT,                  60]
                ]
            ], 
            [ BOX_COMPONENT,
                [
                    
                    [CMP_NUM_COMPARTMENTS_XY,               [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 71, 53, 13] ],
                    [CMP_SHAPE,                             SQUARE],
                    [CMP_SHAPE_VERTICAL_B,                  t],    
                    [CMP_PADDING_XY,                        [2,2]],
                    [ POSITION_XY,                          [ MAX, 0 ] ],
                    [CMP_CUTOUT_BOTTOM_B,                   f]
                ]
            ], 
        ]
 ];

 
 data = [
    factionBox("Paxton & Co."),
    factionBox("Hastings & Co."),
    factionBox("Sykes & Co."),
    factionBox("Larkins & Co."),
    factionBox("Benyon & Co."),
    factionBox("Walsh & Co."),
 ];
 

 
MakeAll();
 
 



