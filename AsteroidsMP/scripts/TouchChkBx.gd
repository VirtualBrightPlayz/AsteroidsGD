extends CheckBox

func _ready():
	pressed = Globals.touch
	connect("toggled", self, "toggle")

func toggle(press):
	Globals.touch = press
