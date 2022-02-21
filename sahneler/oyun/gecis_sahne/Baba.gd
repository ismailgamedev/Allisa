extends Area2D

var icinde = false

func _process(delta):
	if icinde == true:
		if Input.is_action_just_pressed("etkilesim") and We.resim_elinde == true:
			print("OLdu")
			govde._resim_goster()
			print(govde)
			yield(get_tree().create_timer(1.5),"timeout")
			get_node("../../CanvasLayer/Sahnegecisi").sahneye_git("res://sahneler/sinematikler/SonSinematik1.tscn")
var govde
func _on_Baba_body_entered(body):
	govde = body
	$Label.visible = true
	icinde = true


func _on_Baba_body_exited(body):
	$Label.visible = false
	icinde = false
