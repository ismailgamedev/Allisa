extends WorldEnvironment

var resim_elinde = false

func _process(delta):
	if get_tree().get_current_scene().get_name() == "Sahne2":
		environment.adjustment_saturation = 0.3
		$yagmur.visible = true
		$sis.visible = true
		$yagmur_sesi.play()
		$yagmur_sesi.volume_db = -4.546
		set_process(false)
	else:
		$yagmur.visible = false
		$sis.visible = false
		$yagmur_sesi.stop()
		$yagmur_sesi.volume_db = -35.792
		
		
