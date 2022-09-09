extends Node2D

func _process(delta):
	get_node("score").text = str(global.score)
	if global.isKilled:
		get_node("killSound").play()
		global.isKilled = false
