extends Area2D

func _ready():
	get_parent().get_node("BuBenimOykum").visible = false
	get_node("SagEvDsYeni").visible  = true
func _on_ev_ile_etkiles_body_entered(body):
	if body.name == "Alisa":
		body.global_position = Vector2(1011.42,113.777)
		get_parent().get_node("AnimationPlayer").play("animasyon")
		get_parent().get_node("BuBenimOykum").visible = true
		get_node("SagEvDsYeni").visible = false
		body.hareket_izin = false
		
