extends Area2D

@onready var timer: Timer = $Timer
@onready var deadred: Panel = get_node("/root/Game/UI/deadred")
@onready var anim: AnimationPlayer = get_node("/root/Game/UI/deadred/deadAnim")

func _on_body_entered(body: Node2D) -> void:
	if deadred:
		deadred.show()
	if anim:
		anim.play("dead")
	Engine.time_scale = 0.3
	body.get_node("CollisionShape2D").queue_free()
	timer.start()
	

func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	if anim:
		anim.stop()
	if deadred:
		deadred.modulate.a = 0.0 
		deadred.hide()
	get_tree().reload_current_scene()
