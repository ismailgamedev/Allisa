extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("arka_plam")
	$yurume/AnimationPlayer.play("walk")
	$BG.rect_size = Vector2(1024,600)
	pass # Replace with function body.


func _on_TextureButton_pressed():
	$CanvasLayer/Sahnegecisi.sahneye_git("res://ui/MainMenu.tscn")
	pass # Replace with function body.
