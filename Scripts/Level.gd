extends Node2D
onready var selectProgress = $Level/Node2D/GameUI/Fuel/Control/ProgressBar


onready var givenPlayer = Characterselectionmanager.player.instance()
onready var givenLevel = Levelselectionmanager.level.instance()

func _ready():
	spawn_level()
	spawn_characters()
	

func spawn_level():
	add_child(givenLevel)

func spawn_characters():
	add_child(givenPlayer)
	
	
var coins_collected = 0

func add_coins(amount):
	coins_collected += amount
	$GameUI/Coin/Control/Label.text = str(coins_collected)
#

func update_fuel_UI(value):
	$GameUI/Fuel/Control/ProgressBar.value = value
	var stylebox = $GameUI/Fuel/Control/ProgressBar.get('custom_styles/fg')
	stylebox.bg_color.h = lerp(0, 0.3, value / 100)
