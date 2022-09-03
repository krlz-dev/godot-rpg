extends Node2D

var grassEffect = preload("res://Effects/GrassEffect.tscn" ).instance()

func create_grass_effect():
	var world = get_tree().current_scene
	get_parent().add_child(grassEffect)
	grassEffect.global_position = global_position
 
func _on_Hurtbox_area_entered(area):
	create_grass_effect()
	queue_free()
