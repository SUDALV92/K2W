if( x < 32 || x > 800 - 48 ) {
    instance_destroy();
} else {
    instance_create( x, y, oRedS6WaveSpike );
}

