extends ColorRect

# Sonraki Sahne yolu
export(String, FILE, "*.tscn") var sonraki_sahne_yolu

onready var _anim_player := $AnimationPlayer

func _ready() -> void:
	# Sahneye girince animasyonu tersten baslatir
	_anim_player.play_backwards("Fade")
	visible = true

func sahneye_git(_sonraki_sahne := sonraki_sahne_yolu) -> void:
	# Animasyonu baslatir bitince sahneye gecer
	_anim_player.play("Fade")
	yield(_anim_player, "animation_finished")
	get_tree().change_scene(_sonraki_sahne)

func sahneyi_yeniden_yukle():
	# bulundugun sahneyi yeniden yukler
	_anim_player.play("Fade")
	yield(_anim_player, "animation_finished")
	get_tree().reload_current_scene()
