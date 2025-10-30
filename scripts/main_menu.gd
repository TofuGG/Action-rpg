extends Control
@onready var about: Panel = $about

func _ready() -> void:
	pass

func _process(_delta: float) -> void:
	pass

func _on_start_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/game_lvl_1.tscn")

func _on_help_button_pressed() -> void:
	pass # Replace with function body.

func _on_about_button_pressed() -> void:
	about.show()

func _on_exit_button_pressed() -> void:
	get_tree().quit()
