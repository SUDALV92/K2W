/// scrRedAttachTrail( targetId, trailImageCount, opt_trailSprite )
var targetId = argument[0];
var imageCount = argument[1];
var trailSprite;
if( argument_count > 2 ) {
    trailSprite = argument[2];
} else if( instance_exists( targetId ) ) {
    trailSprite = targetId.sprite_index;
}

var trail;
with( targetId ) {
    trail = instance_create( 0, 0, oRedBulletTrail );
    trail.Owner = id;
    trail.FadeDelta = 0;
    trail.PrevPositionsIndex = 0;
    trail.TrailCount = imageCount;
    trail.TailScale = 1 / ( imageCount + 1 );
    trail.TailAlpha = 1;
    trail.sprite_index = trailSprite;
    trail.image_index = image_index;
    trail.image_xscale = image_xscale;
    trail.image_yscale = image_yscale;
    trail.image_speed = 0;
    trail.depth = depth + 0.1;
    for( var i = 0; i < imageCount; i++ ) {
        trail.PrevPositionsX[i] = x;
        trail.PrevPositionsY[i] = y;
        trail.PrevImageAngles[i] = image_angle;
    }
    Trail = trail;
}
return trail;
