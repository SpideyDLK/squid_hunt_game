extends Control

func _ready():
	
	
	yield(get_tree().create_timer(1),"timeout")
	get_node("beep").play()
	get_node("countDown").text = "3"
	
	yield(get_tree().create_timer(1),"timeout")
	get_node("countDown").text = "2"
	
	yield(get_tree().create_timer(1),"timeout")
	get_node("countDown").text = "1"
	
	yield(get_tree().create_timer(1),"timeout")
	get_node("countDown").text = "Let's Go"
	
	yield(get_tree().create_timer(1),"timeout")
	get_tree().change_scene("res://mainScene.tscn")

	

