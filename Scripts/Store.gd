extends Node
onready var control = $TabContainer/Cars/RichTextLabel/control
onready var scroll_bar = $TabContainer/Cars/HScrollBar

onready var priceJJ = str2var($TabContainer/Cars/RichTextLabel/control/Panel2/Label.text)
onready var priceBB = str2var($TabContainer/Cars/RichTextLabel/control/Panel3/Label.text)
onready var priceKD = str2var($TabContainer/Cars/RichTextLabel/control/Panel4/Label.text)
onready var priceMT = str2var($TabContainer/Cars/RichTextLabel/control/Panel5/Label.text)
onready var priceB = str2var($TabContainer/Cars/RichTextLabel/control/Panel6/Label.text)
onready var priceHR = str2var($TabContainer/Cars/RichTextLabel/control/Panel7/Label.text)

var car_scene1 = preload("res://car_scenes/jungle_jammer_final.tscn")
var car_scene2 = preload("res://car_scenes/beach_car.tscn")
var car_scene3 = preload("res://car_scenes/african_car.tscn")
var car_scene4 = preload("res://car_scenes/monster_truck.tscn")
var car_scene5 = preload("res://car_scenes/the_hot_rod.tscn")
var car_scene6 = preload("res://car_scenes/bike.tscn")


export(int) var speed: int = 7
export(float) var rotation_speed: float = 0.1
var direction = Vector2(-1, 0)
onready var parallax = $ParallaxBackground

func _process(delta):
	control.position.x = -scroll_bar.value
	parallax.scroll_offset += direction * speed * delta

func load_cars(car_scene):
	if (Characterselectionmanager.player == null):
		Characterselectionmanager.player = load(car_scene)



func _buy(price, item_no, var car_scene = PackedScene):
	Globalscore.load_store()
	if Globalscore.store.bought[item_no] == false:
		if Globalscore.coins_collected >= price:
			Globalscore.coins_collected -= price
			Globalscore.store.bought[item_no] = true
		else:
			var rem = price - Globalscore.coins_collected
			print(rem) 
#	else:
#		load_cars(car_scene)
	Globalscore.save_store()

func _on_Back_pressed():
	SceneTransition.change_scene("res://Scenes/main.tscn")


func _on_Next_pressed():
	SceneTransition.change_scene("res://Scenes/Level.tscn")

func _on_MangoTango_pressed():
	if (Characterselectionmanager.player == null):
		Characterselectionmanager.player = load("res://car_scenes/mango_tango.tscn")
	
	
func _on_JungleJammer_pressed():
		_buy(priceJJ, 1)#, car_scene1)
		if (Characterselectionmanager.player == null):
			Characterselectionmanager.player = load("res://car_scenes/jungle_jammer_final.tscn")
	
	
func _on_BeachBugger_pressed():
		_buy(priceBB, 2)#, car_scene2)
		if (Characterselectionmanager.player == null):
			Characterselectionmanager.player = load("res://car_scenes/beach_car.tscn")
#

func _on_KaDukaSpeed_pressed():
		_buy(priceKD, 3)#, car_scene3)
		if (Characterselectionmanager.player == null):
			Characterselectionmanager.player = load("res://car_scenes/african_car.tscn")


func _on_MonsterTruck_pressed():
		_buy(priceMT, 4)#, car_scene4)
		if (Characterselectionmanager.player == null):
			Characterselectionmanager.player = load("res://car_scenes/monster_truck.tscn")


func _on_TheHotRod_pressed():
		_buy(priceHR, 5)#, car_scene5)
		if (Characterselectionmanager.player == null):
			Characterselectionmanager.player = load("res://car_scenes/the_hot_rod.tscn")


func _on_DirtMaster3000_pressed():
		_buy(priceB, 6)#, car_scene6)
		if (Characterselectionmanager.player == null):
			Characterselectionmanager.player = load("res://car_scenes/bike.tscn")




