extends Node2D

signal forward_pressed()

func _ready():
	pass

func _on_Button_pressed():
	emit_signal("forward_pressed")
	
	
