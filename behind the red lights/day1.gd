extends Node2D


func _ready():
	randomize()
	var dialog = Dialogic.start("oldmanline")
	add_child(dialog)
