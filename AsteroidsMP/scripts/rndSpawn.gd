extends Node2D

var astrd = preload("res://Asteroid.tscn")
var timer = 15
var counter = 5

var spawns = []

func _ready():
	for node in get_parent().get_children():
		if node.name.begins_with("AsteroidSpawn"):
			spawns.append(node)
	set_process(true)
	for i in range(0, 5):
		spawn()
	if Globals.mode == 1:
		timer = 1

func _process(delta):
	if Globals.mode == 0:
		timer -= delta
		if timer <= 0:
			for i in range(0, 5):
				spawn()
			timer = 15
	if Globals.mode == 1:
		timer -= delta
		if timer <= 0 and counter > 0:
			spawn()
			counter -= 1
			timer = 1
		if get_child_count() == 0 and counter <= 0:
			Globals.score += 1
			counter = 5 + 2 * Globals.score

func spawn():
	var node = spawns[randi() % spawns.size()]
	var inst = astrd.instance()
	inst.position = node.position
	inst.linear_velocity = Vector2(randi() % 150 - 75, randi() % 150 - 75)
	inst.rotation = node.rotation
	self.add_child(inst)
