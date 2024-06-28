extends Control


onready var start_button = $Start


export(int) var speed: int = 7
export(float) var rotation_speed: float = 0.1
var direction = Vector2(-1, 0)
onready var parallax = $ParallaxBackground



func _process(delta):
	parallax.scroll_offset += direction * speed * delta
	$control1.position.x = -$HScrollBar.value

onready var arrow_signal = $signalshow


func _ready():
	for i in $control1/control.get_children():
		i.text = i.name
	for i in range($control1/control.get_child_count()):
		Globalscore.levels.append(i+1)
	for level in $control1/control.get_children():
		if str2var(level.name) in range(Globalscore.unlockedlevels+1):
			level.disabled = false
			level.connect('pressed', self, 'change_level', [level.name])
		else:
			level.disabled = true

#
#
#func _on_Button_pressed():
#	SceneTransition.change_scene("res://Scenes/Main.tscn")
#
func button_start():
	start_button.show()

func _on_1_pressed():
	if (Levelselectionmanager.level == null):
		Levelselectionmanager.level = load("res://Levels/Levels/level_1.tscn")
	button_start()

func _on_2_pressed():
	if (Levelselectionmanager.level == null):
		Levelselectionmanager.level = load("res://Levels/Levels/level_2.tscn")
	button_start()
#
func _on_3_pressed():
	if (Levelselectionmanager.level == null):
		Levelselectionmanager.level = load("res://Levels/Levels/level_3.tscn")
	button_start()
#
func _on_4_pressed():
	if (Levelselectionmanager.level == null):
		Levelselectionmanager.level = load("res://Levels/Levels/level_4.tscn")
	button_start()
##
func _on_5_pressed():
	if (Levelselectionmanager.level == null):
		Levelselectionmanager.level = load("res://Levels/Levels/level_5.tscn")
	button_start()
##
func _on_6_pressed():
	if (Levelselectionmanager.level == null):
		Levelselectionmanager.level = load("res://Levels/Levels/level_6.tscn")
	button_start()
#
func _on_7_pressed():
	if (Levelselectionmanager.level == null):
		Levelselectionmanager.level = load("res://Levels/Levels/level_7.tscn")
	button_start()
#
func _on_8_pressed():
	if (Levelselectionmanager.level == null):
		Levelselectionmanager.level = load("res://Levels/Levels/level_8.tscn")
	button_start()
#
func _on_9_pressed():
	if (Levelselectionmanager.level == null):
		Levelselectionmanager.level = load("res://Levels/Levels/level_9.tscn")
	button_start()
#
func _on_10_pressed():
	if (Levelselectionmanager.level == null):
		Levelselectionmanager.level = load("res://Levels/Levels/level_10.tscn")
	button_start()

func _on_11_pressed():
	if (Levelselectionmanager.level == null):
		Levelselectionmanager.level = load("res://Levels/Levels/level_11.tscn")
	button_start()

func _on_12_pressed():
	if (Levelselectionmanager.level == null):
		Levelselectionmanager.level = load("res://Levels/Levels/level_13.tscn")
	button_start()

func _on_13_pressed():
	if (Levelselectionmanager.level == null):
		Levelselectionmanager.level = load("res://Levels/Levels/level_14.tscn")
	button_start()
#
func _on_14_pressed():
	if (Levelselectionmanager.level == null):
		Levelselectionmanager.level = load("res://Levels/Levels/level_15.tscn")
	button_start()

func _on_15_pressed():
	if (Levelselectionmanager.level == null):
		Levelselectionmanager.level = load("res://Levels/Levels/level_16.tscn")
	button_start()

func _on_16_pressed():
	if (Levelselectionmanager.level == null):
		Levelselectionmanager.level = load("res://Levels/Levels/level_17.tscn")
	button_start()
#
#func _on_17_pressed():
#	if (Levelselectionmanager.level == null):
#		Levelselectionmanager.level = load("res://Levels/Levels/level_1.tscn")
##
##func _on_18_pressed():
##	if (Levelselectionmanager.level == null):
##		Levelselectionmanager.level = level18
#
#

func _on_Start_pressed():
	SceneTransition.change_scene("res://Scenes/store_scene.tscn")


func _on_Button_pressed():
	Characterselectionmanager.player = null
	Levelselectionmanager.level = null
	SceneTransition.change_scene("res://Scenes/main.tscn")
