extends Node2D


export(int) var speed: int = 7
export(float) var rotation_speed: float = 0.1
var direction = Vector2(-1, 0)
onready var parallax = $ParallaxBackground

func _ready():
	Globalscore.load_game()
	Globalscore.load_level()

func _on_Start_pressed():
	get_tree().change_scene("res://Scenes/level_test.tscn")
	
func _on_Settings_pressed():
	SceneTransition.change_scene("res://Scenes/settings_scene.tscn")
	
func _on_Quit_pressed():
	get_tree().quit()
	
func _on_Share_pressed():
	SceneTransition.change_scene("res://Scenes/share_page.tscn")
	
func _on_Shop_pressed():
	pass


func _process(delta):
	parallax.scroll_offset += direction * speed * delta
	#direction = direction.rotated(rotation_speed * delta)

#
#
#func _ready():
#	MusicController.change_random_song()
