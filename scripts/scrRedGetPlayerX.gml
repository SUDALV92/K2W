if( instance_exists( objPlayer ) ) {
    return objPlayer.x;
} else {
    return random_range( 0, 800 );
}

