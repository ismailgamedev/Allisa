extends Area2D

var icinde = false

func _process(delta):
	if icinde == true:
		if Input.is_action_just_pressed("etkilesim"):
			get_node("/root/Sahne1_5/CanvasLayer/Sahnegecisi").sahneye_git("res://sahneler/oyun/gecis_sahne/Sahne1Geri.tscn")
			

func _on_Babanin_Yanina_Git_body_entered(body):
	icinde = true
	$Label.visible = true

func _on_Babanin_Yanina_Git_body_exited(body):
	icinde = false
	$Label.visible = false
