extends Control

func _process(delta):
	$characters.position.x = -$HScrollBar.value


var current_selected_character_name
var selection_area = preload("res://Scenes/selection_area.tscn")

func _ready():
	for character in $characters.get_children():
		var selection_area_ins = selection_area.instance()
		character.add_child(selection_area_ins)

func character_selected(character_name):
	current_selected_character_name = character_name


func _on_Button_pressed():
	if current_selected_character_name:
		GlobalCharacter.set_player_character(current_selected_character_name)
		get_tree().change_scene("res://Scenes/Level.tscn")
	print("Scene ooogo")
