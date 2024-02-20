extends Node


var next_level = null

onready var current_level = $GrassLevel


func _ready() -> void:
	current_level.connect("level_changed", self, "handle_level_changed")
	


func handle_level_changed(current_level_name: String):
	var next_level_name: String

	match current_level_name:
		"Main":
			next_level_name = "Store"
#		"desert":
#			next_level_name = "Grass"
		_:
			return

	next_level = load("res://Scenes/Store.tscn").instance()
	add_child(next_level)
	next_level.connect("level_changed", self, "handle_level_changed")
