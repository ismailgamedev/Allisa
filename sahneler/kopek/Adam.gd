extends Area2D

var kopuk_geldi = false
var karakter_geldi = false
var aldin = false

onready var sahne_gecisi = get_parent().get_node("yeni_seviye_kapisi")

func _process(delta):
	if karakter_geldi == true and kopuk_geldi == true:
		$Label.visible = true
		if Input.is_action_just_pressed("etkilesim") and aldin == false: 
			$AnimationPlayer.play("cicek_ver")
			yield($AnimationPlayer,"animation_finished")
			$AnimationPlayer.play("geri_don")
			aldin = true
			sahne_gecisi.gecis_izni = true
			
	else:
		$Label.visible = false
		

func _on_Adam_area_entered(area):
	if area.name == "kopek":
		yield(get_tree().create_timer(0.2),"timeout")
		$AnimationPlayer.play("sev")
		yield($AnimationPlayer,"animation_finished")
		kopuk_geldi = true
	if area.name == "etkilesim":
		karakter_geldi = true


func _on_Adam_area_exited(area):
	if area.name == "etkilesim":
		karakter_geldi = false
