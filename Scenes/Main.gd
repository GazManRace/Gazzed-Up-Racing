extends Node2D


export(int) var speed: int = 7
export(float) var rotation_speed: float = 0.1
var direction = Vector2(-1, 0)
onready var parallax = $ParallaxBackground
onready var buttona_sound = $ButtonSound
onready var how_to_play = $howtoplay


func _ready():
	Globalscore.load_game()
	Globalscore.load_level()
	MusicController.change_random_song()

func button_sound():
	pass

func _on_Start_pressed():
	button_sound()
	SceneTransition.change_scene("res://Scenes/store_scene.tscn")
	
	
func _on_Settings_pressed():
	button_sound()
	SceneTransition.change_scene("res://Scenes/settings_scene.tscn")
	
func _on_Quit_pressed():
	get_tree().quit()
	
func _on_Share_pressed():
	button_sound()
	SceneTransition.change_scene("res://Scenes/share_page.tscn")
	
func _on_Shop_pressed():
	pass


func _process(delta):
	parallax.scroll_offset += direction * speed * delta
	#direction = direction.rotated(rotation_speed * delta)

func _on_close_button_pressed():
	how_to_play.hide()

func _on_infobutton_pressed():
	how_to_play.show()


func _on_infoButton_pressed():
	how_to_play.show()
