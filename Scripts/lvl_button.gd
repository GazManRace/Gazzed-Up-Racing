extends Button

export(String, FILE) var level_path


func _on_Button_pressed():
	if level_path == null:
		return
	SceneTransition.change_scene(level_path)
