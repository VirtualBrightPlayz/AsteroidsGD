extends Node

func _ready():
	pass

remote func setInfo(newname):
	var id = get_tree().get_rpc_sender_id()
	players.get_node("./" + str(id)).playername = newname

func changename(newname):
	var id = get_tree().get_network_unique_id()
	players.get_node("./" + str(id)).playername = newname

func create_server():
	if get_tree().network_peer != null:
		return
	var peer = NetworkedMultiplayerENet.new()
	peer.create_server(13400, 5)
	get_tree().network_peer = peer
	peer.connect("peer_connected", self, "peerConn")
	peer.connect("peer_disconnected", self, "peerDisconn")
	peer.connect("connection_failed", self, "connFail")
	peer.connect("connection_succeeded", self, "conned")
	peer.connect("server_disconnected", self, "connTerm")
	spawnPlayerListing(get_tree().get_network_unique_id())
	rpc("setInfo", "Player#")
	changename("Player#")

func create_client():
	if get_tree().network_peer != null:
		return
	var peer = NetworkedMultiplayerENet.new()
	peer.create_client("127.0.0.1", 13400)
	get_tree().network_peer = peer
	peer.connect("peer_connected", self, "peerConn")
	peer.connect("peer_disconnected", self, "peerDisconn")
	peer.connect("connection_failed", self, "connFail")
	peer.connect("connection_succeeded", self, "conned")
	peer.connect("server_disconnected", self, "connTerm")
	#spawnPlayerListing(get_tree().get_network_unique_id())
	#rpc("setInfo", "Player#")
	#changename("Player#")

func peerConn(id):
	spawnPlayerListing(id)
	#rpc("UpdatePlayers")

func spawnPlayerListing(id):
	var node = load("res://nodes/NetworkPlayer.tscn").instance()
	node.set_network_master(id)
	node.name = str(node.get_network_master())
	#node.playername = "Player#" + str(node.get_network_master())
	players.add_child(node)
	return node

func peerDisconn(id):
	players.remove_child(players.get_node("./" + str(id)))

func connFail():
	pass

func conned():
	spawnPlayerListing(get_tree().get_network_unique_id())
	rpc("setInfo", "Player#")
	changename("Player#")

func connTerm():
	pass