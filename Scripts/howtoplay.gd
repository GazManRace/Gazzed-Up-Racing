extends CanvasLayer

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

onready var window = $howtoplay
func _on_close_button_pressed():
	window.hide()
