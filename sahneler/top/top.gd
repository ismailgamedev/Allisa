extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
signal yere_dustu

onready var sahne_gecisi = get_parent().get_node("yeni_seviye_kapisi2")



func _on_Area2D_body_entered(body):
	if body.is_in_group("zemin"):
		emit_signal("yere_dustu")
		print("top_yerde")
		$Particles2D.emitting = false
		sahne_gecisi.gecis_izni = true
	pass # Replace with function body.
