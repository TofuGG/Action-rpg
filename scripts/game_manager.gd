extends Node

@onready var coin_value: Label = $"../UI/CoinPanel/CoinValue"

var score = 0 

func add_point():
	score += 1
	#coin_label.text = "Coin: " + str(score)
	coin_value.text = str(score)
	
