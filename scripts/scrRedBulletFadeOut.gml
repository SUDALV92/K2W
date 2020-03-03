/// scrRedBulletFadeOut( targetId, opt_fadeDelta )
var targetId = argument[0];

var fadeDelta;
if( argument_count >= 2 ) {
    fadeDelta = argument[1];
} else {
    fadeDelta = 0.05;
}

var newCommand = instance_create( 0, 0, oRedInstanceFadeCommand );
newCommand.TargetId = targetId;
newCommand.AlphaDelta = fadeDelta;
newCommand.CurrentAlpha = 1;

