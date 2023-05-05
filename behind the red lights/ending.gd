extends Control


func _process(delta):
	if Global.flower>=7:
		$AnimationPlayer.play("good")
		$AudioStreamPlayer.play()
	else:
		$AnimationPlayer.play("bad")
		$AudioStreamPlayer2.play()

