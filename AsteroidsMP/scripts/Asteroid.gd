extends RigidBody2D

var newshape
var timer = 2

func _ready():
	set_process(true)
	var size = randi() % 20 + 10
	newshape = PoolVector2Array()
	var start = Vector2(-randf(), -randf())
	newshape.push_back(start * size)
	newshape.push_back(Vector2(-randf(), randf()) * size)
	newshape.push_back(Vector2(-randf(), randf()) * size)
	newshape.push_back(Vector2(randf(), randf()) * size)
	newshape.push_back(Vector2(randf(), randf()) * size)
	newshape.push_back(Vector2(randf(), -randf()) * size)
	newshape.push_back(Vector2(randf(), -randf()) * size)
	newshape.push_back(start * size)
	$CollisionShape2D.shape = ConvexPolygonShape2D.new()
	$CollisionShape2D.shape.points = newshape

func _process(delta):
	timer -= delta
	if timer <= 0:
		update()
		set_process(false)

func randV():
	return randf()

func _draw():
	var color = Color(1.0, 0.0, 1.0)
	if timer > 0:
		color = Color(1.0, 1.0, 0.0)
	draw_circle_arc_poly(20, color)

func draw_circle_arc_poly(size, color):
	var colors = PoolColorArray([color])
	draw_polyline(newshape, color)