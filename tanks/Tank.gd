extends KinematicBody2D

signal health_change
signal dead

export (PackedScene) var Bullet
export (int) var speed
export (float) var gun_reload
export (int) var health

var velocity = Vector2()
var can_shoot = true
var  alive = true

func _ready():
	$Reload.wait_time =  gun_reload
	
func control(delta):
	pass
	
func _physics_process(delta):
	if not alive:
		return
	control(delta)
	move_and_slide(velocity)