extends RigidBody2D
#(
var wheels = []
var speed = 60000
var max_speed = 50
var fuel = 100
var other_scene




func _ready():
#	GlobalButton.connect("GoForward", self, "forward_pressed")
	wheels = get_tree().get_nodes_in_group("wheel")
	
	#et_parent().update_fuel_UI(fuel)
	#MusicController.audio_stream_player.stop()

func forward_pressed(delta):
	use_fuel(delta)
	for wheel in wheels:
		wheel.angular_velocity = 60



func game_over_fuel():
	if $GameOverTimer.is_stopped():
		$GameOverTimer.start()

func forward(delta):
	if fuel > 0:
		$GameOverTimer.stop()
		if Input.get_action_strength("ui_right"):
			use_fuel(delta)
			for wheel in wheels:
				wheel.angular_velocity = 60

func _back(delta):
	if fuel > 0:
		$GameOverTimer.stop()
		if Input.get_action_strength("ui_left"):
			use_fuel(delta)
			for wheel in wheels:
				wheel.angular_velocity = -50
		
	
func _physics_process(delta):
	game_over_fuel()
	forward(delta)
	_back(delta)
	reset_rotation()
	

func reset_rotation():
	if Input.is_action_pressed("ui_down"):  
		self.set_rotation_degrees(0.0)
		
		
func refuel():
	fuel = 100
	get_parent().update_fuel_UI(fuel)
	
func use_fuel(delta):
	fuel -= 5 * delta
	fuel = clamp(fuel, 0, 100)
	get_parent().update_fuel_UI(fuel)
	
	


func _on_GameOverTimer_timeout():
	get_tree().change_scene("res://Scenes/GameOverScreen.tscn")






