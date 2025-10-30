extends Panel

@onready var about: Panel = $"."

func _on_button_pressed() -> void:
	about.hide()
