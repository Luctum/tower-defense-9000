extends Node2D

signal player_hit

func _ready():
	pass

func update_health_bar(health):
	var current_health_bar = $HUD/TopBar/CurrentHealth
	$HUD/TopBar/CurrentHealth/Tween.interpolate_property(current_health_bar, 'value', current_health_bar.value, health, 0.3, Tween.TRANS_CIRC)
	$HUD/TopBar/CurrentHealth/Tween.start()
