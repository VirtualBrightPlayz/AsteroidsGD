extends Node

var score = 0
var highscore = 0
var map = "res://Maps/Classic.tscn"
var mode = 0
var ufo = true

func _ready():
	#seed(OS.get_datetime())
	seed(OS.get_datetime().second * OS.get_datetime().minute * OS.get_datetime().hour)