extends Control

export(String) var diger_sahne_path
export(StreamTexture) var cizim_node_path

onready var sahnegecisi = $CanvasLayer/Sahnegecisi

onready var cizim = get_node("TextureRect")

func _ready():
	cizim.texture = cizim_node_path

func _process(delta):
	if Input.is_action_just_pressed("diger_sinematik"):
		print(str(diger_sahne_path))
		sahnegecisi.sahneye_git(diger_sahne_path)

