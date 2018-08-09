/// @function scrSplitString(string)
/// @desc Takes current command string and splits it into array
/// @arg string

#region variables
var _string = argument[0];
var _quote = "\"";
var _escape = "\\";
var _delimiter = " ";
var _endArray = [];
var _arrayIndex = 0;
var _quoted = false;
var _currentString = "";
#endregion

#region	search for qoutes and split them.
for(var _i = 1; _i < string_length(_string)+1; _i++){
	var _char = string_char_at(_string,_i);
	var _charPrevious = string_char_at(_string,_i-1);
	if(_char == _quote){
		if(_charPrevious != _escape){
			if(!_quoted){
				_quoted = true;	
			}else{
				_quoted = false;
			}
			_char = "";
		}else{
			if(_char == _quote){
				_currentString = string_delete(_currentString,string_length(_currentString),1);	
			}
		}
	}
	
	if(_char == _delimiter){
		if(!_quoted){
			_currentString = "";
			_char = "";
			_arrayIndex++;
		}
	}
	
	_currentString += _char;
	_endArray[_arrayIndex] = _currentString;
}

if(_quoted){
	return ["echo","Malformed string"];
}else{
	return _endArray;
}
#endregion