var circleParams = scrRedCreateCircleAdditionalParams();
circleParams.CurveDir = OwnerInstance.CurveDir;
circleParams.SpawnHueMin = OwnerInstance.SpawnHueMin;
circleParams.SpawnHueMax = OwnerInstance.SpawnHueMax;
scrRedInitializeCircle( x, y, random( 360 ), 8, oRedS3JitterBullet, circleParams );
