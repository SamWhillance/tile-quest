/// scr_tile_update_neighbours()

tileRight = instance_place(x+64, y, obj_tile);
tileAbove = instance_place(x, y-64, obj_tile);
tileLeft = instance_place(x-64, y, obj_tile);
tileBelow = instance_place(x, y+64, obj_tile);
