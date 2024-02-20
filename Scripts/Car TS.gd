extends RigidBody2D

func _ready():
	pass

func _physics_process(delta):
	var dir = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	var vel = dir * 50 
	$Wheel_F.angular_velocity = vel 
	$Wheel_R.angular_velocity = vel  
	reset_rotation()

			 

func reset_rotation():
	if Input.is_action_pressed("ui_down"):  
		self.set_rotation_degrees(0.0)

		
	#$Wheel_F.apply_torque_impulse(vel)
	#$Wheel_R.apply_torque_impulse(vel)

