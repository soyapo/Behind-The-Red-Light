extends Node2D



func _ready():
	randomize()
	$AnimationPlayer.play("1")
	var dialog = Dialogic.start("oldmanline")
	add_child(dialog)

func oldman1():
	$AnimationPlayer.play("2")
	yield(get_tree().create_timer(2), "timeout")
	$mahsa.play("1")
	var dialog = Dialogic.start("mahsaline")
	add_child(dialog)
	
func mahsa1():
	$mahsa.play("2")
	yield(get_tree().create_timer(2), "timeout")
	$kagan.play("1")
	var dialog = Dialogic.start("kaganline")
	add_child(dialog)

func kagan1():
	$kagan.play("2")
	get_tree().change_scene("res://day2tr.tscn")
func flowerp2():
	Global.flower += 2
	$flowers.text = str(Global.flower) + " flowers sold"
func flowerp1():
	Global.flower += 1
	$flowers.text = str(Global.flower) + " flowers sold"
