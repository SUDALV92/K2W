if( bbox_right <= 0 ) {
    x += room_width + sprite_width;
} else if( bbox_left >= room_width ) {
    x -= room_width + sprite_width;
}
if( bbox_top >= room_height ) {
    y -= room_height + sprite_height;
}
