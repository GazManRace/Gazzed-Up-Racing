extends Control


const LEVEL_BTN = preload("res://Scenes/lvl_button.tscn")

export(String, DIR) var dir_path 

onready var grid = $MarginContainer/VBoxContainer/GridContainer

func _ready():
	get_level(dir_path)
	
	
func get_level(path) -> void:
	var dir = Directory.new()
	if dir.open(path) == OK:
		dir.list_dir_begin()
		var file_name = dir.get_next()
		while file_name != "":
			print(file_name)
			create_level_btn('%s/%s' % [dir.get_current_dir(), file_name], file_name)
			file_name = dir.get_next()
		dir.list_dir_end()
	else:
		print('An error occured')
		
		
func create_level_btn(lvl_path: String, lvl_name:String) -> void:
	var btn = LEVEL_BTN.instance()
	btn.text = lvl_name
	btn.level_path = lvl_path
	grid.add_child(btn)
	
		

