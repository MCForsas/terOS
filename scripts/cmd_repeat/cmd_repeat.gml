//Repeats set command for n times

#region 
var _input = argument[0];
if(array_length_1d(_input) > 1){
	var _amount = real(string_digits(_input[0]));
	var _command = _input[1];
	if(_amount != 0){
		if(_amount > 100000){
			scrPushString("var repeatMax = 100000");
			return;
		}
		repeat(_amount){
			scrExecuteCommand(string(_command));	
		}
	}else{
		scrPushString(">Please provide an integer for arg[0]");	
	}
}else{
	scrPushString(">Malformed command");	
}
#endregion