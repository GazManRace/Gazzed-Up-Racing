extends Label

func add_distance():
	var car_distance = int(str(get_tree().get_root().position.x))
	self.text = car_distance
