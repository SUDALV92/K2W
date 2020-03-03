var spike = scrRedS16CreateEdgeInstance( oRedS16BorderSpike );
spike.speed = random_range( 2, 6 );
spike.ScaleDelta = ScaleDelta;
spike.image_angle = spike.direction;

ScaleDelta = max( 0.03, ScaleDelta - 0.001 );
