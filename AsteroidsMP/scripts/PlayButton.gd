extends Button

func _ready():
	connect("pressed", self, "clicked")

func clicked():
	Globals.score = 0
	get_tree().change_scene(Globals.map)
