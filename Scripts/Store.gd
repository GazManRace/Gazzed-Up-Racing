extends Node

onready var control = $TabContainer/Cars/RichTextLabel/control
onready var scroll_bar = $TabContainer/Cars/HScrollBar
	#$Node/Control/TabContainer/Cars/HScrollBar.position.x = -$Control/TabContainer/Cars/HScrollBar.value

export(int) var speed: int = 7
export(float) var rotation_speed: float = 0.1
var direction = Vector2(-1, 0)
onready var parallax = $ParallaxBackground

func _process(delta):
	control.position.x = -scroll_bar.value
	parallax.scroll_offset += direction * speed * delta


func _on_Back_pressed():
	SceneTransition.change_scene("res://Scenes/main.tscn")


func _on_Next_pressed():
	SceneTransition.change_scene("res://Scenes/Level.tscn")
#	self.queue_free()

func _on_MangoTango_pressed():
	if (Characterselectionmanager.player == null):
		Characterselectionmanager.player = load("res://car_scenes/mango_tango.tscn")
	
	
func _on_JungleJammer_pressed():
	if (Characterselectionmanager.player == null):
		Characterselectionmanager.player = load("res://car_scenes/jungle_jammer_final.tscn")
	
	
func _on_BeachBugger_pressed():
	if (Characterselectionmanager.player == null):
		Characterselectionmanager.player = load("res://car_scenes/beach_car.tscn")
	
#
func _on_KaDukaSpeed_pressed():
	if (Characterselectionmanager.player == null):
		Characterselectionmanager.player = load("res://car_scenes/african_car.tscn")


func _on_MonsterTruck_pressed():
	if (Characterselectionmanager.player == null):
		Characterselectionmanager.player = load("res://car_scenes/monster_truck.tscn")


func _on_TheHotRod_pressed():
	if (Characterselectionmanager.player == null):
		Characterselectionmanager.player = load("res://car_scenes/the_hot_rod.tscn")


func _on_DirtMaster3000_pressed():
	if (Characterselectionmanager.player == null):
		Characterselectionmanager.player = load("res://car_scenes/bike.tscn")




