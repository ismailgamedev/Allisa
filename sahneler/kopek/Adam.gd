extends Area2D



func _on_Adam_area_entered(area):
	if area.name == "kopek":
		yield(get_tree().create_timer(0.2),"timeout")
		$AnimationPlayer.play("sev")
