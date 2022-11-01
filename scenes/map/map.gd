extends Node2D


var tower = preload("res://scenes/towers/tower.tscn")

func _ready():
	pass # Replace with function body.

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
			print("positionne la tour ", event.position)
			var instance = tower.instance()
			instance.set_position(Vector2(event.position))
			add_child(instance)


