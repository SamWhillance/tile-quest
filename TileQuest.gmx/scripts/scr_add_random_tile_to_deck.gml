/// scr_add_random_tile_to_deck(deckObj)

var t = instance_create(-100, -100, obj_tile);

t.sprite_index = choose(
    spr_tile_corner_curve,
    spr_tile_cross,
    spr_tile_t,
    spr_tile_straight,
    spr_tile_dead_end
);

t.image_angle = choose(0, 1, 2, 3)*90;

ds_list_add(argument0.tileList, t);

scr_update_deck_top_second(argument0);

with(t)scr_init_tile_paths();
