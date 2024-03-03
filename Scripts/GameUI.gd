extends CanvasLayer

signal move


func _on_Button_pressed():
	emit_signal("move")

