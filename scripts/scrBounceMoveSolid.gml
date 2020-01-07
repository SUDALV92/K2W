var result = false;
var hcollision = !place_free( x + hspeed, y );
var vcollision = !place_free( x, y + vspeed );
var collision = !place_free( x + hspeed, y + vspeed );
if( collision ) {
        if( hcollision ) {            
            hspeed = -hspeed;
            result = true;
        }
        if( vcollision ) {            
            vspeed = -vspeed;
            result = true;
        }
        if( !hcollision && !vcollision ) {
            vspeed = -vspeed;
            hspeed = -hspeed;
            result = true;
        }
}
return result;
