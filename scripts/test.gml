var tt_currentString1 = "test";
var tt_newText = "_append";
var tt_width = string_length( tt_currentString1 ) + string_length(tt_newText);

var tt_copied;
var tt_currentLength;

tt_currentLength = string_length(tt_currentString1);
if(tt_currentLength < tt_width)
{
    tt_copied = string_copy(tt_newText,1,tt_width - tt_currentLength);
    tt_currentString1 += tt_copied;
}

show_error( tt_currentString1, true );
return tt_currentString1;
