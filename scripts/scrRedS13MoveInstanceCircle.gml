var targetId = argument0;
var circleX = argument1;
var circleY = argument2;
var rotSpeed = argument3;

with( targetId ) {
    var spinner = instance_create( circleX, circleY, oRedS13CircleController );
    spinner.TargetId = id;
    spinner.RotSpeed = rotSpeed;
    spinner.Acceleration = 0.1;
    spinner.Radius = point_distance( circleX, circleY, x, y );
    spinner.CurrentAngle = point_direction( circleX, circleY, x, y );
}
