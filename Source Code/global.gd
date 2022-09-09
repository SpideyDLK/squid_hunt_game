extends Node

var score = 0
var enemies_killed = 0
var stopReason
var isKilled = false

func stop(var reason):
	stopReason = reason
	if(reason == "You Win"):
		yield(get_tree().create_timer(1),"timeout")
	get_tree().change_scene("res://gameOverScreen.tscn")
	
