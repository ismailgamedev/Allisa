extends Area2D

var verdi = false
var obj
var aldi = false
func _process(delta):
	if verdi == true:
		if aldi == false:
			if Input.is_action_just_pressed("etkilesim"):
				obj.global_position = Vector2(548,111)
				yield(get_tree().create_timer(0.2),"timeout")
				obj.visible = false
				obj.hareket_izin = false
				$AnimationPlayer.play("sev")
				yield($AnimationPlayer,"animation_finished")
				yield(get_tree().create_timer(0.8),"timeout")
				obj.visible = true
				obj.hareket_izin = true
				$Mezar.frame = 1
				$AnimationPlayer.play("idle")
				get_parent().get_node("yeni_seviye_kapisi").gecis_izni = true
				aldi = true
				$Label.visible = false
	else:
		pass




func _on_mezar_body_entered(body):
	if aldi == false:
		$Label.visible = true
	verdi = true
	obj = body


func _on_mezar_body_exited(body):
	verdi = false
	$Label.visible = false


func _ready():
	$Label.visible = false
	pass
