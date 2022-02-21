extends Area2D

var icinde = false

func _process(delta):
	if icinde == true:
		if Input.is_action_just_pressed("etkilesim"):
			get_node("/root/Sahne7/CanvasLayer/Harita").visible = not get_node("/root/Sahne7/CanvasLayer/Harita").visible
	else:
		get_node("/root/Sahne7/CanvasLayer/Harita").visible = false
func _on_Tabela_body_entered(body):
	icinde = true
	$Label.visible = true


func _on_Tabela_body_exited(body):
	icinde = false
	$Label.visible = false
