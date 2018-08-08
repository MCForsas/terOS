/// @description get text data and execute commands

#region get text data
userText = keyboard_string;
text = string(string(station) + string(delimeter) + string(user) + string(cursor) + string(userText));
#endregion

maxlineLength = floor(room_width/(font_get_size(fntTerminal)*(2/3)));

#region execute commands
if(keyboard_check_released(vk_enter)){
	scrExecuteCommand(userText);	
}
#endregion