///scrSaveGame(saveposition)
///saves the game
///argument0 - sets whether the game should save the player's current location or just save the deaths/time

var savePosition = argument0;
var secretItemCollected = false;

//save the player's current location variables if the script is currently set to (we don't want to save the player's location if we're just updating death/time)
if (savePosition)
{    
    global.saveRoom = room_get_name(room);
    if(instance_exists(objPlayer))
    {
     global.savePlayerX = objPlayer.x;    
     global.savePlayerY = objPlayer.y;
     global.savePlayerType = 0;
    }
    else if(instance_exists(objB6Gradius))
    {
     global.savePlayerX = objB6Gradius.x;    
     global.savePlayerY = objB6Gradius.y;
     global.savePlayerType = 1;
    }
    else
    {
     global.savePlayerX = 99999;    
     global.savePlayerY = 99999;
     global.savePlayerType = -1;
    }
    
    global.saveGrav = global.grav;
    
    //check if player is saving inside of a wall or in the ceiling when the player's position is floored to prevent save locking
    with (objPlayer)
    {
        if (!place_free(floor(global.savePlayerX),global.savePlayerY))
        {
            global.savePlayerX += 1;
        }
        
        if (!place_free(global.savePlayerX,floor(global.savePlayerY)))
        {
            global.savePlayerY += 1;
        }
        
        if (!place_free(floor(global.savePlayerX),floor(global.savePlayerY)))
        {
            global.savePlayerX += 1;
            global.savePlayerY += 1;
        }
    }
    
    //floor player position to match standard engine behavior
    global.savePlayerX = floor(global.savePlayerX);
    global.savePlayerY = floor(global.savePlayerY);
    
    for (var i = 0; i < global.secretItemTotal; i++)
    {
        if(global.tempItem[i])
        {
            global.saveSecretItem[i] = true;
            global.secretItem[i] = true;
        }    
        else
        {
            global.saveSecretItem[i] = global.secretItem[i];
        }
        if(global.saveSecretItem[i] != 0)
         secretItemCollected = true;
    }
    
    for (var i = 0; i < 5; i++)
    {
        global.saveBossRush[i] = global.bossRush[i];
        global.saveBossRushRerun[i] = global.bossRushRerun[i];
    }
        
    global.saveGameClear = global.gameClear;
    global.saveExtra = global.extra;
    global.saveExtraClear = global.extraClear;
}

//create a map for time data
var timeMap = ds_map_create();
for (var i = 0; i < 16; i++)
{
    ds_map_add(timeMap,"bestRun["+string(i)+"]",global.bestRun[i]);
    ds_map_add(timeMap,"lastRunStart["+string(i)+"]",global.lastRunStart[i]);
    ds_map_add(timeMap,"lastRunEnd["+string(i)+"]",global.lastRunEnd[i]);
}
if(savePosition)
{
 global.globalSegmentID = global.saveGlobalSegmentID;
 global.currentSegmentID = global.saveCurrentSegmentID;
}
ds_map_add(timeMap,"currentSegmentIndex",global.currentSegmentIndex);
ds_map_add(timeMap,"currentSegmentID",global.saveCurrentSegmentID);
ds_map_add(timeMap,"globalSegmentID",global.saveGlobalSegmentID);

//add md5 hash to verify saves and make them harder to hack
ds_map_add(timeMap,"mapMd5",md5_string_unicode(json_encode(timeMap)+global.md5StrAdd));
ds_map_secure_save(timeMap,"Data\timedata");
ds_map_destroy(timeMap);


//create a map for save data
var saveMap = ds_map_create();

ds_map_add(saveMap,"death",global.death);
ds_map_add(saveMap,"time",global.time);
ds_map_add(saveMap,"timeMicro",global.timeMicro);

ds_map_add(saveMap,"saveRoom",global.saveRoom);
ds_map_add(saveMap,"savePlayerX",global.savePlayerX);
ds_map_add(saveMap,"savePlayerY",global.savePlayerY);
ds_map_add(saveMap,"savePlayerType",global.savePlayerType);
ds_map_add(saveMap,"saveGrav",global.saveGrav);

for (var i = 0; i < global.secretItemTotal; i++)
{
    ds_map_add(saveMap,"saveSecretItem["+string(i)+"]",global.saveSecretItem[i]);
}

for (var i = 0; i < 5; i++)
{
    ds_map_add(saveMap,"saveBossRush["+string(i)+"]",global.saveBossRush[i]);
    ds_map_add(saveMap,"saveBossRushRerun["+string(i)+"]",global.saveBossRushRerun[i]);
}



ds_map_add(saveMap,"saveGameClear",global.saveGameClear);
ds_map_add(saveMap,"saveExtra",global.saveExtra);
ds_map_add(saveMap,"saveExtraClear",global.saveExtraClear);

//add md5 hash to verify saves and make them harder to hack
ds_map_add(saveMap,"mapMd5",md5_string_unicode(json_encode(saveMap)+global.md5StrAdd));

//save the map to a file
if (global.extraSaveProtection) //use ds_map_secure function
{
    ds_map_secure_save(saveMap,"Data\save");
}
else    //use text file
{
    //open the save file
    var f = file_text_open_write("Data\save");
    
    //write map to the save file with base64 encoding
    file_text_write_string(f,base64_encode(json_encode(saveMap)));
    
    file_text_close(f);
}

//destroy the map
ds_map_destroy(saveMap);

//check if extra item collected, then throw achievement
if(secretItemCollected)
{
 if(global.achievement[27] == 0)
 {
  global.achievement[27] = 1;
  achievement = instance_create(0,0,objAchievement);
  achievement.index = 58;
 }
}
var allItemsCollected = true;
for (var i = global.secretItemTotal-1; i >= 0; i--)
{
    if(!global.secretItem[i])
        allItemsCollected = false;
}

if(allItemsCollected)
{
 if(global.achievement[28] == 0)
 {
  global.achievement[28] = 1;
  achievement = instance_create(0,0,objAchievement);
  achievement.index = 59;
 }
}

scrSaveAchievements();
