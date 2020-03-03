var targetId = argument0;

var endX = targetId.XEnd;
targetId.XEnd = targetId.XStart;
targetId.XStart = endX;
