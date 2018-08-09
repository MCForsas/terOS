/// @function scrExecuteCommand(string)
/// @desc executes set command when provided a string
/// @arg string

#region arguments
var _string = argument[0];
if(argument_count > 1){
	var _isEscaped = argument[1];	
}else{
	var _isEscaped = false;	
}
#endregion

#region execute script
var _stringArray = scrProcessCommandString(_string);

_stringArray[0] = string_lower(_stringArray[0]);
var _script = asset_get_index("cmd_"+string(_stringArray[0]));

#region shift array
var _arguments = [];
for(var _i = 1; _i < array_length_1d(_stringArray); _i++){
	_arguments[_i-1] = _stringArray[_i];
}
#endregion

if(script_exists(_script)){
	script_execute(_script,_arguments);
}else{
	scrPushString("Unknown command");
}
#endregion