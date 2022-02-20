extends Area2D

var girdi = false

func _ready():
	global_position.x = 113
	global_position.y = 119

func _on_kopek_body_entered(body):
	if girdi == false:
		$idle.visible = false
		$sprite.visible = true
		$AnimationPlayer.play("kopek_adama_git")
		$AnimationPlayer2.play("pozisyonyuru")
	girdi = true


func _on_kopek_area_entered(area):
	if area.name == "Adam":
		global_position.x = 426
		global_position.y = 119

		yield(get_tree().create_timer(0.2),"timeout")
		visible = false
