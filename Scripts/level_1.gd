extends Node2D

onready var pause_menu = $PauseMenu
var paused = false

onready var next_screen = get_node("Next_level")


func _on_body_body_entered(body):
	if body.is_in_group("player"):
		next_screen.show()
		print("Body Entered")

func _ready():
	pass
	#MusicController.audio_stream_player.stop()
	
	
var coins_collected = 0


func update_fuel_UI(value):
	$GameUI/Fuel/Control/ProgressBar.value = value
	var stylebox = $GameUI/Fuel/Control/ProgressBar.get('custom_styles/fg')
	stylebox.bg_color.h = lerp(0, 0.3, value / 100)
