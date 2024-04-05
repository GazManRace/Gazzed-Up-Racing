extends Control

export(int) var speed: int = 7
export(float) var rotation_speed: float = 0.1

var direction = Vector2(-1, 0)
onready var parallax = $ParallaxBackground
func _process(delta):
	parallax.scroll_offset += direction * speed * delta



var master_bus = AudioServer.get_bus_index("Master")


func _on_Volume_pressed():
	AudioServer.set_bus_mute(master_bus, not AudioServer.is_bus_mute(master_bus))

func _on_Back_pressed():
	SceneTransition.change_scene("res://Scenes/main.tscn")
