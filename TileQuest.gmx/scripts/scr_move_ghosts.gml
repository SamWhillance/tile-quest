/// scr_move_ghosts()

with(obj_ghost){

    tileOn = instance_place(x, y, obj_tile);
    tileRight = instance_place(x+64, y, obj_tile);
    tileAbove = instance_place(x, y-64, obj_tile);
    tileLeft = instance_place(x-64, y, obj_tile);
    tileBelow = instance_place(x, y+64, obj_tile);

    var moved = false;
    
    while(!moved){
        var randomDir = choose(0, 1, 2, 3);
        
        switch(randomDir){
            case 0: 
                if (tileRight != noone){
                    if (tileRight.pathLeft && tileOn.pathRight){
                        x = tileRight.x;
                        y = tileRight.y;
                        moved = true;
                    }
                }
                break;
        
            case 1: 
                if (tileAbove != noone){
                    if (tileAbove.pathDown && tileOn.pathUp){
                        x = tileAbove.x;
                        y = tileAbove.y;
                        moved = true;
                    }
                }
                break;
        
            case 2: 
                if (tileLeft != noone){
                    if (tileLeft.pathRight && tileOn.pathLeft){
                        x = tileLeft.x;
                        y = tileLeft.y;
                        moved = true;
                    }
                }
                break;
        
            case 3: 
                if (tileBelow != noone){
                    if (tileBelow.pathUp && tileOn.pathDown){
                        x = tileBelow.x;
                        y = tileBelow.y;
                        moved = true;
                    }
                }
                break;
        }
    }
    
    show_debug_message("Ghost moved");
}
