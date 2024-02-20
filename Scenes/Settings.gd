extends Control

export(int) var speed: int = 7
export(float) var rotation_speed: float = 0.1

var direction = Vector2(-1, 0)
onready var parallax = $ParallaxBackground
func _process(delta):
	parallax.scroll_offset += direction * speed * delta



var master_bus = AudioServer.get_bus_index("Master")

func _ready():
	
	var tween = create_tween()
	tween.set_parallel(true)
	tween.tween_property($Sprite, "position", Vector2(0,560.251),300)
	tween.tween_property($Sprite2, "position", Vector2(0,560.251),300)
	#Soundtrack.change_random_song()

func _on_Volume_pressed():
	
	AudioServer.set_bus_mute(master_bus, not AudioServer.is_bus_mute(master_bus))

func _on_Back_pressed():
	get_tree().change_scene("res://Scenes/Main.tscn")
