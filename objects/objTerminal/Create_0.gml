/// @description This object holds text data and executes commands
#region initialize variables
userText = "";
user = "root";
station = "ws-1337";
delimeter = "@";
cursor = ":";
text = string(string(station) + string(delimeter) + string(user) + string(cursor) + string(userText));
#endregion

#region get max number of character in one line
padding = font_get_size(fntTerminal)*(3/2);
maxlineLength = floor(window_get_width()/font_get_size(fntTerminal)*(4/3));
#endregion

x = 0;
y = 0;