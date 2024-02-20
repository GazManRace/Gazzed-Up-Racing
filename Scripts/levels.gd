extends Control

func _ready():
	for i in $levels.get_children():
		i.text = i.name
	for i in range($levels.get_child_count()):
		Global.levels.append(i+1)
	
	for level in $levels.get_children():
		if str2var(level.name) in range(Global.unlockedlevels+1):
			level.disabled = false
			level.connect('pressed', self, 'change_level', [level.name])
		else:
			level.disabled = true
			
			
func change_level(lvl_no):
	SceneTransition.change_scene("res://Levels/Levels/level"+ lvl_no +".tscn")
	



func _on_Button_pressed():
	SceneTransition.change_scene("res://Scenes/Main.tscn")
