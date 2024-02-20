extends Control

signal button_pressed_with_strength(strength)

func _input(event):
	if event is InputEventScreenTouch:
		var strength = Input.get_action_strength("touch_button_pressed")
		
		emit_signal("button_pressed_with_strength", strength)
		
