extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("New Anim")


func _on_AnimationPlayer_animation_finished(New_anim):
	get_tree().change_scene("res://day1.tscn")
	
