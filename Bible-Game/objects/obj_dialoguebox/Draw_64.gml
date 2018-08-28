/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 62CFB2FE
/// @DnDArgument : "expr" "camera_get_view_height(view_camera[0])"
/// @DnDArgument : "var" "ch"
ch = camera_get_view_height(view_camera[0]);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5294B5AB
/// @DnDArgument : "expr" "camera_get_view_width(view_camera[0])"
/// @DnDArgument : "var" "cw"
cw = camera_get_view_width(view_camera[0]);

/// @DnDAction : YoYo Games.Common.Get_Global
/// @DnDVersion : 1
/// @DnDHash : 315439B5
/// @DnDArgument : "output" "displaytext"
/// @DnDArgument : "var" "dialoguetext"
displaytext = global.dialoguetext;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0B57D88B
/// @DnDArgument : "var" "displaytext"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" """"
if(!(displaytext == ""))
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 279055D0
	/// @DnDParent : 0B57D88B
	/// @DnDArgument : "color" "$FF020F0F"
	draw_set_colour($FF020F0F & $ffffff);
	draw_set_alpha(($FF020F0F >> 24) / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 13D9F2B0
	/// @DnDParent : 0B57D88B
	/// @DnDArgument : "y1" "ch-210"
	/// @DnDArgument : "x2" "cw"
	/// @DnDArgument : "y2" "ch"
	/// @DnDArgument : "fill" "1"
	draw_rectangle(0, ch-210, cw, ch, 0);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 1BB39898
	/// @DnDParent : 0B57D88B
	draw_set_colour($FFFFFFFF & $ffffff);
	draw_set_alpha(($FFFFFFFF >> 24) / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 1BEE3D2D
	/// @DnDParent : 0B57D88B
	/// @DnDArgument : "x1" "5"
	/// @DnDArgument : "y1" "ch-205"
	/// @DnDArgument : "x2" "cw-5"
	/// @DnDArgument : "y2" "ch-5"
	/// @DnDArgument : "fill" "1"
	draw_rectangle(5, ch-205, cw-5, ch-5, 0);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 618D6B0B
	/// @DnDParent : 0B57D88B
	/// @DnDArgument : "color" "$FF000000"
	draw_set_colour($FF000000 & $ffffff);
	draw_set_alpha(($FF000000 >> 24) / $ff);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 45A5AB7A
	/// @DnDParent : 0B57D88B
	/// @DnDArgument : "font" "txt_dialoguetext"
	/// @DnDSaveInfo : "font" "d2245670-ec02-43c3-b97d-c73c00d617a8"
	draw_set_font(txt_dialoguetext);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 0CA8B658
	/// @DnDParent : 0B57D88B
	/// @DnDArgument : "x" "10"
	/// @DnDArgument : "y" "ch-90"
	/// @DnDArgument : "caption" """"
	/// @DnDArgument : "var" "displaytext"
	draw_text(10, ch-90, string("") + string(displaytext));
}