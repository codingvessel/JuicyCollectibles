extends AnimatedSprite2D


func _ready():
	var tween = get_tree().create_tween()
	tween.tween_property(self, "position", Vector2(position.x, position.y -30), 0.6).set_trans(Tween.TRANS_BOUNCE).set_ease(Tween.EASE_OUT)
	tween.parallel().tween_property(self, "modulate", Color(1,1,1,0), 0.6)
	tween.tween_callback(queue_free)
