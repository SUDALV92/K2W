var path = argument0;
var pathSpeed = argument1;

var spawner = instance_create( 0, 0, oRedS16PathSpawner );
with( spawner ) {
    path_start( path, pathSpeed, path_action_stop, true );
}
