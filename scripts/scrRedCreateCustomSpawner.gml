/// scrRedCreateCustomSpawner( spawnX, spawnY, spawnPeriod, spawnScript, opt_spawnDuration )
var spawnX = argument[0];
var spawnY = argument[1];
var spawnPeriod = argument[2];
var spawnScript = argument[3];
var spawnDuration = -1;
if( argument_count > 4 ) {
    spawnDuration = argument[4];
}

var spawner;
spawner = instance_create( spawnX, spawnY, oRedScriptSpawner );
spawner.SpawnScript = spawnScript;
spawner.SpawnPeriod = spawnPeriod;
spawner.CurrentPeriod = spawnPeriod;
spawner.Lifetime = 0;
spawner.SpawnCount = 0;
spawner.SpawnDuration = spawnDuration;

return spawner;
