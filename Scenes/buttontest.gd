extends Control

var Mango_Tango = preload("res://Levels/Mango Tango.tscn")
var level_scene = preload("res://Scenes/Level.tscn")

func _on_Button_pressed():
	var scene_instance = Mango_Tango.instance()
