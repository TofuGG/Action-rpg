extends Node2D

var left_pressed = false
var right_pressed = false
var jump_pressed = false

func _process(_delta):
	if left_pressed:
		Input.action_press("pl_left")
	else:
		Input.action_release("pl_left")

	if right_pressed:
		Input.action_press("pl_right")
	else:
		Input.action_release("pl_right")

	if jump_pressed:
		Input.action_press("pl_jump")
	else:
		Input.action_release("pl_jump")


func _on_left_button_down():
	left_pressed = true

func _on_left_button_up():
	left_pressed = false

func _on_right_button_down():
	right_pressed = true

func _on_right_button_up():
	right_pressed = false

func _on_jump_button_down():
	jump_pressed = true

func _on_jump_button_up():
	jump_pressed = false
