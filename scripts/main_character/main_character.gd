class_name MainCharacter
extends CharacterBody2D

const base_speed = 250	##base speed of the character

func get_input():
	var input_direction = Input.get_vector("mv_left", "mv_right", "mv_up", "mv_down")
	var input_y_stick = Input.get_axis("ax_up", "ax_down")
	var input_x_stick = Input.get_axis("ax_left", "ax_right")
	
	#simple if to make compatible with both dpad and stick
	if input_direction != Vector2(0,0):
		velocity = input_direction * base_speed
	else:
		velocity = Vector2(input_x_stick * base_speed, input_y_stick * base_speed)
	

func _physics_process(_delta):
	get_input()
	if(move_and_slide()):
		print("true")
