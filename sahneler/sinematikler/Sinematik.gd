extends Control

export(String, FILE, "*.tscn") var sonraki_sahne_yolu
export(StreamTexture) var cizim_node_path

onready var sahnegecisi = $CanvasLayer/Sahnegecisi

onready var cizim = get_node("TextureRect")

func _ready():
	cizim.texture = cizim_node_path

func _process(delta):
	if Input.is_action_just_pressed("diger_sinematik"):
		print(sonraki_sahne_yolu)
		sahnegecisi.sahneye_git(sonraki_sahne_yolu)

