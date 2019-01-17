extends Node2D

var player = preload("res://Player.tscn")
var touch = preload("res://Touch.tscn")

var spawns = []

func _ready():
	for node in get_children():
		if node.name.begins_with("Spawnpoint"):
			spawns.append(node)
	
	var node = spawns[randi() % spawns.size()]
	var inst = player.instance()
	inst.position = node.position
	inst.rotation = node.rotation
	self.add_child(inst)
	
	if Globals.touch:
		var tch = touch.instance()
		self.add_child(tch)
	
	if name == "Test":
		var cam = Camera2D.new()
		cam.anchor_mode = Camera2D.ANCHOR_MODE_DRAG_CENTER
		cam.current = true
		inst.add_child(cam)
