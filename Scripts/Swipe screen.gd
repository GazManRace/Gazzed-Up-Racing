extends Control

var currentSelection = 0
var maxSelection = 2
var swipe_tolerance = 50

func input(event):
	var currentSelelction = 0
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT and event.pressed:
		var click_position = event.position.x
		
		if click_position < rect_size.x / 2:
			currentSelection = (currentSelection - 1 + maxSelection) % maxSelection
		elif click_position > rect_size.x / 2:
			currentSelection = (currentSelection + 1 - maxSelection) % maxSelection
