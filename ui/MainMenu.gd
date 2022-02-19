extends Control


onready var sahnegecisi = $CanvasLayer/Sahnegecisi

func _on_OynaBtn_pressed():
	sahnegecisi.sahneye_git("res://sahneler/sinematikler/kavulmaSinematik.tscn")

func _on_HakkindaBtn_pressed():
	sahnegecisi.sahneye_git("res://ui/HakkimdaMenu.tscn")


func _on_CikBtn_pressed():
	get_tree().quit()

