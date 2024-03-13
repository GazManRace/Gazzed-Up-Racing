extends Label


func _process(delta):
	self.text = str(Globalscore.coins_collected)
