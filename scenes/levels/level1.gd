extends Node2D

signal player_hit
 
func _ready():
	yield(get_tree().create_timer(1), "timeout")
	show_title()
	$Music.play()
	# Wait for the right moment in the music before spawning ennemies :p
	yield(get_tree().create_timer(7.3), "timeout")
	start_wave()

func start_wave():
	for i in 5:
		$Spawn.play()
		var new_ennemy = load("res://scenes/ennemies/ennemy.tscn").instance()
		$Path2D.add_child(new_ennemy, true)
		new_ennemy.connect("player_hit", self, "_on_player_hit")
		yield(get_tree().create_timer(0.7), "timeout")
		
func _on_player_hit():
	$Hit.play()
	emit_signal("player_hit")

func show_title():
	$CanvasModulate/AnimationPlayer.play("level1_intro")

