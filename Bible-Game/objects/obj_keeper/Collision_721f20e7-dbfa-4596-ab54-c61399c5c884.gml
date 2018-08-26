/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
/// @DnDVersion : 1
/// @DnDHash : 321FDBB1
var l321FDBB1_0;
l321FDBB1_0 = keyboard_check_released(vk_space);
if (l321FDBB1_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 71F071E5
	/// @DnDParent : 321FDBB1
	/// @DnDArgument : "var" "repeatkeeper"
	if(repeatkeeper == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0779366F
		/// @DnDApplyTo : 9af0bfa7-a77b-4a46-add5-8d019c3c9829
		/// @DnDParent : 71F071E5
		/// @DnDArgument : "var" "davidmove"
		with(obj_David) {
		davidmove = 0;
		
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 186BA94B
		/// @DnDParent : 71F071E5
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "repeatkeeper"
		repeatkeeper = 1;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 16C20EB5
	/// @DnDApplyTo : 9af0bfa7-a77b-4a46-add5-8d019c3c9829
	/// @DnDParent : 321FDBB1
	/// @DnDArgument : "var" "davidmove"
	with(obj_David) var l16C20EB5_0 = davidmove == 0;
	if(l16C20EB5_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2A6FD8F8
		/// @DnDApplyTo : 9af0bfa7-a77b-4a46-add5-8d019c3c9829
		/// @DnDParent : 16C20EB5
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "davidmove"
		with(obj_David) {
		davidmove = 1;
		
		}
	}
}