extends Node

var wheels = []
var speed = 60000
var max_speed = 80
var players = []
var rotation_speed = 3000

func _ready():
	wheels = get_tree().get_nodes_in_group("wheel")
	
func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		for wheel in wheels:
			if wheel.angular_velocity < max_speed:
				wheel.apply_torque_impulse(speed * delta * 60)
		for player in players:
			player.apply_torque_impulse(rotation_speed * delta * 60)
			
	if Input.is_action_pressed("ui_left"):
		for wheel in wheels:
			if wheel.angular_velocity > -max_speed:
				wheel.apply_torque_impulse(-speed * delta * 60)
