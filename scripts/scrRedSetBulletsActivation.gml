var targetId = argument0;
var isActive = argument1;

with( oRedInstanceActivationCommand ) {
    if( TargetId == targetId ) {
        IsActive = isActive;
        return 0;
    }
}

var newCommand = instance_create( 0, 0, oRedInstanceActivationCommand );
newCommand.TargetId = targetId;
newCommand.IsActive = isActive;
