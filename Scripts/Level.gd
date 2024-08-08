extends Node2D
#onready var selectProgress = $Level/Node2D/GameUI/Fuel/Control/ProgressBar

#onready var next_screen = get_node("Next_level")

onready var givenPlayer = Characterselectionmanager.player.instance()
onready var givenLevel = Levelselectionmanager.level.instance()

func _ready():
	spawn_level()
	spawn_characters()
#	MusicController.stop()

func spawn_level():
	add_child(givenLevel)

func spawn_characters():
	add_child(givenPlayer)

#func add_coins(amount):
#	Globalscore.coins_collected += amount
#	$GameUI/Coin/Control/Label.text = str(Globalscore.coins_collected)

func update_fuel_UI(value):
	$GameUI/Fuel/Control/ProgressBar.value = value
	var stylebox = $GameUI/Fuel/Control/ProgressBar.get('custom_styles/fg')
	stylebox.bg_color.h = lerp(0, 0.3, value / 100)
