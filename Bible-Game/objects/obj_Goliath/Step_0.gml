/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 5E5D40E5
/// @DnDArgument : "obj" "obj_David"
/// @DnDSaveInfo : "obj" "9af0bfa7-a77b-4a46-add5-8d019c3c9829"
var l5E5D40E5_0 = false;
l5E5D40E5_0 = instance_exists(obj_David);
if(l5E5D40E5_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 44588117
	/// @DnDParent : 5E5D40E5
	/// @DnDArgument : "x" "obj_David.x"
	/// @DnDArgument : "y" "obj_David.y"
	direction = point_direction(x, y, obj_David.x, obj_David.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 7B05A8B8
	/// @DnDParent : 5E5D40E5
	/// @DnDArgument : "speed" "spd"
	speed = spd;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
/// @DnDVersion : 1
/// @DnDHash : 291D721F
var l291D721F_0;
l291D721F_0 = keyboard_check_released(vk_space);
if (l291D721F_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 222AEDCC
	/// @DnDParent : 291D721F
	/// @DnDArgument : "spriteind" "sprite1"
	/// @DnDSaveInfo : "spriteind" "bca44fa1-90dd-451a-b608-c90feab97565"
	sprite_index = sprite1;
	image_index = 0;
}