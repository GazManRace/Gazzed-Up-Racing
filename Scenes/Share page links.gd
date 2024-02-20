extends Control

export(int) var speed: int = 7
export(float) var rotation_speed: float = 0.1
var direction = Vector2(-1, 0)

onready var parallax = $ParallaxBackground
func _process(delta):
	parallax.scroll_offset += direction * speed * delta

func _ready():
	
	var tween = create_tween()
	tween.set_parallel(true)
	tween.tween_property($Gs, "position", Vector2(0,560.251),250)
	

func _on_Threads_pressed():
	OS.shell_open("https://www.threads.net/@gazzed_arcade")
func _on_Instagram_pressed():
	OS.shell_open("https://instagram.com/gazzed_arcade?igshid=OGQ5ZDc2ODk2ZA==")
func _on_Twitter_pressed():
	OS.shell_open("")
func _on_Facebook_pressed():
	OS.shell_open("https://www.facebook.com/profile.php?id=61554096129368&mibextid=ZbWKwL")
func _on_Back_pressed():
	get_tree().change_scene("res://Scenes/Main.tscn")
