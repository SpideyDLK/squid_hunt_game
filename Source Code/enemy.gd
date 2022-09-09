extends KinematicBody2D

export var speed : int = 300
export var gravity : = 1000
var flipped = false

var vel : = Vector2()

onready var enemySprite : = get_node("Enemy")
	
		
func _physics_process(delta: float) -> void:
	vel.x = 0
	
	if flipped:
		vel.x -= 200
	else:
		vel.x += 200
		
	vel = move_and_slide(vel,Vector2.UP)
	
	vel.y += gravity * delta
	
func die():
	self.queue_free()
	
func flip():
	if flipped:
		flipped = false
	else:
		flipped = true
	
func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		body.die()
		global.stop("Game Over")
		
