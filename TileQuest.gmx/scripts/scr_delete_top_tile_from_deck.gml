/// scr_delete_top_tile_from_deck(deckObj)

ds_list_delete(argument0.tileList, ds_list_size(argument0.tileList)-1);

with(argument0.top)instance_destroy();

scr_update_deck_top_second(argument0);
