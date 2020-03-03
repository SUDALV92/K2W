///scrObjectDestroy(instance_id, [performEvent = true])
var instance = argument[0];
performEvent = true;
if(argument_count > 1)
 performEvent = argument[1];

with(instance)
{
 if(!other.performEvent)
  instance_change(objSelfDestroy,false);
 else
  instance_destroy();
}
