/// @description draw text
#region setup draw
draw_set_color(c_orange);
draw_set_font(fntTerminal);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
#endregion

#region draw text
//draw lines

var _lineCount = 0;
for(var _i = 0; _i < ds_list_size(lines); _i++){
	var _lineAmount =  ceil(string_length(lines[| _i])/ maxlineLength);
	for(var _j = 0; _j < _lineAmount; _j++){
		var _string = string_copy(lines[| _i],maxlineLength*_j+1, maxlineLength);
		draw_text(x,y+padding*(_lineCount),_string);
		_lineCount++;
	}
}
#endregion