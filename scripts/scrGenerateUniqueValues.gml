///scrGenerateUniqueValues(length,[sourceSize])
var length = argument[0];
var sourceSize = 4;
if(argument_count > 1)
 sourceSize = argument[1];
 
var list = ds_list_create();
for(var temp = 0; temp < sourceSize; temp++)
{
 ds_list_add(list,temp);
}
ds_list_shuffle(list);
var resultList = ds_list_create();
for(var temp = 0; temp < length; temp++)
{
 ds_list_add(resultList,list[| temp]);
}
return resultList;
