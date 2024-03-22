extends Area2D


onready var animation_flag = $AnimationPlayer

func ready():
	animation_flag.play("Up n down")
	


func _on_body_body_entered(body):
	Globalscore.unlockedlevels +=1
	Globalscore.save_level()
