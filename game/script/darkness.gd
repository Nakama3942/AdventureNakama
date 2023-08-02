extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Вызывается, когда другой объект с физическим телом входит в зону коллизии
func _on_body_entered(body):
	# Проверяем, что объект, вошедший в зону коллизии, это игрок
	if body.is_in_group("Player"):
		if $AnimationPlayer.is_playing():
			$AnimationPlayer.get_animation("out_stop").track_set_key_value(0, 0, $DirectionalLight2D.energy)
			$AnimationPlayer.play("out_stop")
		else:
			$AnimationPlayer.play("in")

func _on_body_exited(body):
	# Проверяем, что объект, вошедший в зону коллизии, это игрок
	if body.is_in_group("Player"):
		if $AnimationPlayer.is_playing():
			$AnimationPlayer.get_animation("in_stop").track_set_key_value(0, 0, $DirectionalLight2D.energy)
			$AnimationPlayer.play("in_stop")
		else:
			$AnimationPlayer.play("out")
