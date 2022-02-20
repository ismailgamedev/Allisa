extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
signal yere_dustu

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass




func _on_Area2D_body_entered(body):
	if body.is_in_group("zemin"):
		emit_signal("yere_dustu")
		print("top_yerde")
		$Particles2D.emitting = false
	pass # Replace with function body.
