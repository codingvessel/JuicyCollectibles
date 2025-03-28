extends Area2D

@onready
var animated_sprite_2d = $AnimatedSprite2D

func _process(delta: float) -> void:
	var movement = 0
	if Input.is_action_pressed("right"):
		movement = 2
	if Input.is_action_pressed("left"):
		movement = -2

	position.x += movement 

	if movement != 0:
		animated_sprite_2d.play("run")
		animated_sprite_2d.flip_h = movement < 0
	else:
		animated_sprite_2d.play("idle")
