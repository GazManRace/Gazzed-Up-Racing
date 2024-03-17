extends Node

#
#onready var buttonJJ = $TabContainer/Cars/RichTextLabel/control/Panel2/JungleJammer
#onready var buttonbeachbugger = $TabContainer/Cars/RichTextLabel/control/Panel2/BeachBugger
##onready var buttonBB = $TabContainer/Cars/RichTextLabel/control/Panel2/BeachBugger
#onready var buttonKD = $TabContainer/Cars/RichTextLabel/control/Panel2/KaDukaSpeed
#onready var buttonMT = $TabContainer/Cars/RichTextLabel/control/Panel2/MonsterTruck
#onready var buttonB = $TabContainer/Cars/RichTextLabel/control/Panel2/DirtMaster3000
#onready var buttonHR = $TabContainer/Cars/RichTextLabel/control/Panel2/TheHotRod

onready var control = $TabContainer/Cars/RichTextLabel/control
onready var scroll_bar = $TabContainer/Cars/HScrollBar

onready var priceJJ = str2var($TabContainer/Cars/RichTextLabel/control/Panel2/Label.text)
onready var priceBB = str2var($TabContainer/Cars/RichTextLabel/control/Panel3/Label.text)
onready var priceKD = str2var($TabContainer/Cars/RichTextLabel/control/Panel4/Label.text)
onready var priceMT = str2var($TabContainer/Cars/RichTextLabel/control/Panel5/Label.text)
onready var priceB = str2var($TabContainer/Cars/RichTextLabel/control/Panel6/Label.text)
onready var priceHR = str2var($TabContainer/Cars/RichTextLabel/control/Panel7/Label.text)


func remove_disabled():
	if Globalscore.coins_collected >= priceJJ:
		pass
#		buttonJJ.disabled = false
##		buttonbeachbugger.disabled = false
#		buttonKD.disabled = false
#		buttonMT.disabled = false
#		buttonB.disabled = false
#		buttonHR.disabled = false

func _ready():
	pass
#	remove_disabled()
	
#$Node/Control/TabContainer/Cars/HScrollBar.position.x = -$Control/TabContainer/Cars/HScrollBar.value

export(int) var speed: int = 7
export(float) var rotation_speed: float = 0.1
var direction = Vector2(-1, 0)
onready var parallax = $ParallaxBackground

func _process(delta):
	control.position.x = -scroll_bar.value
	parallax.scroll_offset += direction * speed * delta



func _buy():
	if Globalscore.coins_collected >= priceJJ:
		Globalscore.coins_collected -= priceJJ
	else:
		var rem = priceJJ - Globalscore.coins_collected
		print(rem) 
	
	
func _on_Back_pressed():
	SceneTransition.change_scene("res://Scenes/main.tscn")


func _on_Next_pressed():
	SceneTransition.change_scene("res://Scenes/Level.tscn")
#	self.queue_free()

func _on_MangoTango_pressed():
	if (Characterselectionmanager.player == null):
		
		Characterselectionmanager.player = load("res://car_scenes/mango_tango.tscn")
	
	
func _on_JungleJammer_pressed():
		_buy()
		if (Characterselectionmanager.player == null):
			Characterselectionmanager.player = load("res://car_scenes/jungle_jammer_final.tscn")
	
	
func _on_BeachBugger_pressed():
	if Globalscore.coins_collected >= priceBB:
		remove_disabled()
		_buy()
		if (Characterselectionmanager.player == null):
			Characterselectionmanager.player = load("res://car_scenes/beach_car.tscn")
	
#
func _on_KaDukaSpeed_pressed():
	if Globalscore.coins_collected >= priceKD:
		remove_disabled()
		_buy()
		if (Characterselectionmanager.player == null):
			Characterselectionmanager.player = load("res://car_scenes/african_car.tscn")


func _on_MonsterTruck_pressed():
	if Globalscore.coins_collected >= priceMT:
		remove_disabled()
#		_buy(priceMT)
		if (Characterselectionmanager.player == null):
			Characterselectionmanager.player = load("res://car_scenes/monster_truck.tscn")


func _on_TheHotRod_pressed():
	if Globalscore.coins_collected >= priceHR:
		remove_disabled()
#		_buy(priceHR)
		if (Characterselectionmanager.player == null):
			Characterselectionmanager.player = load("res://car_scenes/the_hot_rod.tscn")


func _on_DirtMaster3000_pressed():
	if Globalscore.coins_collected >= priceB:
		remove_disabled()
#		_buy(priceB)
		if (Characterselectionmanager.player == null):
			Characterselectionmanager.player = load("res://car_scenes/bike.tscn")




