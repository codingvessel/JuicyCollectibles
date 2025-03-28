extends Area2D

@onready
var collision_shape_2d = $CollisionShape2D

@onready
var audio_stream_player = $AudioStreamPlayer

@onready
var animated_sprite_2d = $AnimatedSprite2D

@onready
var collected_fx_template = preload("res://collected_fx.tscn")

@onready
var apple_vanish_fx_template = preload("res://apple_vanish_fx.tscn")


func _on_area_entered(area: Area2D) -> void:
	collision_shape_2d.set_deferred("disabled", true)
	visible = false
	audio_stream_player.play()
	
	var collected_fx_instance = collected_fx_template.instantiate()
	collected_fx_instance.position = position
	get_tree().get_root().add_child(collected_fx_instance)
	
	var apple_vanish_fx_instance = apple_vanish_fx_template.instantiate()
	apple_vanish_fx_instance.position = position
	apple_vanish_fx_instance.frame = animated_sprite_2d.frame
	get_tree().get_root().add_child(apple_vanish_fx_instance)
