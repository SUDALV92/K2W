///scrTrueEndingAddLine(text, [color])
line = instance_create(600,endingY,objTrueEndingText);
line.text = argument[0];
line.vspeed = -0.65;
if(argument_count > 1)
 line.color = argument[1];

endingY += 20;
