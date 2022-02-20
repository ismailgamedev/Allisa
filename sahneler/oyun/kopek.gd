extends KinematicBody2D

var speed = 100
export(NodePath) var obj

func _physics_process(delta):
	var dir = (obj.global_position - global_position).normalized()
	$AnimationPlayer
	move_and_collide(dir * speed * delta)


func _on_kopek_area_entered(area):
	pass # Replace with function body.
