extends Area2D

var izin_verildi = false
var oyuncak_goruldu = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

onready var gecis_kapasi = get_node("../yeni_seviye_kapisi")

func _physics_process(delta):
	if oyuncak_goruldu == true and izin_verildi == false:
		$Label.visible = false
		gecis_kapasi.gecis_izni = true
		izin_verildi = true
		
		pass
	pass

func _on_Baba_area_exited(area):
	if oyuncak_goruldu == false:
		$Label.visible = false


func _on_Baba_area_entered(area):
	if oyuncak_goruldu == false:
		$Label.visible = true
