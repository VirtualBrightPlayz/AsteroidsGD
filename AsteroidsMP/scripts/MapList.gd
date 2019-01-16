extends ItemList

func _ready():
	add_item("New Classic")
	add_item("Slide Bye")
	connect("item_selected", self, "_on_ItemList_item_selected")


func _on_ItemList_item_selected(index):
	if index == 0:
		Globals.map = "res://Maps/Classic.tscn"
	if index == 1:
		Globals.map = "res://Maps/Test.tscn"