extends Node

var score = 0

func _ready():
	#seed(OS.get_datetime())
	seed(OS.get_datetime().second * OS.get_datetime().minute * OS.get_datetime().hour)
