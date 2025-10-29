extends Area2D




func _on_body_entered(body: Node2D) -> void:
	print("Plus 1 coin!")
	queue_free()
