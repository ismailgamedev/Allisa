extends WorldEnvironment


func _process(delta):
	if get_tree().get_current_scene().get_name() == "Sahne2":
		environment.adjustment_saturation = 0.3
		set_process(false)
