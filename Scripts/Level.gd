extends Node2D


onready var givenPlayer = Characterselectionmanager.player.instance()
onready var givenLevel = Levelselectionmanager.level.instance()
onready var selectProgress = $Level/Node2D/GameUI/Fuel/Control/ProgressBar

func _ready():
	SpawnCharacters()
	SpawnLevels()
	
func SpawnCharacters():
	call_deferred("add_child", givenPlayer)

func SpawnLevels():
	call_deferred("add_child", givenLevel)
	

func update_fuel_UI(value):
	$GameUI/Fuel/Control/ProgressBar.value = value
	var stylebox = $GameUI/Fuel/Control/ProgressBar.get('custom_styles/fg')
	stylebox.bg_color.h = lerp(0, 0.3, value / 100)
