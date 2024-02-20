extends Button

onready var character = get_parent()
onready var character_selection_scene = get_parent()
signal character_selected

func _ready():
	connect("character_selected",character_selection_scene, "character_selected1")

func _on_Button_pressed():
	emit_signal("character_selected",character.name)
	print("DTHDFGH")
