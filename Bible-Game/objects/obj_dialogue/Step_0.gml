/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4AD332AE
/// @DnDApplyTo : 9af0bfa7-a77b-4a46-add5-8d019c3c9829
/// @DnDArgument : "var" "davidmove"
with(obj_David) var l4AD332AE_0 = davidmove == 0;
if(l4AD332AE_0)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
	/// @DnDVersion : 1
	/// @DnDHash : 5903178D
	/// @DnDParent : 4AD332AE
	var l5903178D_0;
	l5903178D_0 = keyboard_check_released(vk_space);
	if (l5903178D_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2BE4C292
		/// @DnDApplyTo : 9af0bfa7-a77b-4a46-add5-8d019c3c9829
		/// @DnDParent : 5903178D
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "davidmove"
		with(obj_David) {
		davidmove = 1;
		
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 12C564FF
		/// @DnDParent : 5903178D
		/// @DnDArgument : "expr" """"
		/// @DnDArgument : "var" "dialoguetext"
		dialoguetext = "";
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 64B7DFE7
		/// @DnDApplyTo : 15818e0f-9942-4b7e-ac1d-b3cdad5e835a
		/// @DnDParent : 5903178D
		with(obj_dialoguebox) instance_destroy();
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4D385A06
else
{
	/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
	/// @DnDVersion : 1.1
	/// @DnDHash : 4B13137C
	/// @DnDParent : 4D385A06
	/// @DnDArgument : "x1" "500"
	/// @DnDArgument : "y1" "1062"
	/// @DnDArgument : "x2" "651"
	/// @DnDArgument : "y2" "1148"
	/// @DnDArgument : "obj" "obj_David"
	/// @DnDArgument : "shape" "1"
	/// @DnDArgument : "notme" "0"
	/// @DnDArgument : "destroylist" "false"
	/// @DnDSaveInfo : "obj" "9af0bfa7-a77b-4a46-add5-8d019c3c9829"
	var l4B13137C_0 = collision_rectangle(500, 1062, 651, 1148, obj_David, true, 0);
	if((l4B13137C_0))
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1102B9C1
		/// @DnDParent : 4B13137C
		/// @DnDArgument : "var" "keeperconvo"
		/// @DnDArgument : "value" "1"
		if(keeperconvo == 1)
		{
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
			/// @DnDVersion : 1
			/// @DnDHash : 5E2A4C09
			/// @DnDParent : 1102B9C1
			var l5E2A4C09_0;
			l5E2A4C09_0 = keyboard_check_released(vk_space);
			if (l5E2A4C09_0)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 47164EA7
				/// @DnDApplyTo : 9af0bfa7-a77b-4a46-add5-8d019c3c9829
				/// @DnDParent : 5E2A4C09
				/// @DnDArgument : "var" "davidmove"
				with(obj_David) {
				davidmove = 0;
				
				}
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1526D62B
				/// @DnDParent : 5E2A4C09
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "var" "keeperconvo"
				keeperconvo = 1;
			
				/// @DnDAction : YoYo Games.Common.Set_Global
				/// @DnDVersion : 1
				/// @DnDHash : 79DEAF9F
				/// @DnDParent : 5E2A4C09
				/// @DnDArgument : "value" ""Keeper ipsum lorem two""
				/// @DnDArgument : "var" "dialoguetext"
				global.dialoguetext = "Keeper ipsum lorem two";
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 08274E96
				/// @DnDParent : 5E2A4C09
				/// @DnDArgument : "objectid" "obj_dialoguebox"
				/// @DnDArgument : "layer" ""layer_dialogue""
				/// @DnDSaveInfo : "objectid" "15818e0f-9942-4b7e-ac1d-b3cdad5e835a"
				instance_create_layer(0, 0, "layer_dialogue", obj_dialoguebox);
			}
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 312C43F2
		/// @DnDParent : 4B13137C
		/// @DnDArgument : "var" "keeperconvo"
		if(keeperconvo == 0)
		{
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
			/// @DnDVersion : 1
			/// @DnDHash : 3176465F
			/// @DnDParent : 312C43F2
			var l3176465F_0;
			l3176465F_0 = keyboard_check_released(vk_space);
			if (l3176465F_0)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1292314C
				/// @DnDApplyTo : 9af0bfa7-a77b-4a46-add5-8d019c3c9829
				/// @DnDParent : 3176465F
				/// @DnDArgument : "var" "davidmove"
				with(obj_David) {
				davidmove = 0;
				
				}
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0AC0A358
				/// @DnDParent : 3176465F
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "var" "keeperconvo"
				keeperconvo = 1;
			
				/// @DnDAction : YoYo Games.Common.Set_Global
				/// @DnDVersion : 1
				/// @DnDHash : 5747B0C1
				/// @DnDParent : 3176465F
				/// @DnDArgument : "value" ""Keeper ipsum lorem one""
				/// @DnDArgument : "var" "dialoguetext"
				global.dialoguetext = "Keeper ipsum lorem one";
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 7BE857CF
				/// @DnDParent : 3176465F
				/// @DnDArgument : "objectid" "obj_dialoguebox"
				/// @DnDArgument : "layer" ""layer_dialogue""
				/// @DnDSaveInfo : "objectid" "15818e0f-9942-4b7e-ac1d-b3cdad5e835a"
				instance_create_layer(0, 0, "layer_dialogue", obj_dialoguebox);
			}
		}
	}
}