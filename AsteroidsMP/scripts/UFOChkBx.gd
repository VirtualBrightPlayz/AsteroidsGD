extends CheckBox

func _ready():
	pressed = Globals.ufo
	connect("toggled", self, "toggle")

func toggle(press):
	Globals.ufo = press
