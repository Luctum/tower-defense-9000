extends Node2D


var tower = preload("res://scenes/towers/tower.tscn")




func _ready():
	pass # Replace with function body.

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
			var world_to_map = $TileMap.world_to_map(event.position)
			var local_position = $TileMap.map_to_world(world_to_map)
			var world_position = $TileMap.to_global(local_position)
			
			if !$TileMap.get_collision_mask_bit($TileMap.get_cellv(world_position)):
				print("positionne la tour ", world_position)
				var instance = tower.instance()
				instance.set_position(Vector2(local_position))
				add_child(instance)

	
