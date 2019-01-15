extends Node2D

var astrd = preload("res://Asteroid.tscn")
var timer = 20


func _ready():
	set_process(true)
	for i in range(0, 3):
		spawn()

func _process(delta):
	timer -= delta
	if timer <= 0:
		for i in range(0, 3):
			spawn()
		timer = 20

func spawn():
	var inst = astrd.instance()
	inst.position = (Vector2(randi() % 1024, randi() % 600))
	inst.linear_velocity = Vector2(randi() % 50 + 10, randi() % 50 + 10)
	inst.rotation_degrees = randi() % 360
	self.add_child(inst)
