extends Button

onready var character = get_parent()
signal character_selected

func _on_Button_pressed():
	emit_signal("character_selected",character.name)
	
	
