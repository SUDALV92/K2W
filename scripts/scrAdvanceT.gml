var musId = argument0;

// Correct the game time if it desyncs from real time.
if( room_speed < 100 ) {
    var deltaT = realT - t;
    if( abs( deltaT ) > 5 ) {
        // A big lag spike, adjust music to game time.
       audio_sound_set_track_position( musId, t / 50 );
       //show_debug_message( "Music sync" );
       realT = t;   
    } else if( deltaT > 0 ) {
        //show_debug_message( "Bad sync" );
        room_speed = 53;
    } else {
        // All is good.
        room_speed = 50;
    }
}

if( t % 500 == 0 ) {
    //show_debug_message( "Regular update: " + string( t ) + "/" + string( realT ) );
}

realT += 50 * delta_time / 1000000; 
t++;
