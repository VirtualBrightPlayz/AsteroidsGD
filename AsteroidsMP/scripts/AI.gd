extends KinematicBody2D

var newshape
var size = 20
var timer = 2
var bllt = preload("res://Bullet.tscn")
var velocity = Vector2()
var target = Vector2()

func _ready():
	newshape = PoolVector2Array()
	newshape.push_back(Vector2(0, 1) * size)
	newshape.push_back(Vector2(0.5, 1) * size)
	newshape.push_back(Vector2(1, 0.7) * size)
	newshape.push_back(Vector2(1, 0.3) * size)
	newshape.push_back(Vector2(0.7, 0) * size)
	newshape.push_back(Vector2(0.4, 0) * size)
	newshape.push_back(Vector2(0.4, -0.7) * size)
	newshape.push_back(Vector2(0, -1) * size)
	newshape.push_back(Vector2(-0.4, -0.7) * size)
	newshape.push_back(Vector2(-0.4, 0) * size)
	newshape.push_back(Vector2(-0.7, 0) * size)
	newshape.push_back(Vector2(-1, 0.3) * size)
	newshape.push_back(Vector2(-1, 0.3) * size)
	newshape.push_back(Vector2(-1, 0.7) * size)
	newshape.push_back(Vector2(-0.5, 1) * size)
	newshape.push_back(Vector2(0, 1) * size)
	#$CollisionShape2D.shape = ConvexPolygonShape2D.new()
	#$CollisionShape2D.shape.points = newshape
	set_process(true)

func _draw():
	var color = Color(1.0, 0.5, 0.0)
	draw_circle_arc_poly(0, color)

func draw_circle_arc_poly(size, color):
	var colors = PoolColorArray([color])
	draw_polyline(newshape, color)

func _physics_process(delta):
	timer -= delta
	var player = get_node("../../Player").position
	if timer <= 0:
		timer = 2
		var ray = get_world_2d().get_direct_space_state().intersect_ray(position, player, [self])
		if not ray.empty():
			if ray.collider == get_node("../../Player"):
				var inst = bllt.instance()
				inst.position = self.position + Vector2(player.x - position.x, player.y - position.y).normalized() * 20
				inst.linear_velocity = Vector2(player.x - position.x, player.y - position.y).normalized() * 300
				inst.rotation_degrees = rad2deg(atan2(player.x, player.y))
				inst.set_collision_layer_bit(2, true)
				inst.set_collision_mask_bit(2, true)
				inst.set_collision_layer_bit(1, false)
				inst.set_collision_mask_bit(1, false)
				self.get_node("../../World").add_child(inst)
	velocity = move_and_slide(velocity + (get_parent().get_simple_path(position, player, false)[1] - position).normalized() * 1)