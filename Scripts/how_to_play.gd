extends Control



func _on_back_button_pressed():
	SceneTransition.change_scene("res://Scenes/store_scene.tscn")


func _on_next_button_pressed():
	SceneTransition.change_scene("res://Scenes/Level.tscn")
