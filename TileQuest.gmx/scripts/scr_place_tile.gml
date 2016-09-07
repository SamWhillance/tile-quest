/// scr_place_tile(x, y, sprite, angle)

var newTile = instance_create(scr_gridify(argument0), scr_gridify(argument1), obj_tile);
newTile.sprite_index = argument2;
newTile.image_angle = argument3;
with(newTile)scr_init_tile_paths();

// Update all neighbours
with(obj_tile)scr_tile_update_neighbours();

return newTile;
