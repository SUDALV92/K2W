var relPos = Lifetime / SpawnDuration;
var bulletCount = 10;
var startDir = scrRedDirToPlayerFeet( x, y ) + 360 / ( 2 * bulletCount );
var endDir = startDir + TotalDirDelta;
var currentDir = lerp( startDir, endDir, relPos );
scrRedCreateCircle( x, y, currentDir, bulletCount, oRedS7FanSpike );
