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
	
	



var characters = [
	preload("res://Levels/Mango Tango.tscn"), #0
	preload("res://Levels/Beach car/beach car.tscn"), #1
	preload("res://Levels/Dirt Master/bike.tscn"), #2
	preload("res://Levels/The Hot Rod.tscn"), #3
	preload("res://Levels/Jungle jammer Final.tscn"), #4
	preload("res://Assets/African Car.tscn"), #5
	preload("res://Levels/Monster Truck/monster truck.tscn")] #6



func _on_Back_pressed():
	SceneTransition.change_scene("res://Scenes/Main.tscn")


func _on_Next_pressed():
	SceneTransition.change_scene("res://Scenes/Leveltest.tscn")

func _on_MangoTango_pressed():
	if (Characterselectionmanager.player == null):
		Characterselectionmanager.player = characters[0]
	
	
func _on_JungleJammer_pressed():
	if (Characterselectionmanager.player == null):
		Characterselectionmanager.player = characters[4]
	
	
func _on_BeachBugger_pressed():
	if (Characterselectionmanager.player == null):
		Characterselectionmanager.player = characters[1]
	
	
func _on_KaDukaSpeed_pressed():
	if (Characterselectionmanager.player == null):
		Characterselectionmanager.player = characters[5]
	
	
func _on_MonsterTruck_pressed():
	if (Characterselectionmanager.player == null):
		Characterselectionmanager.player = characters[6]
	
	
func _on_TheHotRod_pressed():
	if (Characterselectionmanager.player == null):
		Characterselectionmanager.player = characters[3]
	

func _on_DirtMaster3000_pressed():
	if (Characterselectionmanager.player == null):
		Characterselectionmanager.player = characters[2]
	



