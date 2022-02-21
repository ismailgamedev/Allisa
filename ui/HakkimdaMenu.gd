extends Control


onready var sahnegecisi = $CanvasLayer/Sahnegecisi


func _on_Button_pressed():
	sahnegecisi.sahneye_git("res://ui/MainMenu.tscn")


func _ready():
	#$BG.rect_global_position = Vector2(1024,600)
	$BG.rect_size = Vector2(1024,600)
	pass
