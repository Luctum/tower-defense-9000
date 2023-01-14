extends Node2D

var health = 100


func _ready():
	#Load the first level
	var level1 = load("res://scenes/levels/level1.tscn").instance() 
	level1.connect("player_hit", self, "_on_player_hit")
	add_child(level1)


func _on_player_hit():
	health -= 20
	print(health)
	$HUD.update_health_bar(health)
