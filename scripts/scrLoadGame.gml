///scrLoadGame(loadfile)
///loads the game
///argument0 - sets whether or not to read the save file when loading the game

var loadFile = argument0;

//only load save data from the save file if the script is currently set to (we should only need to load these on first load because the game stores them afterwards)
if (loadFile)
{
    var f = file_text_open_read("Data\timedata");        
    timeMap = json_decode(base64_decode(file_text_read_string(f)));    
    file_text_close(f);
    if(timeMap == -1) //в старых версиях по случайности было оставлено шифрование, так что если timedata не грузится, то видимо надо снять шифрование
    {
     timeMap = ds_map_secure_load("Data\timedata");
    }
    
    if (timeMap != -1)  //check if the save map loaded correctly
    {
        for (var i = 0; i < 20; i++)
        {
            global.lastRunStart[i] = ds_map_find_value(timeMap,"lastRunStart["+string(i)+"]");
            if(is_undefined(global.lastRunStart[i]))
             global.lastRunStart[i] = -1;
             
            global.lastRunEnd[i] = ds_map_find_value(timeMap,"lastRunEnd["+string(i)+"]");
            if(is_undefined(global.lastRunEnd[i]))
             global.lastRunEnd[i] = -1;
        }
        global.saveCurrentSegmentIndex = ds_map_find_value(timeMap,"currentSegmentIndex");       
                
        //destroy the map
        ds_map_destroy(timeMap);
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
    
    var saveValid = true;   //keeps track of whether or not the save being loaded is valid
    
    if (saveMap != -1)  //check if the save map loaded correctly
    {
        global.death = ds_map_find_value(saveMap,"death");
        global.time = ds_map_find_value(saveMap,"time");
        global.timeMicro = ds_map_find_value(saveMap,"timeMicro");
        
        global.saveRoom = ds_map_find_value(saveMap,"Room");
        global.savePlayerX = ds_map_find_value(saveMap,"PlayerX");
        global.savePlayerY = ds_map_find_value(saveMap,"PlayerY");
        global.savePlayerType = ds_map_find_value(saveMap,"PlayerType");
        global.saveGrav = ds_map_find_value(saveMap,"Grav");
        for (var i = 0; i < global.secretItemTotal; i++)
        {
            global.saveSecretItem[i] = ds_map_find_value(saveMap,"SecretItem["+string(i)+"]");
        }
        
        for (var i = 0; i < 5; i++)
        {
            global.saveBossRush[i] = ds_map_find_value(saveMap,"BossRush["+string(i)+"]");
        }
        
        for(var i = 0; i < 100; i++)
        {
            global.saveEnergy[i] = ds_map_find_value(saveMap,"energy["+string(i)+"]");
        }
        for(var i = 0; i < 4; i++)
        {
         global.saveExtraBossCleared[i] = ds_map_find_value(saveMap,"extraBossCleared["+string(i)+"]");
        }
        for(var i = global.stagesTotal; i >= 0; i--)
        {
            global.saveStageUnlocked[i] = ds_map_find_value(saveMap,"stageUnlocked["+string(i)+"]");
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
        
        global.saveAutoFire = ds_map_find_value(saveMap,"autoFire");
        global.saveExtraClear = ds_map_find_value(saveMap,"ExtraClear");
        global.savePortalAvailable = ds_map_find_value(saveMap,"portalAvailable");
        var tempStage = ds_map_find_value(saveMap,"selectedStage"); //загружаем selectedStage ТОЛЬКО если загрузка происходит из файла
        if(!is_undefined(tempStage)) //совместимость со старыми сейвами
             global.selectedStage = tempStage;
                
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
}

for(var i = 0; i < 100; i++)
{
    global.energy[i] = global.saveEnergy[i];
}
for(var i = 0; i < 4; i++)
{
 global.extraBossCleared[i] = global.saveExtraBossCleared[i];
}
for(var i = global.stagesTotal; i >= 0; i--)
{
 global.stageUnlocked[i] = global.saveStageUnlocked[i];
}
global.autoFire = global.saveAutoFire;
global.extraClear = global.saveExtraClear;
global.portalAvailable = global.savePortalAvailable;
global.currentSegmentIndex = global.saveCurrentSegmentIndex;

if(global.savePlayerType == 0)
 instance_create(global.savePlayerX,global.savePlayerY,objPlayer);

room_goto(asset_get_index(global.saveRoom));
