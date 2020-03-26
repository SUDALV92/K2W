///initializes all global variables needed for the game

scrSetGlobalOptions();       //initialize global game options

global.death = 0;
global.time = 0;
global.timeMicro = 0;
global.saveRoom = "";
global.savePlayerX = 0;
global.savePlayerY = 0;
global.savePlayerType = 0; //0 = objPlayer, 1 = objB6Gradius, -1 = nothing
global.grav = 1;
global.saveGrav = 1;
global.TitleCard = 1;
global.Language = 0;
global.CautionM = 1;

global.worldSpeed = 50;
global.phaseSave = false;
global.solgrynSkip = false;
global.extraSkip = false;
global.extraMusicLoop = 0;
global.skin = 0; //default player skin, 1 = dotkid


for(var i = 0; i < global.achievementTotal; i++)
{
 global.achievement[i] = 0;
}

for(var i = 0; i < 11; i++)
{
 global.bossRush[i] = 0;
 global.bossRushRerun[i] = 0; 
 global.crashPortal[i] = 0;
 global.caution[i] = 0;
 global.checkpoint[i] = 0;
 global.tempTrigger[i] = 0;
}

for (var i = global.secretItemTotal-1; i >= 0; i--)
{
    global.secretItem[i] = 0;
    global.saveSecretItem[i] = 0;
    global.tempItem[i] = 0;
}

//useless for K2W
global.gameClear = 0;
global.extra = 0;
global.saveGameClear = 0;
global.saveExtraClear = 0;

//actuals
global.portalAvailable = 0;
global.savePortalAvailable = 0;
global.finalBossFaded = 0;
global.selectedStage = 0;
global.autoFire = 1;
global.saveAutoFire = 1;
global.extraClear = 0;
global.titleViewed = false;
global.partSys = -1;

for(var i = global.stagesTotal; i >= 0; i--)
{
 if(i <= 68)
 {
  global.stageUnlocked[i] = true;
  global.saveStageUnlocked[i] = true;
 }
 else
 {
  global.stageUnlocked[i] = false;
  global.saveStageUnlocked[i] = false;
 }
 global.stageName[i] = "???";
 global.stageRoom[i] = 0;
}

for(var i = 0; i < 100; i++)
{
 global.energy[i] = false;
 global.saveEnergy[i] = false;
}

for(var i = 0; i < 4; i++)
{
 global.extraBossCleared[i] = 0;
 global.saveExtraBossCleared[i] = 0;
}

scrInitializeStages();
sfxCount = 10;
for(var temp = 0; temp < sfxCount; temp++)
{
 global.sfxDelay[temp] = 0;
}

for(var i = 0; i < 16; i++)
{
    global.bestRun[i] = -1;         //best times for segments (14 = whole game);
    global.lastRunStart[i] = -1;    //last times for segments, segment start time (14 = whole game);
    global.lastRunEnd[i] = -1;      //last times for segments, segment end time (14 = whole game);
}

global.timerEnabled = true;
global.currentSegmentIndex = -1; //current segment index for speedrun timer
global.currentSegmentID = 0;
global.globalSegmentID = 0;
global.saveCurrentSegmentID = 0;
global.saveGlobalSegmentID = 0;

global.gameStarted = false;     //determines whether the game is in progress (enables saving, restarting, etc.)
global.noPause = false;         //sets whether or not to allow pausing (useful for bosses to prevent desync)
global.noShoot = false;
global.noReset = false;
global.autosave = false;        //keeps track of whether or not to autosave the next time the player is created
global.noDeath = false;         //keeps track of whether to give the player god mode
global.infJump = false;         //keeps track of whether to give the player infinite jump
global.vvvvvv = false;
global.noDJump = false;

global.gamePaused = false;      //keeps track of whether the game is paused or not
global.pauseSurf = -1;       //stores the screen surface when the game is paused
global.pauseDelay = 0;      //sets pause delay so that the player can't quickly pause buffer

global.currentMusicID = -1;  //keeps track of what song the current music is
global.currentMusic = -1;    //keeps track of current main music instance
global.deathSound = -1;     //keeps track of death sound when the player dies
global.gameOverMusic = -1;   //keeps track of game over music instance
global.musicFading = false;     //keeps track of whether the music is being currently faded out
global.currentGain = 0;     //keeps track of current track gain when a song is being faded out
global.curDanmaku = -1;

global.menuSelectPrev[0] = 0;     //keeps track of the previously selected option when navigating away from the difficulty menu
global.menuSelectPrev[1] = 0;     //keeps track of the previously selected option when navigating away from the options menu

//get the default window size
global.windowWidth = surface_get_width(application_surface);
global.windowHeight = surface_get_height(application_surface);

//keeps track of previous window position/size when display_reset is used for setting vsync
global.windowXPrev = 0;
global.windowYPrev = 0;
global.windowWidthPrev = 0;
global.windowHeightPrev = 0;

display_set_gui_size(surface_get_width(application_surface),surface_get_height(application_surface));  //set the correct gui size for the Draw GUI event

global.controllerMode = false;  //keeps track of whether to use keyboard or controller
global.controllerDelay = -1;    //handles delay between switching between keyboard/controller so that the player can't use both at the same time

randomize();    //make sure the game starts with a random seed for RNG

global.guyBlocks = 0;
for (var i = 0; i < 20; i++)
{
    global.GeezerBlockDestroyed[i] = false;
}
global.geezerfonts =font_add_sprite(sprGeezerFont,48,0,6);
global.lastfonts = font_add_sprite(sprLastTimer,48,0,1);
global.exTransitionSurface = -1;
