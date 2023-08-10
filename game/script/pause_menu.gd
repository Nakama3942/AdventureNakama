extends CanvasLayer

func _process(delta):
	if Input.is_action_pressed("pause"):
		get_tree().paused = true
		$".".show()

func _on_continue_pressed():
	$".".hide()
	get_tree().paused = false

func _on_quit_pressed():
	get_tree().quit()
