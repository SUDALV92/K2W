var bullet = instance_create( x, y, oRedS15FinalBurstBullet );
bullet.speed = random_range( MinSpeed, MaxSpeed );
bullet.direction = CurrentDir;
scrRedAttachTrail( bullet, round( TrailCount ) );

var bullet2 = instance_create( x, y, oRedS15FinalBurstBullet );
bullet2.speed = bullet.speed;
bullet2.direction = bullet.direction + 180;
scrRedAttachTrail( bullet2, round( TrailCount ) );

CurrentDir += random_range( DirDelta, DirDelta + 2 );

DirDelta += 0.15;
MinSpeed += 0.20;
MaxSpeed += 0.20;
TrailCount += 0.01;

