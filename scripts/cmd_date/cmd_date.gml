//Repeats set command for n times

#region 
scrPushString(
	"T+ ~"+
	string(current_hour) + 
	":" + string(current_minute) + 
	":" + string(current_second) +
	"|" + string(current_time/1000) + " seconds since startup"
);
#endregion