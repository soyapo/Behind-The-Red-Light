extends Node2D


var mahsacount = 0 # tedad mahsa haye play shode
var kagancount = 0

func _ready():
	randomize()
	$mahsa.play("1")
	var dialog = Dialogic.start("mahsaline2")
	add_child(dialog)
	mahsacount += 1

func mahsa1():
	mahsacount += 1
	$mahsa.play("2")
	yield(get_tree().create_timer(2), "timeout")
	if mahsacount > 2:
		$AnimationPlayer.play("1")
		var dialog = Dialogic.start("oldmanline2")
		add_child(dialog)
	else:
		$kagan.play("1")
		var dialog = Dialogic.start("kaganline2")
		add_child(dialog)

func oldman1():
	$AnimationPlayer.play("2")
	yield(get_tree().create_timer(2), "timeout")
	$kagan.play("1")
	var dialog = Dialogic.start("kaganline2")
	add_child(dialog)
	
func kagan1():
	kagancount += 1
	$kagan.play("2")
	yield(get_tree().create_timer(2), "timeout")
	if kagancount <= 1:
		$mahsa.play("1")
		var dialog = Dialogic.start("mahsaline2")
		add_child(dialog)
	else:
		get_tree().change_scene("res://ending.tscn")
	
func flowerp2():
	Global.flower += 2
	$flowers.text = str(Global.flower) + " flowers sold"
func flowerp1():
	Global.flower += 1
	$flowers.text = str(Global.flower) + " flowers sold"
