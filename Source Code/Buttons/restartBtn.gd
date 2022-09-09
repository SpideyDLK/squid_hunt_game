extends Button


func _on_restartBtn_pressed():
	global.score = 0
	global.enemies_killed = 0
	get_tree().change_scene("res://mainScene.tscn")
