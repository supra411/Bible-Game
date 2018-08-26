/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 5E5D40E5
/// @DnDArgument : "obj" "obj_David"
/// @DnDSaveInfo : "obj" "9af0bfa7-a77b-4a46-add5-8d019c3c9829"
var l5E5D40E5_0 = false;
l5E5D40E5_0 = instance_exists(obj_David);
if(l5E5D40E5_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 04C687FB
	/// @DnDApplyTo : a9cfc02d-69dd-4a86-8956-ce8e8f77d4aa
	/// @DnDParent : 5E5D40E5
	/// @DnDArgument : "var" "hp"
	/// @DnDArgument : "op" "2"
	with(obj_Goliath) var l04C687FB_0 = hp > 0;
	if(l04C687FB_0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 7B05A8B8
		/// @DnDParent : 04C687FB
		/// @DnDArgument : "speed" "spd"
		speed = spd;
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 44588117
		/// @DnDParent : 04C687FB
		/// @DnDArgument : "x" "obj_David.x"
		/// @DnDArgument : "y" "obj_David.y"
		direction = point_direction(x, y, obj_David.x, obj_David.y);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 46B23E59
	/// @DnDParent : 5E5D40E5
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 024E19CF
		/// @DnDParent : 46B23E59
		/// @DnDArgument : "spriteind" "spr_Goliath_Dead"
		/// @DnDSaveInfo : "spriteind" "9aae7ba8-7723-4526-a20a-a5471e0eea6a"
		sprite_index = spr_Goliath_Dead;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 4FC85D56
		/// @DnDParent : 46B23E59
		speed = 0;
	}
}