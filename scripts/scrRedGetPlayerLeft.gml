if( instance_exists( objPlayer ) ) {
    return objPlayer.bbox_left;
} else {
    return random_range( 0, 800 );
}

