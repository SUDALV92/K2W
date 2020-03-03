
var bullet1 = instance_create( x, y, oRedS15SpiralBullet );
bullet1.direction = CurrentDir;
bullet1.speed = 6;

var bullet2 = instance_create( x, y, oRedS15SpiralBullet );
bullet2.direction = CurrentDir + 90;
bullet2.speed = 6;

var bullet3 = instance_create( x, y, oRedS15SpiralBullet );
bullet3.direction = CurrentDir + 180;
bullet3.speed = 6;

var bullet4 = instance_create( x, y, oRedS15SpiralBullet );
bullet4.direction = CurrentDir + 270;
bullet4.speed = 6;

CurrentDir += 24;
