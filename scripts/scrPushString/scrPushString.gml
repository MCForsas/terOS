/// @function scrPushString(string)
/// @desc adds line of text to terminal
/// @param string

#region vars
var _string = argument[0];
#endregion

#region push string
if(instance_exists(objCommandLine)){
	with(objCommandLine){
		lineIndex++;
		lines[| lineIndex] = _string;
	}
}
#endregion