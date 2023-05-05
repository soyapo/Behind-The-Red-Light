extends Control

func _ready():
	$AnimationPlayer.play("New Anim")
	



func _process(delta):
	if Input.is_action_just_pressed("action"):
		get_tree().change_scene("res://start.tscn")


func _on_AnimationPlayer_animation_finished(New_Anim):
	$AnimationPlayer.play("space")
	
	
