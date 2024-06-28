extends Node
onready var control = $TabContainer/Cars/RichTextLabel/control
onready var scroll_bar = $TabContainer/Cars/HScrollBar
onready var next_button = $Next

onready var priceJJ = str2var($TabContainer/Cars/RichTextLabel/control/Panel2/Label.text)
onready var priceBB = str2var($TabContainer/Cars/RichTextLabel/control/Panel3/Label.text)
onready var priceKD = str2var($TabContainer/Cars/RichTextLabel/control/Panel4/Label.text)
onready var priceMT = str2var($TabContainer/Cars/RichTextLabel/control/Panel5/Label.text)
onready var priceB = str2var($TabContainer/Cars/RichTextLabel/control/Panel6/Label.text)
onready var priceHR = str2var($TabContainer/Cars/RichTextLabel/control/Panel7/Label.text)

onready var buttonJJ = $TabContainer/Cars/RichTextLabel/control/Panel2/JungleJammer
onready var buttonBB = $TabContainer/Cars/RichTextLabel/control/Panel3/BeachBugger
onready var buttonKD = $TabContainer/Cars/RichTextLabel/control/Panel4/KaDukaSpeed
onready var buttonMT = $TabContainer/Cars/RichTextLabel/control/Panel5/MonsterTruck
onready var buttonB = $TabContainer/Cars/RichTextLabel/control/Panel6/TheHotRod
onready var butttonHR = $TabContainer/Cars/RichTextLabel/control/Panel7/DirtMaster3000
onready var signal_to_show = $signalshow

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

func arrow_signal():
	signal_to_show.show()

func _process(delta):
	control.position.x = -scroll_bar.value
	parallax.scroll_offset += direction * speed * delta

func load_cars(car_scene):
	if (Characterselectionmanager.player == null):
		Characterselectionmanager.player = load(car_scene)

func _ready():
	pass

func _buy(price, item_no, var button = Button):
	Globalscore.load_store()
	if Globalscore.store.bought[item_no] == false:
		if Globalscore.coins_collected >= price:
			Globalscore.coins_collected -= price
			Globalscore.store.bought[item_no] = true
			if Globalscore.store.bought[item_no] == true:
				button.text == "SELECT"
		else:
			var rem = price - Globalscore.coins_collected
			$ColorRect.show()
			$ColorRect/remainderLabel.text = "You need " + str(rem) + " coins to buy this car!!!"
			print(rem)
	Globalscore.save_store()

func _on_Back_pressed():
	Characterselectionmanager.player = null
	Levelselectionmanager.level = null
	SceneTransition.change_scene("res://Scenes/main.tscn")

func _on_Next_pressed():
	SceneTransition.change_scene("res://Scenes/Level.tscn")

func _on_MangoTango_pressed():
	if (Characterselectionmanager.player == null):
		Characterselectionmanager.player = load("res://car_scenes/mango_tango.tscn")
		next_button.show()
	
	
func _on_JungleJammer_pressed():
		_buy(priceJJ, 1, buttonJJ)#, car_scene1)
		if (Characterselectionmanager.player == null):
			Characterselectionmanager.player = load("res://car_scenes/jungle_jammer_final.tscn")
		next_button.show()
	
func _on_BeachBugger_pressed():
		_buy(priceBB, 2, buttonBB)#, car_scene2)
		if (Characterselectionmanager.player == null):
			Characterselectionmanager.player = load("res://car_scenes/beach_car.tscn")
		next_button.show()
#

func _on_KaDukaSpeed_pressed():
		_buy(priceKD, 3, buttonKD)#, car_scene3)
		if (Characterselectionmanager.player == null):
			Characterselectionmanager.player = load("res://car_scenes/african_car.tscn")
		next_button.show()


func _on_MonsterTruck_pressed():
		_buy(priceMT, 4, buttonMT)#, car_scene4)
		if (Characterselectionmanager.player == null):
			Characterselectionmanager.player = load("res://car_scenes/monster_truck.tscn")
		next_button.show()


func _on_TheHotRod_pressed():
		_buy(priceHR, 5, butttonHR)#, car_scene5)
		if (Characterselectionmanager.player == null):
			Characterselectionmanager.player = load("res://car_scenes/the_hot_rod.tscn")
		next_button.show()


func _on_DirtMaster3000_pressed():
		_buy(priceB, 6, buttonB)#, car_scene6)
		if (Characterselectionmanager.player == null):
			Characterselectionmanager.player = load("res://car_scenes/bike.tscn")
		next_button.show()

func _on_TextureButton_pressed():
	$ColorRect.hide()

onready var how_to_play = $howtoplay

func _on_info_pressed():
	how_to_play.show()
	
