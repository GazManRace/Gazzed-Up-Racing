extends Control

var current = 0

func update_sprite(val):
	current += val
	current = min(current, 6)
	current = max(0, current)
	print(current)
	$Sprite.frame = current

func _on_prev_pressed():
	update_sprite(-1)

func _on_next_pressed():
	update_sprite(1)
	


func _on_TextureButton_pressed():
	get_tree().change_scene("res://Scenes/Main.tscn")
