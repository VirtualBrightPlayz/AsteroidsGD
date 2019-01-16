extends StaticBody2D

export(float) var sizex = 10
export(float) var sizey = 10
export(bool) var cankill = false
var newshape

func _ready():
	var size = randi() % 20 + 10
	newshape = PoolVector2Array()
	newshape.push_back(Vector2(sizex, sizey))
	newshape.push_back(Vector2(sizex, -sizey))
	newshape.push_back(Vector2(-sizex, -sizey))
	newshape.push_back(Vector2(-sizex, sizey))
	newshape.push_back(Vector2(sizex, sizey))

func _draw():
	var color = Color(1.0, 1.0, 1.0)
	if cankill:
		color = Color(1.0, 0.0, 0.0)
	draw_circle_arc_poly(20, color)

func draw_circle_arc_poly(size, color):
	var colors = PoolColorArray([color])
	draw_polyline(newshape, color)