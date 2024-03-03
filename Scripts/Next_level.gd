extends CanvasLayer

#
#onready var givenPlayer = Characterselectionmanager.player.instance()
#onready var givenLevel = Levelselectionmanager.level.instance()

onready var current_player = Characterselectionmanager.player

func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/level_test.tscn")




#	spawn_characters()
#	spawn_level()
#
#func spawn_level():
#	call_deferred("add_child", givenLevel)
#
#func spawn_characters():
#	call_deferred("add_child", givenPlayer)
