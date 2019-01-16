extends ItemList

func _ready():
	add_item("Arcade")
	add_item("Wave")
	connect("item_selected", self, "_on_ItemList_item_selected")


func _on_ItemList_item_selected(index):
	if index == 0:
		Globals.mode = 0
	if index == 1:
		Globals.mode = 1