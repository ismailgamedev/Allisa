extends Area2D
var icinde = false

func _process(delta):
	if icinde == true:
		if Input.is_action_just_pressed("etkilesim"):
			get_node("/root/UstKat/CanvasLayer/Sahnegecisi").sahneye_git("res://sahneler/oyun/gecis_sahne/Sahne1_5Geri.tscn")


func _on_altkatain_body_entered(body):
	$Label.visible = true
	icinde = true

func _on_altkatain_body_exited(body):
		$Label.visible = false
		icinde = false
