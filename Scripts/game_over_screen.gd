extends Control

func _on_MainMenu_pressed():
	BackTransition.change_scene("res://Scenes/main.tscn")
	Characterselectionmanager.player = null
	Levelselectionmanager.level = null
