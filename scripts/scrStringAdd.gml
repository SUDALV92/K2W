var str1 = argument0;
var str2 = argument1;

resultString = "";
for( var j = 1; j < string_length( str1 ); j++ ) {
resultString += string_char_at( str1 , j );
}
for( var i = 1; i < string_length( str2 ); i++ ) {
resultString += string_char_at( str2, i );
}
return resultString;
