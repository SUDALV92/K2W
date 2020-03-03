/// scrRedAttachCustomSpawner( ownerId, spawnPeriod, spawnScript, opt_spawnDuration )
var ownerId = argument[0];
var spawnPeriod = argument[1];
var spawnScript = argument[2];
var spawnDuration = -1;
if( argument_count > 3 ) {
    spawnDuration = argument[3];
}

var spawner = noone;
with( ownerId ) {
    spawner = instance_create( x, y, oRedAttachedScriptSpawner );
    spawner.SpawnScript = spawnScript;
    spawner.SpawnPeriod = spawnPeriod;
    spawner.CurrentPeriod = spawnPeriod;
    spawner.OwnerInstance = id;
    spawner.Lifetime = 0;
    spawner.SpawnCount = 0;
    spawner.SpawnDuration = spawnDuration;
    Spawner = spawner;
}
return spawner;
