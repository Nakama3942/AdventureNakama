extends Control

func _on_new_pressed():
	get_tree().change_scene_to_file("res://scene/level/castle.tscn")

func _on_load_pressed():
	pass # Replace with function body.

func _on_settings_pressed():
	pass # Replace with function body.

func _on_quit_pressed():
	get_tree().quit()
