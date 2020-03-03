if( instance_exists( objPlayer ) ) {
    return objPlayer.bbox_right;
} else {
    return random_range( 0, 800 );
}

