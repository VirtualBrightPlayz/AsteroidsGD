extends Button

func _ready():
	connect("pressed", self, "clicked")

func clicked():
	NetworkLobby.create_server()