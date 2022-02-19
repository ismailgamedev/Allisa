extends Control


onready var sahnegecisi = $CanvasLayer/Sahnegecisi


func _on_Button_pressed():
	sahnegecisi.sahneye_git("res://ui/MainMenu.tscn")
