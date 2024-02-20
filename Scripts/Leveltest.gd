extends Control

export(int) var speed: int = 7
export(float) var rotation_speed: float = 0.1
var direction = Vector2(-1, 0)
onready var parallax = $ParallaxBackground

func _process(delta):
	parallax.scroll_offset += direction * speed * delta
	$control1.position.x = -$HScrollBar.value

func _ready():
	for i in $control1/control.get_children():
		i.text = i.name
	for i in range($control1/control.get_child_count()):
		Global.levels.append(i+1)
	
	for level in $control1/control.get_children():
		if str2var(level.name) in range(Global.unlockedlevels+1):
			level.disabled = false
			level.connect('pressed', self, 'change_level', [level.name])
		else:
			level.disabled = true
			
			
#func change_level(lvl_no):
	#SceneTransition.change_scene("res://Levels/Levels/level"+ lvl_no +".tscn")



func _on_Button_pressed():
	SceneTransition.change_scene("res://Scenes/Main.tscn")


func _on_Start_pressed():
	SceneTransition.change_scene("res://Scenes/Level.tscn")

#
#
var levels = [
	preload("res://Levels/Levels/level1.tscn"),
	preload("res://Levels/Levels/level2.tscn"),
	preload("res://Levels/Levels/level3.tscn"),
	preload("res://Levels/Levels/level4.tscn"),
	preload("res://Levels/Levels/level5.tscn"),
	preload("res://Levels/Levels/level6.tscn"),
	preload("res://Levels/Levels/level7.tscn"),
	preload("res://Levels/Levels/level8.tscn"),
	preload("res://Levels/Levels/level9.tscn"),
	preload("res://Levels/Levels/level10.tscn"),
	preload("res://Levels/Levels/level11.tscn"),
	preload("res://Levels/Levels/level12.tscn"),
	preload("res://Levels/Levels/level13.tscn"),
	preload("res://Levels/Levels/level14.tscn"),
	preload("res://Levels/Levels/level15.tscn"),
	preload("res://Levels/Levels/level6.tscn"),
	preload("res://Levels/Levels/level17.tscn")
]
func _on_1_pressed():
	if (Levelselectionmanager.level == null):
		Levelselectionmanager.level = levels[0]

func _on_2_pressed():
	if (Levelselectionmanager.level == null):
		Levelselectionmanager.level = levels[1]

func _on_3_pressed():
	if (Levelselectionmanager.level == null):
		Levelselectionmanager.level = levels[2]

func _on_4_pressed():
	if (Levelselectionmanager.level == null):
		Levelselectionmanager.level = levels[3]
#
func _on_5_pressed():
	if (Levelselectionmanager.level == null):
		Levelselectionmanager.level = levels[4]
#
func _on_6_pressed():
	if (Levelselectionmanager.level == null):
		Levelselectionmanager.level = levels[5]

func _on_7_pressed():
	if (Levelselectionmanager.level == null):
		Levelselectionmanager.level = levels[6]

func _on_8_pressed():
	if (Levelselectionmanager.level == null):
		Levelselectionmanager.level = levels[7]

func _on_9_pressed():
	if (Levelselectionmanager.level == null):
		Levelselectionmanager.level = levels[8]
#
func _on_10_pressed():
	if (Levelselectionmanager.level == null):
		Levelselectionmanager.level = levels[9]

func _on_11_pressed():
	if (Levelselectionmanager.level == null):
		Levelselectionmanager.level = levels[10]

func _on_12_pressed():
	if (Levelselectionmanager.level == null):
		Levelselectionmanager.level = levels[11]

func _on_13_pressed():
	if (Levelselectionmanager.level == null):
		Levelselectionmanager.level = levels[12]
#
func _on_14_pressed():
	if (Levelselectionmanager.level == null):
		Levelselectionmanager.level = levels[13]

func _on_15_pressed():
	if (Levelselectionmanager.level == null):
		Levelselectionmanager.level = levels[14]

func _on_16_pressed():
	if (Levelselectionmanager.level == null):
		Levelselectionmanager.level = levels[15]

func _on_17_pressed():
	if (Levelselectionmanager.level == null):
		Levelselectionmanager.level = levels[16]

func _on_18_pressed():
	if (Levelselectionmanager.level == null):
		Levelselectionmanager.level = levels[17]
#
