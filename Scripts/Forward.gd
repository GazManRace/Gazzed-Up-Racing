extends TouchScreenButton

#func ready():
	#connect("pressed", self, "on_Forward_pressed")
	



func _on_Forward_pressed():
	emit_signal("button_pressed")
