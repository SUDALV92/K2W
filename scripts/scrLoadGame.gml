///scrLoadGame(loadfile)
///loads the game
///argument0 - sets whether or not to read the save file when loading the game

var loadFile = argument0;

//only load save data from the save file if the script is currently set to (we should only need to load these on first load because the game stores them afterwards)
if (loadFile)
{
    var timeMap = ds_map_secure_load("Data\timedata");
    var saveValid = true;   //keeps track of whether or not the save being loaded is valid
    
    if (timeMap != -1)  //check if the save map loaded correctly
    {
        for (var i = 0; i < 16; i++)
        {
            global.bestRun[i] = ds_map_find_value(timeMap,"bestRun["+string(i)+"]");
            global.lastRunStart[i] = ds_map_find_value(timeMap,"lastRunStart["+string(i)+"]");
            global.lastRunEnd[i] = ds_map_find_value(timeMap,"lastRunEnd["+string(i)+"]");
        }
        global.currentSegmentIndex = ds_map_find_value(timeMap,"currentSegmentIndex");
        global.saveCurrentSegmentID = ds_map_find_value(timeMap,"currentSegmentID");
        if(global.currentSegmentID != 0 && global.currentSegmentID != global.saveCurrentSegmentID)
        {
         global.currentSegmentIndex = -1;
         global.currentSegmentID = 0;
        }
        else
        {
         global.currentSegmentID = global.saveCurrentSegmentID;
        }
        global.saveGlobalSegmentID = ds_map_find_value(timeMap, "globalSegmentID");
        if(global.globalSegmentID != 0 && global.globalSegmentID != global.saveGlobalSegmentID)
        {
         global.lastRunStart[14] = -1;
        }
        else
        {
         global.globalSegmentID = global.saveGlobalSegmentID;
        }
        //load md5 string from the save map
        var mapMd5 = ds_map_find_value(timeMap,"mapMd5");
        
        //check if md5 is not a string in case the save was messed with or got corrupted
        if (!is_string(mapMd5))
            mapMd5 = "";   //make it a string for the md5 comparison
        
        //generate md5 string to compare with
        ds_map_delete(timeMap,"mapMd5");
        var genMd5 = md5_string_unicode(json_encode(timeMap)+global.md5StrAdd);
        
        if (mapMd5 != genMd5)   //check if md5 hash is invalid
            saveValid = false;
        
        //destroy the map
        ds_map_destroy(timeMap);
    }
    if (!saveValid) //check if the save is invalid
    {
        //save is invalid, restart the game
        
        show_message("Save invalid!");
        
        scrRestartGame();
        
        exit;
    }

    //load the save map
    var saveMap;
    
    if (global.extraSaveProtection) //use ds_map_secure function
    {
        saveMap = ds_map_secure_load("Data\save");
    }
    else    //use text file
    {
        var f = file_text_open_read("Data\save");
        
        saveMap = json_decode(base64_decode(file_text_read_string(f)));
        
        file_text_close(f);
    }
    
    saveValid = true;   //keeps track of whether or not the save being loaded is valid
    
    if (saveMap != -1)  //check if the save map loaded correctly
    {
        global.death = ds_map_find_value(saveMap,"death");
        global.time = ds_map_find_value(saveMap,"time");
        global.timeMicro = ds_map_find_value(saveMap,"timeMicro");
        
        global.saveRoom = ds_map_find_value(saveMap,"saveRoom");
        global.savePlayerX = ds_map_find_value(saveMap,"savePlayerX");
        global.savePlayerY = ds_map_find_value(saveMap,"savePlayerY");
        global.savePlayerType = ds_map_find_value(saveMap,"savePlayerType");
        global.saveGrav = ds_map_find_value(saveMap,"saveGrav");
        for (var i = 0; i < 5; i++)
        {
            global.saveBossRush[i] = ds_map_find_value(saveMap,"saveBossRush["+string(i)+"]");
            global.saveBossRushRerun[i] = ds_map_find_value(saveMap,"saveBossRushRerun["+string(i)+"]");
        }
        
        for(var i = 0; i < 100; i++)
        {
            global.saveEnergy[i] = ds_map_find_value(saveMap,"energy["+string(i)+"]");
        }
        if (is_string(global.saveRoom))   //check if the saved room loaded properly
        {
            if (!room_exists(asset_get_index(global.saveRoom)))  //check if the room index in the save is valid
                saveValid = false;
        }
        else
        {
            saveValid = false;
        }
        
        for (var i = 0; i < global.secretItemTotal; i++)
        {
            global.saveSecretItem[i] = ds_map_find_value(saveMap,"saveSecretItem["+string(i)+"]");
        }
                
        global.saveGameClear = ds_map_find_value(saveMap,"saveGameClear");
        global.saveExtra = ds_map_find_value(saveMap,"saveExtra");
        global.saveExtraClear = ds_map_find_value(saveMap,"saveExtraClear");
        
        //load md5 string from the save map
        var mapMd5 = ds_map_find_value(saveMap,"mapMd5");
        
        //check if md5 is not a string in case the save was messed with or got corrupted
        if (!is_string(mapMd5))
            mapMd5 = "";   //make it a string for the md5 comparison
        
        //generate md5 string to compare with
        ds_map_delete(saveMap,"mapMd5");
        var genMd5 = md5_string_unicode(json_encode(saveMap)+global.md5StrAdd);
        
        if (mapMd5 != genMd5)   //check if md5 hash is invalid
            saveValid = false;
        
        //destroy the map
        ds_map_destroy(saveMap);
    }
    else
    {
        //save map didn't load correctly, set the save to invalid
        saveValid = false;
    }
    
    if (!saveValid) //check if the save is invalid
    {
        //save is invalid, restart the game
        
        show_message("Save invalid!");
        
        scrRestartGame();
        
        exit;
    }
}

//set game variables and set the player's position

with (objPlayer) //destroy player if it exists
    instance_destroy();

global.gameStarted = true;  //sets game in progress (enables saving, restarting, etc.)
global.noPause = false;     //disable no pause mode
global.autosave = false;    //disable autosaving since we're loading the game

global.grav = global.saveGrav;

for (var i = 0; i < global.secretItemTotal; i++)
{
    global.secretItem[i] = global.saveSecretItem[i];
}

for (var i = 0; i < 5; i++)
{
    global.bossRush[i] = global.saveBossRush[i];
    global.bossRushRerun[i] = global.saveBossRushRerun[i];
}

for(var i = 0; i < 100; i++)
{
    global.energy[i] = global.saveEnergy[i];
}

global.gameClear = global.saveGameClear;
global.extra = global.saveExtra;
global.extraClear = global.saveExtraClear;

if(global.globalSegmentID != global.saveGlobalSegmentID)
{
 global.lastRunStart[14] = -1;
 global.globalSegmentID = -1;
}

if(global.currentSegmentID != global.saveCurrentSegmentID)
{
 if(global.currentSegmentIndex != -1)
  global.lastRunStart[global.currentSegmentIndex] = -1;
 global.currentSegmentIndex = -1; 
 global.currentSegmentID = -1;
}

if(global.savePlayerType == 0)
 instance_create(global.savePlayerX,global.savePlayerY,objPlayer);

scrLoadAchievements();

room_goto(asset_get_index(global.saveRoom));
