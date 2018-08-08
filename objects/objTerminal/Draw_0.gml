/// @description draw text
#region setup draw
draw_set_color(c_orange);
draw_set_font(fntTerminal);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
#endregion

#region draw text
var _lineAmount =  ceil(string_length(text)/ maxlineLength);
//draw lines
for(var _i = 0; _i < _lineAmount; _i++){
	var _string = string_copy(text,maxlineLength*_i+1, maxlineLength);
	draw_text(x,y+padding*_i,_string);
}
#endregion