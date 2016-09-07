/// scr_init_tile_paths()

pathRight = false;
pathUp = false;
pathLeft = false;
pathDown = false;

if (sprite_index == spr_tile_cross){
    pathRight = true;
    pathUp = true;
    pathLeft = true;
    pathDown = true;
} else 

if (sprite_index == spr_tile_t){
    pathRight = true;
    pathLeft = true;
    pathDown = true;
} else 

if (sprite_index == spr_tile_corner_curve){
    pathRight = true;
    pathDown = true;
} else 

if (sprite_index == spr_tile_dead_end){
    pathLeft = true;
} else 

if (sprite_index == spr_tile_straight){
    pathLeft = true;
    pathRight = true;
}

rb = pathRight;
ub = pathUp;
lb = pathLeft;
db = pathDown;

// Rotate
switch(image_angle){
    case 90:  pathUp = rb; pathLeft = ub; pathDown = lb; pathRight = db; break;
    case 180: pathUp = db; pathLeft = rb; pathDown = ub; pathRight = lb; break;
    case 270: pathUp = lb; pathLeft = db; pathDown = rb; pathRight = ub; break;
}
