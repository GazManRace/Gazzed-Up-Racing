extends Node

func _ready():
	$Main.connect("level_changed", self, "handle_level_changed")
	
	
