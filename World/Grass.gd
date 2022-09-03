extends Node2D

func _process(delta):
	if Input.is_action_just_released("attack"):
		var grassEffect = load("res://Effects/GrassEffect.tscn" ).instance()
		var world = get_tree().current_scene
		world.add_child(grassEffect)
		grassEffect.global_position = global_position
		queue_free() #remove item as soon animation finish
		
