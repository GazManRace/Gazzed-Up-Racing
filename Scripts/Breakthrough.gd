extends Node2D

onready var pause_menu = $PauseMenu
var paused = false


func _ready():
	pass
	#MusicController.audio_stream_player.stop()
	
	
var coins_collected = 0

func add_coins(amount):
	coins_collected += amount
	$GameUI/Coin/Control/Label.text = str(coins_collected)

func update_fuel_UI(value):
	$GameUI/Fuel/Control/ProgressBar.value = value
	var stylebox = $GameUI/Fuel/Control/ProgressBar.get('custom_styles/fg')
	stylebox.bg_color.h = lerp(0, 0.3, value / 100)
	
































#func _process(delta):
	#if Input.is_action_pressed("pause"):
		#pauseMenu()
	
#func pauseMenu():
	#if paused:
		#pause_menu.hide()
		#Engine.time_scale = 1
	#else:
		#pause_menu.show()
		#Engine.time_scale = 0
		
	

		
