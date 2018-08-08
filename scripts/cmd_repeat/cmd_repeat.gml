//Repeats set command for n times

#region 
var _input = argument[0];
if(array_length_1d(_input) > 2){
	var _amount = real(string_digits(_input[1]));
	var _command = _input[2];
	if(array_length_1d(_input) > 3){
		var _arguments = _input[3];
	}else{
		var _arguments = "";	
	}
	if(_amount != 0){
		if(_amount > 100000){
			scrPushString("var repeatMax = 100000");
			return;
		}
		repeat(_amount){
			scrExecuteCommand(string(_command)+" "+string(_arguments));	
		}
	}else{
		scrPushString(">Please provide an integer for arg[0]");	
	}
}else{
	scrPushString(">Malformed command");	
}
#endregion