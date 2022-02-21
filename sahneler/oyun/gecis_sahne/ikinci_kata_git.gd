extends Area2D


var icinde = false

func _process(delta):
	if icinde == true:
		if Input.is_action_just_pressed("etkilesim") and We.resim_elinde == false:
			get_node("/root/Sahne1_5/CanvasLayer/Sahnegecisi").sahneye_git("res://sahneler/oyun/gecis_sahne/UstKat.tscn")

func _on_ikinci_kata_git_body_entered(body):
	if We.resim_elinde == false:
		$Label.visible = true
		icinde = true


func _on_ikinci_kata_git_body_exited(body):
	if We.resim_elinde == false:
		$Label.visible = false
		icinde = true

