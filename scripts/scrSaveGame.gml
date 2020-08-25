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
    }
    
    for(var i = 0; i < 100; i++)
    {
        global.saveEnergy[i] = global.energy[i];
    }
    
    for(var i = 0; i < 4; i++)
    {
     global.saveExtraBossCleared[i] = global.extraBossCleared[i];
    }
    
    for(var i = global.stagesTotal; i >= 0; i--)
    {
     global.saveStageUnlocked[i] = global.stageUnlocked[i];
    }
    global.saveAutoFire = global.autoFire;        
    global.saveExtraClear = global.extraClear;
    global.savePortalAvailable = global.portalAvailable;
}

//create a map for time data
if(savePosition)
{
 global.saveCurrentSegmentIndex = global.currentSegmentIndex;
}
var timeMap = ds_map_create();
for (var i = 0; i < 20; i++)
{
    ds_map_add(timeMap,"lastRunStart["+string(i)+"]",global.lastRunStart[i]);
    ds_map_add(timeMap,"lastRunEnd["+string(i)+"]",global.lastRunEnd[i]);
}
ds_map_add(timeMap,"currentSegmentIndex",global.saveCurrentSegmentIndex);
var f = file_text_open_write("Data\timedata");
file_text_write_string(f,base64_encode(json_encode(timeMap)));
file_text_close(f);
ds_map_destroy(timeMap);


//create a map for save data
var saveMap = ds_map_create();

ds_map_add(saveMap,"death",global.death);
ds_map_add(saveMap,"time",global.time);
ds_map_add(saveMap,"timeMicro",global.timeMicro);

ds_map_add(saveMap,"Room",global.saveRoom);
ds_map_add(saveMap,"PlayerX",global.savePlayerX);
ds_map_add(saveMap,"PlayerY",global.savePlayerY);
ds_map_add(saveMap,"PlayerType",global.savePlayerType);
ds_map_add(saveMap,"Grav",global.saveGrav);

for (var i = 0; i < global.secretItemTotal; i++)
{
    ds_map_add(saveMap,"SecretItem["+string(i)+"]",global.saveSecretItem[i]);
}

for (var i = 0; i < 5; i++)
{
    ds_map_add(saveMap,"BossRush["+string(i)+"]",global.saveBossRush[i]);
}

for(var i = 0; i < 100; i++)
{
    ds_map_add(saveMap,"energy["+string(i)+"]",global.saveEnergy[i]);
}
for(var i = 0; i < 4; i++)
{
 ds_map_add(saveMap,"extraBossCleared["+string(i)+"]",global.saveExtraBossCleared[i]);
}
for(var i = global.stagesTotal; i >= 0; i--)
{
    ds_map_add(saveMap,"stageUnlocked["+string(i)+"]",global.saveStageUnlocked[i]);
}
ds_map_add(saveMap,"autoFire",global.saveAutoFire);
ds_map_add(saveMap,"ExtraClear",global.saveExtraClear);
ds_map_add(saveMap,"portalAvailable",global.savePortalAvailable);
ds_map_add(saveMap,"selectedStage",global.selectedStage);

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
