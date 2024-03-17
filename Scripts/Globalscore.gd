extends Node

var coins_collected = 0



func save_game():
	var save_file = File.new()
	save_file.open("user://save_game.save", File.WRITE)
	var data = {
		"Coins":coins_collected
	}
	save_file.store_var(data)
	save_file.close()
	
func load_game():
	var save_file = File.new()
	if !save_file.file_exists("user://save_game.save"):
		return
	save_file.open("user://save_game.save", File.READ)
	var data = save_file.get_var()
	coins_collected = data["Coins"]
	save_file.close()
