extends Control



func _on_Forward_pressed():
	emit_signal("Forward_pressed")


func _on_Back_pressed():
	emit_signal("Back_pressed")
