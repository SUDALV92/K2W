var hcollision = !place_free( x + hspeed, y );
var vcollision = !place_free( x, y + vspeed );
var collision = !place_free( x + hspeed, y + vspeed );
if( collision ) {
        if( hcollision ) {            
            hspeed = -hspeed;
        }
        if( vcollision ) {            
            vspeed = -vspeed;
        }
        if( !hcollision && !vcollision ) {
            vspeed = -vspeed;
            hspeed = -hspeed;
        }
}
