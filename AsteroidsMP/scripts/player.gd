extends KinematicBody2D

const moveSpeed = 200

var bllt = preload("res://Bullet.tscn")

var points_test
var vel = 0
var velocity = Vector2()
var rvel = 0
var timer = 0.3
var timer2 = 2
var timer1_2 = 0
var lives = 3

func _ready():
	var size = 20
	points_test = PoolVector2Array()
	points_test.push_back(Vector2(-0.5, -1) * size)
	points_test.push_back(Vector2(0, -0.5) * size)
	points_test.push_back(Vector2(0.5, -1) * size)
	points_test.push_back(Vector2(0, 1) * size)
	points_test.push_back(Vector2(-0.5, -1) * size)
	#$CollisionShape2D.shape = ConvexPolygonShape2D.new()
	#$CollisionShape2D.shape.points = points_test
	if Globals.mode == 1:
		$Label.visible = true
	set_process(true)
	set_physics_process(true)

func _draw():
	var color = Color(0.0, 1.0, 0.0)
	draw_circle_arc_poly(0, color)

func draw_circle_arc_poly(size, color):
	var colors = PoolColorArray([color])
	draw_polyline(points_test, color)

func _physics_process(delta):
	$Label.text = "Lives: " + str(lives)
	timer2 -= delta
	#vel = Vector2()
	timer -= delta
	if timer2 < 0:
		timer2 = 2
		timer1_2 = 0
	vel = lerp(vel, 0, 0.01)
	velocity = velocity.linear_interpolate(Vector2(), 0.01)
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
		timer1_2 += 1
		if timer1_2 >= 5:
			timer = 1.1
			timer1_2 = 0
			timer2 = 2
		var inst = bllt.instance()
		inst.position = self.position + (Vector2(cos((rotation) + deg2rad(90)), sin((rotation) + deg2rad(90))) * 20)
		inst.linear_velocity = Vector2(cos((rotation) + deg2rad(90)), sin((rotation) + deg2rad(90))) * 300
		inst.rotation_degrees = rotation_degrees
		self.get_parent().add_child(inst)
	
	rotate(rvel * delta)
	
	var newvel = Vector2(cos((rotation) + deg2rad(90)), sin((rotation) + deg2rad(90))) * vel * delta
	newvel += velocity
	
	velocity = move_and_slide(newvel)
	
	if is_on_wall():
		if get_slide_collision(get_slide_count() - 1).collider.get_parent().name == "World":
			if get_slide_collision(get_slide_count() - 1).collider.timer <= 0:
				#get_node("/root/Game/Globals").score = 0
				if Globals.mode == 0:
					if Globals.score > Globals.highscore:
						Globals.highscore = Globals.score
					get_tree().change_scene("res://Main.tscn")
				if Globals.mode == 1:
					if lives <= 1:
						get_tree().change_scene("res://Main.tscn")
					else:
						lives -= 1
						var node = get_parent().spawns[randi() % get_parent().spawns.size()]
						position = node.position
						rotation = node.rotation
						vel = 0
						velocity = Vector2()
						rvel = 0
				print("ded")
		if get_slide_collision(get_slide_count() - 1).collider.get_parent().name == "Static":
			if get_slide_collision(get_slide_count() - 1).collider.cankill:
				#get_node("/root/Game/Globals").score = 0
				if Globals.mode == 0:
					if Globals.score > Globals.highscore:
						Globals.highscore = Globals.score
					get_tree().change_scene("res://Main.tscn")
				if Globals.mode == 1:
					if lives <= 1:
						get_tree().change_scene("res://Main.tscn")
					else:
						lives -= 1
						var node = get_parent().spawns[randi() % get_parent().spawns.size()]
						position = node.position
						rotation = node.rotation
						vel = 0
						velocity = Vector2()
						rvel = 0
				print("ded")
		vel *= -0.5
		rvel *= -1