///scrPlayMusic(soundid,loops,[volume = 1])
///plays a song if it's not already playing
///argument0 - song to play (-1 plays nothing and stops anything currently playing)
///argument1 - whether or not to loop the song
///argument2 - volume for the song

var songID = argument[0];
var loopSong = argument[1];
var volume = 1;
if(argument_count > 2)
 volume = argument[2];

if (!global.muteMusic)  //check if music is supposed to be muted
{
    if (global.currentMusicID != songID)  //checks if the song to play is already playing
    {
        global.currentMusicID = songID;
        
        audio_stop_sound(global.currentMusic);
        
        if (songID != -1)
        {
            global.currentMusic = audio_play_sound(global.currentMusicID,1,loopSong);
            audio_sound_gain(global.currentMusic,volume,0);
        }
    }
}
