extends RigidBody2D

var wheels = []
var speed = 60000
var max_speed = 50
var fuel = 100
var other_scene

func _ready():
	wheels = get_tree().get_nodes_in_group("wheel")
	#GlobalButton.connect("GoForward", self, "forward_pressed")
	#get_parent().update_fuel_UI(fuel)
	#MusicController.audio_stream_player.stop()

#func _on_Forward_pressed():
#	if fuel > 0:
#		$GameOverTimer.stop()
#		apply_torque_impulse(1000 * 60)
#		use_fuel()
#		for wheel in wheels:
#			wheel.angular_velocity = 60
			
func _on_Backward_pressed():
	if fuel > 0:
		$GameOverTimer.stop()
		apply_torque_impulse(-100 * 60)
		use_fuel()
		for wheel in wheels:
			wheel.angular_velocity = -50


func forward(delta):
	if fuel > 0:
		$GameOverTimer.stop()
		if Input.get_action_strength("ui_right"):
			use_fuel()
			for wheel in wheels:
				wheel.angular_velocity = 60

func _back(delta):
	if fuel > 0:
		$GameOverTimer.stop()
		if Input.get_action_strength("ui_left"):
			use_fuel()
			for wheel in wheels:
				wheel.angular_velocity = -50

func _physics_process(delta):
	game_over_fuel()
	forward(delta)
	_back(delta)
	reset_rotation(delta)

func reset_rotation(delta):
	if Input.is_action_pressed("ui_down"):  
		self.set_rotation_degrees(0.0)

func refuel(delta):
	fuel = 100
	get_parent().update_fuel_UI(fuel)

func game_over_fuel():
	if $GameOverTimer.is_stopped():
		$GameOverTimer.start()

func use_fuel():
	fuel -= 0.01
	fuel = clamp(fuel, 0, 100)
	get_parent().update_fuel_UI(fuel)
	

func _on_GameOverTimer_timeout():
	get_tree().change_scene("res://Scenes/game_over_screen.tscn")


func _on_Forward_button_down():
	if fuel > 0:
		$GameOverTimer.stop()
		use_fuel()
		for wheel in wheels:
			wheel.angular_velocity = 50
