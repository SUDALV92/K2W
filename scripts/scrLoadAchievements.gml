///scrLoadAchievements
///loads the game

//load the save map
var saveMap = ds_map_secure_load("Data\achievements");

saveValid = true;   //keeps track of whether or not the save being loaded is valid

if (saveMap != -1)  //check if the save map loaded correctly
{
    for (var i = 0; i < global.achievementTotal; i++)
    {
        global.achievement[i] = ds_map_find_value(saveMap,"achievement["+string(i)+"]");
    }
    
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
    
    show_message("Achievements data invalid!");
    
    scrRestartGame();
    
    exit;
}
