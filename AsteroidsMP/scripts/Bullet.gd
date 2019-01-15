extends RigidBody2D

var newshape
var timer = 1.0

func _ready():
	contact_monitor = true
	contacts_reported = 5
	set_process(true)
	set_physics_process(true)
	var size = 2
	newshape = PoolVector2Array()
	newshape.push_back(Vector2(1, 1) * size)
	newshape.push_back(Vector2(1, -1) * size)
	newshape.push_back(Vector2(-1, -1) * size)
	newshape.push_back(Vector2(-1, 1) * size)
	newshape.push_back(Vector2(1, 1) * size)
	$CollisionShape2D.shape = ConvexPolygonShape2D.new()
	$CollisionShape2D.shape.points = newshape

func _physics_process(delta):
	if get_colliding_bodies().size() > 0:
		for i in get_colliding_bodies():
			if i.get_parent().name == "World":
				get_node("/root/Game/Globals").score += 1
				i.get_parent().remove_child(i)
				get_parent().remove_child(self)

func _process(delta):
	timer -= delta
	if timer <= 0:
		get_parent().remove_child(self)

func randV():
	return randf()

func _draw():
	var color = Color(1.0, 0.0, 0.0)
	draw_circle_arc_poly(0, color)

func draw_circle_arc_poly(size, color):
	var colors = PoolColorArray([color])
	draw_polyline(newshape, color)