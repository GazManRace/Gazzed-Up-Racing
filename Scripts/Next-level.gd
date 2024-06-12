extends Control



func _on_backtolevels_pressed():
	Characterselectionmanager.player = null
	Levelselectionmanager.level = null
	get_tree().current_scene.queue_free()
	SceneTransition.change_scene("res://Scenes/level_test.tscn")
