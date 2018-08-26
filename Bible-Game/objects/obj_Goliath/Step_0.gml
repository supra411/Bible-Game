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
	/// @DnDHash : 654B6172
	/// @DnDParent : 5E5D40E5
	/// @DnDArgument : "var" "hp"
	/// @DnDArgument : "op" "2"
	if(hp > 0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 44588117
		/// @DnDParent : 654B6172
		/// @DnDArgument : "x" "obj_David.x"
		/// @DnDArgument : "y" "obj_David.y"
		direction = point_direction(x, y, obj_David.x, obj_David.y);
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 7B05A8B8
		/// @DnDParent : 654B6172
		/// @DnDArgument : "speed" "spd"
		speed = spd;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 11C9F93B
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0B6D9FDD
	/// @DnDParent : 11C9F93B
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "stonenumcount"
	stonenumcount += -1;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 36EED81B
	/// @DnDParent : 11C9F93B
	/// @DnDArgument : "spriteind" "spr_Goliath_Dead"
	/// @DnDSaveInfo : "spriteind" "9aae7ba8-7723-4526-a20a-a5471e0eea6a"
	sprite_index = spr_Goliath_Dead;
	image_index = 0;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 64CF09EE
	/// @DnDParent : 11C9F93B
	speed = 0;
}