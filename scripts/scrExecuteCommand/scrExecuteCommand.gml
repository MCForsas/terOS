///@description scrExecuteCommand(string)
///@arg string

//executes command when provided a string
#region arguments
var _string = argument[0];
#endregion

#region execute script
var _stringArray = scrSplitString(" ",_string);
_stringArray[0] = string_lower(_stringArray[0]);
var _script = asset_get_index("cmd_"+string(_stringArray[0]));

if(script_exists(_script)){
	script_execute(_script,_stringArray);
}else{
	scrPushString("Unknown command");
}
#endregion