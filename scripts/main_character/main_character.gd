extends CharacterBody2D

#base speed of the character
const base_speed = 250

func get_input():
	var input_direction = Input.get_vector("mv_left", "mv_right", "mv_up", "mv_down")
	var input_y_stick = Input.get_axis("ax_up", "ax_down")
	var input_x_stick = Input.get_axis("ax_left", "ax_right")
	
	#simple if to make compatible with both dpad and stick
	if $VisibleOnScreenNotifier2D.is_on_screen():
		if input_direction != Vector2(0,0):
			velocity = input_direction * base_speed
		else:
			velocity = Vector2(input_x_stick * base_speed, input_y_stick * base_speed)
	else:
		position = Vector2(250, 240)
	
func _physics_process(delta):
	get_input()
	move_and_slide()
