var targetId = argument0;

var endY = targetId.YEnd;
targetId.YEnd = targetId.YStart;
targetId.YStart = endY;
