extends Label

func _ready():
	pass

func _process(delta):
	if Globals.mode == 0:
		text = "Score: " + str(Globals.score)
	if Globals.mode == 1:
		text = "Wave: " + str(Globals.score)