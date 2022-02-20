extends KinematicBody2D

## Magara Jam 4 ##

var velocity = Vector2()
export var speed = 100
export var jump_speed = 350
var gravity = 980

var hareket_izin = true
var uzatti = false
onready var anim_player = get_node("AnimationPlayer")

func _hareket(carpan):
	velocity.x = 0
	velocity.y += gravity *carpan
	if Input.is_action_pressed("hareket_sag"):
		velocity.x += speed

		anim_player.play("walk")
		$yurume.set_flip_h(false)
		$ziplama.set_flip_h(false)
		pass
	if Input.is_action_pressed("hareket_sol"):
		velocity.x -= speed

		anim_player.play("walk")
		$yurume.set_flip_h(true)
		$ziplama.set_flip_h(true)
		pass
	if is_on_floor():
		$ziplama.visible = false
		if Input.is_action_just_pressed("ziplama"):
			print("a")
			velocity.y = -jump_speed
			pass

		if velocity.x == 0:
			#anim_p.play("bekle")
			$ziplama.visible = false
			$yurume.visible = true
			anim_player.play("idle")
	else:
		$ziplama.visible = true
		$yurume.visible = false
		anim_player.play("jump")
	velocity = move_and_slide(velocity,Vector2.UP)
	pass



#######################################
func _physics_process(delta):
	print(get_tree().get_current_scene().get_name())
	if hareket_izin ==true:
		_hareket(delta)
	if Input.is_action_just_pressed("etkilesim") and uzatti == true:
			_babaya_ayi_goster()
	pass


func _ready():
	#_babaya_ayi_goster()
	etkilesim_blogu.connect("area_entered",self,"_etkilesim")
	pass
#######################################


onready var etkilesim_blogu = get_node("etkilesim")
var cicek_elinde = false

func _etkilesim(govde):
	if govde.is_in_group("cicek"):
		### cicegi eline alma olayı ###
		govde.queue_free()
	if govde.is_in_group("cocuk"):
		if cicek_elinde == true:
			### cocugu mutlu etme olayı animasyonu ###
			#govde._sevin()
			pass
		pass


	pass


func _babaya_ayi_goster():
	hareket_izin = false
	
	anim_player.play("babaya_ayi_goster")
	yield(get_tree().create_timer(1.3),"timeout")
	anim_player.play_backwards("babaya_ayi_goster_geri")
	yield(get_tree().create_timer(1.7),"timeout")
	anim_player.play("idle")
	hareket_izin = true
	
	pass


func _on_etkilesim_area_entered(area):
	if area.is_in_group("Baba"):
		uzatti = true



func _on_etkilesim_area_exited(area):
	if area.is_in_group("Baba"):
		uzatti = false


