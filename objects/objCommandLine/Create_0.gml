/// @description This object holds text data and executes commands
#region initialize variables
userText = "";
user = "root";
station = "ws-1337";
delimeter = "@";
cursor = ":";
text = string(string(station) + string(delimeter) + string(user) + string(cursor) + string(userText));
font = fntTerminal;
lines = ds_list_create();
ds_list_add(lines,text);
lineIndex = 0;
historyIndex = 1;
bashHistory = ds_list_create();
allLineCount = 0;
#endregion

#region get max number of character in one line
padding = font_get_size(font)*(3/2);
maxlineLength = floor(window_get_width()/font_get_size(font)*(4/3));
#endregion

x = 0;
y = 0;