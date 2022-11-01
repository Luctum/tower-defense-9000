extends Node


var scene = preload("res://scenes/towers/tower.tscn")

func _ready():
	pass # Replace with function body.

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
			print("positionne la tour ", event.position)
			var instance = scene.instance()
			add_child(instance)
