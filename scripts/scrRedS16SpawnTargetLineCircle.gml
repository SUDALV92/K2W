var sectorCount = round( SectorCount );
var sectorDirDelta = 360 / ( 2 * sectorCount );
var currentDir = StartDir;
for( var i = 0; i < sectorCount; i++ ) {
    scrRedS16SpawnTargetLine( currentDir );
    currentDir += 2 * sectorDirDelta;
}
StartDir += 30;
SectorCount += 0.5;
