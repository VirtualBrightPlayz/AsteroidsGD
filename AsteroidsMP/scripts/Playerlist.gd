extends ScrollContainer

func _ready():
	set_process(true)

func _process(delta):
	for i in $VBox.get_children():
		$VBox.remove_child(i)
	for i in players.get_children():
		var node = load("res://nodes/PlayerListing.tscn").instance()
		node.name = str(i.get_network_master())
		node.get_node("Label").text = i.playername + str(i.get_network_master())
		$VBox.add_child(node)
