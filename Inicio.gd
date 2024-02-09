extends Node2D

func _ready():
	$AnimationPlayer.play("start")
func _input(event):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().change_scene("res://scenes/main.tscn")

func end():
	get_tree().change_scene("res://scenes/main.tscn")
