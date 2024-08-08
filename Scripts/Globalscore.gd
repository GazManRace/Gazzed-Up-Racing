extends Node

var coins_collected = 0
var levels = []
var unlockedlevels = 1


 

func save_level():
	var save_file = File.new()
	save_file.open("user://save_level.save", File.WRITE)
	var data_set = {
		'Levels' : levels,
		'U_levels' : unlockedlevels
	}
	save_file.store_var(data_set)
	save_file.close()
	
func load_level():
	var save_file = File.new()
	if !save_file.file_exists("user://save_level.save"):
		return
	save_file.open("user://save_level.save", File.READ)
	var data_set = save_file.get_var()
	levels = data_set['Levels']
	unlockedlevels = data_set['U_levels']
	save_file.close()



func save_game():
	var save_file = File.new()
	save_file.open("user://save_game.save", File.WRITE)
	var data = {
		'Coins' : coins_collected
	}
	save_file.store_var(data)
	save_file.close()
	
func load_game():
	var save_file = File.new()
	if !save_file.file_exists("user://save_game.save"):
		return
	save_file.open("user://save_game.save", File.READ)
	var data = save_file.get_var()
	coins_collected = data['Coins']
	save_file.close()

var store = {
			'bought' : [true, false, false, false, false, false, false]
}
var save_store_path = "user://save_store"


func save_store():
	var file = File.new()
	file.open(save_store_path, File.WRITE_READ)
	file.store_var(store)
	file.close()

func load_store():
	var file = File.new()
	if not file.file_exists(save_store_path):
		return false
	file.open(save_store_path, File.READ)
	store = file.get_var()
	file.close()
	return true

