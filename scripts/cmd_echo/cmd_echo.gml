//Echoes the string which was passed as argument

#region 
var _input = argument[0];
if(array_length_1d(_input) > 1){
	var _text = _input[1];
	scrPushString(">"+string(_text));
}else{
	scrPushString(">No input provided");
}
#endregion