/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 7EDC9BFF
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 78AAE3B0
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 6C633556
var l6C633556_0;
l6C633556_0 = mouse_check_button(mb_left);
if (l6C633556_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2D06A08C
	/// @DnDParent : 6C633556
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "3"
	if(cooldown <= 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 68273AA4
		/// @DnDParent : 2D06A08C
		/// @DnDArgument : "var" "stonenum"
		/// @DnDArgument : "op" "2"
		if(stonenum > 0)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 3EC695F3
			/// @DnDParent : 68273AA4
			/// @DnDArgument : "xpos" "x"
			/// @DnDArgument : "ypos" "y"
			/// @DnDArgument : "objectid" "obj_Stone"
			/// @DnDArgument : "layer" ""Layer_Stone""
			/// @DnDSaveInfo : "objectid" "f79733b5-d8b2-4043-bc72-779e71eaccf0"
			instance_create_layer(x, y, "Layer_Stone", obj_Stone);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2E0D4AC0
			/// @DnDParent : 68273AA4
			/// @DnDArgument : "expr" "50"
			/// @DnDArgument : "var" "cooldown"
			cooldown = 50;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4F6E6ABE
			/// @DnDParent : 68273AA4
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "stonenum"
			stonenum += -1;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1A1995AE
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown"
cooldown += -1;