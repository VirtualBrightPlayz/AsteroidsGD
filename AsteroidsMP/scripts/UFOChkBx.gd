extends CheckBox

func _ready():
	connect("toggled", self, "toggle")

func toggle(press):
	Globals.ufo = press
