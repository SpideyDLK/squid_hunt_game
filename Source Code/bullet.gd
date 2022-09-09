extends Area2D

var speed = 500
var flip
onready var bulletSprite : = get_node("bullet")

func init(playerFlipped: bool):
	flip = playerFlipped
	
func _physics_process(delta):
	if flip:
		bulletSprite.flip_h = true
		position.x -= speed * delta
	else:
		position.x += speed * delta
	
	

func _on_bullet_body_entered(body):
	if body.is_in_group("enemy"):
		global.isKilled = true
		global.score += 15
		global.enemies_killed += 1
		if(global.enemies_killed == 4):
			global.stop("You Win")
		body.die()
		self.queue_free()
