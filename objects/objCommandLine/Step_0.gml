/// @description get text data and execute commands

#region execute commands
if(keyboard_check_released(vk_enter)){
	historyIndex = lineIndex;
	if(userText != ""){
		scrExecuteCommand(userText);
		ds_list_add(bashHistory,userText);
	}
	keyboard_string = "";
	userText = "";
	
	ds_list_add(lines,text);
	lineIndex++;
}
#endregion

#region get text data
userText = keyboard_string;
if(keyboard_check_released(vk_backspace)){
	userText = string_delete(userText,string_length(userText),1);	
}
text = string(string(station) + string(delimeter) + string(user) + string(cursor) + string(userText));
lines[| lineIndex] = text;
#endregion

maxlineLength = floor(room_width/(font_get_size(fntTerminal)*(2/3)));

#region scroll
if(allLineCount*padding > (room_height-padding)-y){
	y = -(allLineCount*padding-room_height);
}
#endregion