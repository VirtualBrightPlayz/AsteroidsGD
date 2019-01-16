extends Label

func _ready():
	text = "-===-\nASTEROIDS\n-===-"
	text += "\nScore: " + str(Globals.score)
	text += "\nHigh Score: " + str(Globals.highscore)