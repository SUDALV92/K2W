///sets configurable global options

global.gameVersion = "v2.0";

global.roomCaptionDef = "I Wanna Kill The Kamilia 2 Warped";  //sets default window caption (only works with the Professional version of Studio)
global.roomCaptionLast = global.roomCaptionDef;
global.godMode = false;
window_set_caption(global.roomCaptionDef);

var mess = logn(7,2019);
global.md5StrAdd = "Waaaaaaaaarped"+string(mess);  //sets what to add to the end of md5 input string to make the save harder to mess with, can be changed to anything, should be set to something unique and hard to predict (like setting a password)

global.startRoom = rStage0;    //sets which room to begin with

global.menuMode = 1;            //sets whether to use a warp room or a menu for selecting the game's difficulty (0 = warp room, 1 = menu)
global.menuSound = global.sndJump;     //sets what sound to use for navigating the main menu
global.deathMusicMode = 2;      //sets whether or not to play death music when the player dies (0 = no death music, 1 = instantly pause current music, 2 = fade out current music)
global.adAlign = false;             //sets whether or not to enable A/D align
global.timeWhenDead = true;        //sets whether or not to count the in-game timer when the player is dead
global.edgeDeath = false;           //sets whether to kill the player when he leaves the boundaries of the room
global.pauseDelayLength = 40;   //sets the delay in frames in which the player can pause/unpause the game (can be set to 0 to disable pause delay)
global.delayBow = false;            //sets whether to delay the player bow's movement by a frame or not (most engines have the bow lagging behind the player by a frame, so set this to "true" to make the bow look like it does in other engines)
global.directionalTapFix = true;    //sets whether to change the behavior of tapping left/right for less than 1 frame (by default the player does not move when this happens, enabling this always moves the player for 1 frame when left/right is tapped)
global.playerAnimationFix = true;  //sets whether to fix the weird player animation inconsistencies when moving around

global.secretItemTotal = 15;     //sets how many secret items for the game to save/load
global.achievementTotal = 35;
global.stagesTotal = 100;
global.autosaveSecretItems = false; //sets whether to save secret items immediately when you grab them or if you have to hit a save

global.controllerEnabled = true;    //sets whether controllers are supported
global.controllerDelayLength = 5;   //sets the delay in frames in which the player can switch between keyboard/controller (can be set to 0 to disable delay)

global.extraSaveProtection = false; //sets whether to use the ds_map_secure functions for saving/loading (improves save security and prevents transferring between PCs)
