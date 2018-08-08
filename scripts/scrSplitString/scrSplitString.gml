///@description scrSplitString(substr,str)
///@var substr
///@var str

#region variables
var _substring = argument[0];
var _string = argument[1];
var _substringLength = string_length(_substring);
var _slot = 0;
var _delimiterPosition = 0;
var _arraySample = [];
var _delimiterCount = string_count(_substring,_string)+1;

_string += _substring;
#endregion

#region loop and delimit and stuff
for(var _i = 0; _i < _delimiterCount; _i++){
	_delimiterPosition = string_pos(_substring, _string) +	(_substringLength-1);
	var _copy = string_copy(_string,1,_delimiterPosition-_substringLength);
	if((_copy != "") || (argument[2] = false)){
		_arraySample[_i - _slot] = _copy;
	}else{
		_slot ++;	
	}
	_string = string_delete(_string, 1, _delimiterPosition);
}

return _arraySample;
#endregion