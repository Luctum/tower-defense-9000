extends Node2D



func _ready():
	set_as_toplevel(true)
	
func _process(delta):
	var bulletspeed = 500
	move_local_x(delta*bulletspeed)
	
func _on_Bullet_body_entered(body):
	queue_free()

func _on_RigidBody2D_area_entered(area):
	queue_free()
