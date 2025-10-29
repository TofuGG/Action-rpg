extends Node2D

const speed = 30
var direction = 1

@onready var ray_cast_2dr: RayCast2D = $RayCast2DR
@onready var ray_cast_2dl: RayCast2D = $RayCast2DL
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

func _process(delta: float) -> void:
	if ray_cast_2dr.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	if ray_cast_2dl.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
	position.x += direction * speed * delta
