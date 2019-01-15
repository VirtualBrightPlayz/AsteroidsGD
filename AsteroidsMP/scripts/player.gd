extends KinematicBody2D

const moveSpeed = 200

var bllt = preload("res://Bullet.tscn")

var points_test
var vel = 0
var rvel = 0
var timer = 0.3

func _ready():
	var size = 20
	points_test = PoolVector2Array()
	points_test.push_back(Vector2(-0.5, -1) * size)
	points_test.push_back(Vector2(0, -0.5) * size)
	points_test.push_back(Vector2(0.5, -1) * size)
	points_test.push_back(Vector2(0, 1) * size)
	points_test.push_back(Vector2(-0.5, -1) * size)
	$CollisionShape2D.shape = ConvexPolygonShape2D.new()
	$CollisionShape2D.shape.points = points_test
	set_process(true)
	set_physics_process(true)

func _draw():
	var color = Color(0.0, 1.0, 0.0)
	draw_circle_arc_poly(0, color)

func draw_circle_arc_poly(size, color):
	var colors = PoolColorArray([color])
	draw_polyline(points_test, color)

func _physics_process(delta):
	#vel = Vector2()
	timer -= delta
	vel = lerp(vel, 0, 0.01)
	rvel = lerp(rvel, 0, 0.01)
	if Input.is_action_pressed("up"):
		vel += 5
	if Input.is_action_pressed("down"):
		vel -= 5
	if Input.is_action_pressed("left"):
		rvel -= 0.2
	if Input.is_action_pressed("right"):
		rvel += 0.2
	if Input.is_action_pressed("shoot") and timer <= 0:
		timer = 0.3
		var inst = bllt.instance()
		inst.position = self.position + (Vector2(cos((rotation) + deg2rad(90)), sin((rotation) + deg2rad(90))) * 20)
		inst.linear_velocity = Vector2(cos((rotation) + deg2rad(90)), sin((rotation) + deg2rad(90))) * 300
		inst.rotation_degrees = rotation_degrees
		self.get_parent().add_child(inst)
	
	rotate(rvel * delta)
	
	move_and_slide(Vector2(cos((rotation) + deg2rad(90)), sin((rotation) + deg2rad(90))) * vel)
	
	if is_on_wall():
		if get_slide_collision(get_slide_count() - 1).collider.get_parent().name == "World":
			if get_slide_collision(get_slide_count() - 1).collider.timer <= 0:
				get_node("/root/Game/Globals").score = 0
				get_tree().change_scene("res://Main.tscn")
				print("ded")
		vel *= -0.5
		rvel *= -1