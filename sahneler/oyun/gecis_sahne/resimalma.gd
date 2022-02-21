extends Area2D

var aldi = false

func _process(delta):
	if aldi == true:
		if Input.is_action_just_pressed("etkilesim"):
			We.resim_elinde = true
			$Label.visible = false
			$Resim.visible = false
			$Particles2D.visible = false

func _on_resimalma_body_entered(body):
	aldi = true
	$Label.visible = true

func _on_resimalma_body_exited(body):
	aldi = false
	$Label.visible = false
