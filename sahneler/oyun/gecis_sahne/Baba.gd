extends Area2D

var icinde = false

func _process(delta):
	if icinde == true:
		if Input.is_action_just_pressed("etkilesim") and We.resim_elinde == true:
			print("OLdu")
			yield(get_tree().create_timer(1),"timeout")
			get_node("/root/Sahne1_5/CanvasLayer/Sahnegecisi").sahneye_git("res://sahneler/sinematikler/SonSinematik1.tscn")

func _on_Baba_body_entered(body):
	$Label.visible = true
	icinde = true


func _on_Baba_body_exited(body):
	$Label.visible = false
	icinde = false
