extends TouchScreenButton

signal forward_pressed()
signal button_pressed(delta)

func _input(event):
	if event is InputEventScreenTouch and event.is_pressed():
		emit_signal("button_pressed")
		
func _on_Button_pressed():
	emit_signal("forward_pressed")
