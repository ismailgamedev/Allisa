extends Control

export(String, FILE, "*.tscn") var diger_sahne_path
export(NodePath) var cizim_node_path

onready var sahnegecisi = $CanvasLayer/Sahnegecisi

var diger_sahne
var cizim

func _ready():
	cizim = get_node(cizim_node_path)
	diger_sahne = get_node(diger_sahne_path)

func _process(delta):
	if Input.is_action_just_pressed("diger_sinematik"):
		sahnegecisi.sahneye_git(diger_sahne)

