extends Node2D

var left_y_axis = 0
var left_x_axis = 0
var right_y_axis = 0
var right_x_axis = 0

	
func buttons():
	if Input.is_action_pressed("D-Pad UP"):
		$XboxGamepad/Buttons/UP.set_visible(true)
	else:
		$XboxGamepad/Buttons/UP.set_visible(false)
	if Input.is_action_pressed("D-Pad RIGHT"):
		$XboxGamepad/Buttons/RIGHT.set_visible(true)
	else:
		$XboxGamepad/Buttons/RIGHT.set_visible(false)
	if Input.is_action_pressed("D-Pad LEFT"):
		$XboxGamepad/Buttons/LEFT.set_visible(true)
	else:
		$XboxGamepad/Buttons/LEFT.set_visible(false)
	if Input.is_action_pressed("D-Pad DOWN"):
		$XboxGamepad/Buttons/DOWN.set_visible(true)
	else:
		$XboxGamepad/Buttons/DOWN.set_visible(false)
	if Input.is_action_pressed("X"):
		$XboxGamepad/Buttons/X.set_visible(true)
	else:
		$XboxGamepad/Buttons/X.set_visible(false)
	if Input.is_action_pressed("Y"):
		$XboxGamepad/Buttons/Y.set_visible(true)
	else:
		$XboxGamepad/Buttons/Y.set_visible(false)
	if Input.is_action_pressed("B"):
		$XboxGamepad/Buttons/B.set_visible(true)
	else:
		$XboxGamepad/Buttons/B.set_visible(false)
	if Input.is_action_pressed("A"):
		$XboxGamepad/Buttons/A.set_visible(true)
	else:
		$XboxGamepad/Buttons/A.set_visible(false)
	if Input.is_action_pressed("RB"):
		$XboxGamepad/Buttons/RB.set_visible(true)
	else:
		$XboxGamepad/Buttons/RB.set_visible(false)
#	if Input.is_action_pressed("RT"):
#		$XboxGamepad/Buttons/RT.set_visible(true)
#	else:
#		$XboxGamepad/Buttons/RT.set_visible(false)
	if Input.is_action_pressed("LB"):
		$XboxGamepad/Buttons/LB.set_visible(true)
	else:
		$XboxGamepad/Buttons/LB.set_visible(false)
#	if Input.is_action_pressed("LT"):
#		$XboxGamepad/Buttons/LT.set_visible(true)
#	else:
#		$XboxGamepad/Buttons/LT.set_visible(false)
	if Input.is_action_pressed("L3"):
		$XboxGamepad/Buttons/L3.set_visible(true)
	else:
		$XboxGamepad/Buttons/L3.set_visible(false)
	if Input.is_action_pressed("R3"):
		$XboxGamepad/Buttons/R3.set_visible(true)
	else:
		$XboxGamepad/Buttons/R3.set_visible(false)
	if Input.is_action_pressed("SELECT"):
		$XboxGamepad/Buttons/SELECT.set_visible(true)
	else:
		$XboxGamepad/Buttons/SELECT.set_visible(false)
	if Input.is_action_pressed("START"):
		$XboxGamepad/Buttons/START.set_visible(true)
	else:
		$XboxGamepad/Buttons/START.set_visible(false)

func triggers():
	$XboxGamepad/Buttons/RT.set_position(Vector2(715+(100*Input.get_action_strength("RT")),40))

	$XboxGamepad/Buttons/LT.set_position(Vector2(310-(100*Input.get_action_strength("LT")),40))

func joysticks():
	left_y_axis = 396 - (70*Input.get_action_strength("Left Stick UP")) \
		+ (70*Input.get_action_strength("Left Stick DOWN"))
#	if Input.is_action_pressed("Left Stick UP"):
#		left_y_axis = (Input.get_action_strength("Left Stick UP") * (326-396))
##		left_y_axis = 326
#	elif Input.is_action_pressed("Left Stick DOWN"):
#		left_y_axis = 466
#	else:
#		left_y_axis = 396
	left_x_axis = 296 - (70*Input.get_action_strength("Left Stick LEFT")) \
		+ (70*Input.get_action_strength("Left Stick RIGHT"))
#	if Input.is_action_pressed("Left Stick LEFT"):
#		left_x_axis = 226
#	elif Input.is_action_pressed("Left Stick RIGHT"):
#		left_x_axis = 366
#	else:
#		left_x_axis = 296
		
	$XboxGamepad/Sticks/LeftStick.set_position(Vector2(left_x_axis, left_y_axis))
	
	right_y_axis = 528 - (70*Input.get_action_strength("Right Stick UP")) \
		+ (70*Input.get_action_strength("Right Stick DOWN"))
#	if Input.is_action_pressed("Right Stick UP"):
#		right_y_axis = 458
#	elif Input.is_action_pressed("Right Stick DOWN"):
#		right_y_axis = 598
#	else:
#		right_y_axis = 528
	right_x_axis = 620 - (70*Input.get_action_strength("Right Stick LEFT")) \
		+ (70*Input.get_action_strength("Right Stick RIGHT"))
#	if Input.is_action_pressed("Right Stick LEFT"):
#		right_x_axis = 550
#	elif Input.is_action_pressed("Right Stick RIGHT"):
#		right_x_axis = 690
#	else:
#		right_x_axis = 620
		
	$XboxGamepad/Sticks/RightStick.set_position(Vector2(right_x_axis, right_y_axis))


func _process(delta):
	buttons()
	joysticks()
	triggers()
