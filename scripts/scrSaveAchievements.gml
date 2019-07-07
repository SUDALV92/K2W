///scrSaveAchievements
///saves the achievements

//create a map for save data
var saveMap = ds_map_create();

for (var i = 0; i < global.achievementTotal; i++)
{
    ds_map_add(saveMap,"achievement["+string(i)+"]",global.achievement[i]);
}

//add md5 hash to verify saves and make them harder to hack
ds_map_add(saveMap,"mapMd5",md5_string_unicode(json_encode(saveMap)+global.md5StrAdd));
ds_map_secure_save(saveMap,"Data\achievements");

//destroy the map
ds_map_destroy(saveMap);
