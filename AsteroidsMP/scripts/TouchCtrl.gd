extends Node

func _ready():
	set_process(true)

func _process(delta):
	#position = get_node("../Player").position
	get_node("../Player").up = $Container/Up.pressed
	get_node("../Player").down = $Container/Down.pressed
	get_node("../Player").left = $Container/Left.pressed
	get_node("../Player").right = $Container/Right.pressed
	get_node("../Player").shoot = $Shoot.pressed