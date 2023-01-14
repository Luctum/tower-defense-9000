extends PathFollow2D

var speed = 500
signal player_hit

func _physics_process(delta):
	if unit_offset == 1.0:
		emit_signal("player_hit")
		queue_free()
	move(delta)


func move(delta):
	set_offset(get_offset() + speed * delta)
	
