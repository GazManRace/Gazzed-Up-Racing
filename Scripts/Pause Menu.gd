extends Control

var is_paused = false setget set_is_paused

func _on_PauseButton_pressed():
	self.is_paused = !is_paused
	
func _on_Resume_pressed():
	self.is_paused = false


#func _unhandled_input(event):
	#if event.is_action_pressed("pause"):
		#self.is_paused = !is_paused
	
func set_is_paused(value):
	is_paused = value
	get_tree().paused = is_paused
	visible = is_paused



func _on_Main_Menu_pressed():
	Characterselectionmanager.player = null
	Levelselectionmanager.level = null
	get_tree().current_scene.queue_free()
	self.is_paused = false
	BackTransition.change_scene("res://Scenes/main.tscn")

func _on_Backtolevels_pressed():
	self.is_paused = false
	BackTransition.change_scene("res://Scenes/level_test.tscn")

