extends Area2D

@onready var timer: Timer = $Timer
@onready var winblue: Panel = get_node("/root/Game/UI/winblue")
@onready var anim: AnimationPlayer = get_node("/root/Game/UI/winblue/winAnim")
@onready var game_manager: Node = get_node("/root/Game/Game_Manager")

const FILE_BEGIN = "res://scenes/game_lvl_"
var coin: int = 0

func _on_body_entered(_body: Node2D) -> void:
	coin = game_manager.score_return()
	if coin >= 10:
		if winblue:
			winblue.show()
		if anim:
			anim.play("win")
		Engine.time_scale = 0.3
		timer.start()

func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	if anim:
		anim.stop()
	if winblue:
		winblue.modulate.a = 0.0 
		winblue.hide()   
	#get_tree().reload_current_scene()
	var current_scene_file = get_tree().current_scene.scene_file_path
	var next_level_number = current_scene_file.to_int() + 1
	var next_level_path = FILE_BEGIN + str(next_level_number) + ".tscn"
	get_tree().change_scene_to_file(next_level_path)
