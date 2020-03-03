if( instance_exists( objPlayer ) ) {
    return objPlayer.y;
} else {
    return random_range( 0, 608 );
}
