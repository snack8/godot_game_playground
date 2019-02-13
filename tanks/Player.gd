extends "res://tanks/Tank.gd"

func control(delta):
	$Turret.look_at(get_global_mouse_position())
	var x_unit_delta = 0
	var y_unit_delta = 0
	if Input.is_action_pressed('right'):
		x_unit_delta += 1
	if Input.is_action_pressed('left'):
		x_unit_delta -= 1
	if Input.is_action_pressed('down'):
		y_unit_delta += 1
	if Input.is_action_pressed('up'):
		y_unit_delta -= 1
	velocity = Vector2()
	velocity = Vector2( speed * x_unit_delta, speed * y_unit_delta ).clamped(speed)