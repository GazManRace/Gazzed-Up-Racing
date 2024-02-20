extends Area2D



func _on_Fuel_body_entered(body):
		if body.is_in_group("player"):
			get_tree().get_current_scene().get_node("player").refuel()
			$AnimationPlayer.play("Pickup")
			$CollisionShape2D.set_deferred("disabled", true)


func _on_AnimationPlayer_animation_finished(anim_name):
	queue_free()
