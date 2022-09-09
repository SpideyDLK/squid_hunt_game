extends Area2D

func _on_coin_body_entered(body):
	if body.is_in_group("player"):
		body.get_node("coinCollect").play()
		global.score += 5
		self.queue_free()
