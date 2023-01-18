extends PathFollow2D

var speed = 200
var life = 3 
signal player_hit


func _ready():
	add_to_group("ennemies")

func _physics_process(delta):
	if unit_offset == 1.0:
		emit_signal("player_hit")
		queue_free()
	move(delta)


func move(delta):
	set_offset(get_offset() + speed * delta)
	


func _on_Area2D_area_entered(area):
	print("HIT FUCK")
	life -= 1
	if (life <= 0):
		queue_free()
