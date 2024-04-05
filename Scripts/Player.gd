extends RigidBody2D

var wheels = []
var speed = 60000
var max_speed = 50
var fuel = 100
var game_over_screen 

func _ready():
	wheels = get_tree().get_nodes_in_group("wheel")
	get_parent().update_fuel_UI(fuel)

func forward(_delta):
	if fuel > 0:
		$GameOverTimer.stop()
		if Input.get_action_strength("ui_right"):
			self.apply_torque_impulse(-9000)
			use_fuel()
			for wheel in wheels:
				wheel.angular_velocity = 35
			var car_distance = int(self.position.x/100)
			print(car_distance)

func _back(_delta):
	if fuel > 0:
		$GameOverTimer.stop()
		if Input.get_action_strength("ui_left"):
			self.apply_torque_impulse(9000)
			use_fuel()
			for wheel in wheels:
				wheel.angular_velocity = -35

func _physics_process(delta):
	game_over_fuel()
	forward(delta)
	_back(delta)
	reset_rotation()

func reset_rotation():
	if Input.is_action_pressed("ui_down"):  
		self.rotation_degrees = 0

func refuel():
	fuel = 100
	get_parent().update_fuel_UI(fuel)

func game_over_fuel():
	if $GameOverTimer.is_stopped():
		$GameOverTimer.start()

func use_fuel():
	fuel -= 1.5
	fuel = clamp(fuel, 0, 100)
	get_parent().update_fuel_UI(fuel)


func _on_GameOverTimer_timeout():
# warning-ignore:return_value_discarded
	BackTransition.change_scene("res://Scenes/game_over_screen.tscn")

func _on_Forward_button_down():
	if fuel > 0:
		self.apply_torque_impulse(20000)
		$GameOverTimer.stop()
		use_fuel()
		for wheel in wheels:
			wheel.angular_velocity = 50

func _on_Backward_pressed():
	if fuel > 0:
		self.apply_torque_impulse(-20000)
		$GameOverTimer.stop()
#		apply_torque_impulse(-100 * 60)
		use_fuel()
		for wheel in wheels:
			wheel.angular_velocity = -50

