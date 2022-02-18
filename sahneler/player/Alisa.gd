extends KinematicBody2D

## Magara Jam 4 ##

var velocity = Vector2()
export var speed = 100
export var jump_speed = 350
var gravity = 980

func _hareket(carpan):
	velocity.x = 0
	velocity.y += gravity *carpan
	if Input.is_action_pressed("hareket_sag"):
		velocity.x += speed
		pass
	if Input.is_action_pressed("hareket_sol"):
		velocity.x -= speed
		pass
	if is_on_floor():
		if Input.is_action_just_pressed("ziplama"):
			print("a")
			velocity.y = -jump_speed
			pass
	velocity = move_and_slide(velocity,Vector2.UP)
	pass



#######################################
func _physics_process(delta):
	_hareket(delta)
	pass


func _ready():
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
