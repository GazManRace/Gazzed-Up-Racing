extends Area2D


onready var animation_flag = $AnimationPlayer

func ready():
	animation_flag.play("Up n down")
