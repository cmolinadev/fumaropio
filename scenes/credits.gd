extends Node2D
var inputed
onready var fotowapa = $Jipmeidf

func _input(event):
	if inputed:
		return
		
	if Input.is_action_just_pressed("ui_left") ||	Input.is_action_just_pressed("ui_right") || Input.is_action_just_pressed("ui_up"):
		
		print("aaaaa")			
		inputed = true
		fotowapa.visible = true
	
	

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
