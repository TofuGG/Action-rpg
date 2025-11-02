extends Node

@onready var coin_value: Label = $"../UI/CoinPanel/CoinValue"
@onready var control: Node2D = $"../UI/Control"


var score: int = 0

func _process(_delta: float) -> void:
	#control.hide()
	pass
	
func add_point():
	score += 1
	#coin_label.text = "Coin: " + str(score)
	coin_value.text = str(score)

func score_return() -> int:
	return score
