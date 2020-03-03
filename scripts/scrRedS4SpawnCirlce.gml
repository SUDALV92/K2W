var rotationDuration = argument0;

var angleDelta = oRedS4SourceBullet.AngleDelta;
oRedS4SourceBullet.AngleDelta = -angleDelta;
var angleChange = random_range( 90, 180 );
scrRedRotateInstance( oRedS4SourceBullet, oRedS4SourceBullet.image_angle + angleDelta * angleChange, rotationDuration, scrRedTweenSineInOut );
scrRedS4CreateSlicedCircle( oRedS4SourceBullet.x, oRedS4SourceBullet.y, angleDelta );
