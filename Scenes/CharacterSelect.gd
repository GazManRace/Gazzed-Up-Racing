extends Node2D


func _process(delta):
	match Game1.PlayerSelect:
		0:
			get_node("PlayerSelect").play("Player0")
		1:
			get_node("PlayerSelect").play("Player1")
		2:
			get_node("PlayerSelect").play("Player2")
		3:
			get_node("PlayerSelect").play("Player3")
		4:
			get_node("PlayerSelect").play("Player4")
		5:
			get_node("PlayerSelect").play("Player5")
		6:
			get_node("PlayerSelect").play("Player6")

func _on_previous_pressed():
	if Game1.PlayerSelect > 0:
		Game1.PlayerSelect -= 1


func _on_next_pressed():
	if Game1.PlayerSelect < 6:
		Game1.PlayerSelect += 1


func _on_Button_pressed():
	get_tree().change_scene("res://Levels/Jungle Jammer scene.tscn")


func _on_nextupper_pressed():
	get_tree().change_scene("res://Levels/Dirt Master/Bike scene.tscn")


func _on_backupper_pressed():
	get_tree().change_scene("res://Scenes/Main.tscn")
