/// scr_tile_is_valid_placement(x, y, tile)

var isValidPlacement = true;
var numberOfAdjacentTiles = 0;

var xx = argument0;
var yy = argument1;
var tile = argument2;

tileRight = instance_place(xx+64, yy, obj_tile);
tileAbove = instance_place(xx, yy-64, obj_tile);
tileLeft = instance_place(xx-64, yy, obj_tile);
tileBelow = instance_place(xx, yy+64, obj_tile);

if (tileRight != noone){
    numberOfAdjacentTiles++;
    if (tile.pathRight && !tileRight.pathLeft){
        isValidPlacement = false;
    } else if (!tile.pathRight && tileRight.pathLeft){
        isValidPlacement = false;
    }
}

if (tileAbove != noone){
    numberOfAdjacentTiles++;
    if (tile.pathUp && !tileAbove.pathDown){
        isValidPlacement = false;
    } else if (!tile.pathUp && tileAbove.pathDown){
        isValidPlacement = false;
    }
}

if (tileLeft != noone){
    numberOfAdjacentTiles++;
    if (tile.pathLeft && !tileLeft.pathRight){
        isValidPlacement = false;
    } else if (!tile.pathLeft && tileLeft.pathRight){
        isValidPlacement = false;
    }
}

if (tileBelow != noone){
    numberOfAdjacentTiles++;
    if (tile.pathDown && !tileBelow.pathUp){
        isValidPlacement = false;
    } else if (!tile.pathDown && tileBelow.pathUp){
        isValidPlacement = false;
    }
}

if (numberOfAdjacentTiles == 0)isValidPlacement = false;

return isValidPlacement;
