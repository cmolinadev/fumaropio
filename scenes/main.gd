extends Node2D

onready var timer = $Timer
onready var labelPregunta = $fondo/Node2D/Label
onready var pataco = $fondo/Sprite

var respuesta = 1
var puedes

var contador = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.
	
func _input(event):	
	if !puedes: return
	
	if Input.is_action_just_pressed("ui_left"):
		respuesta = 1
	if Input.is_action_just_pressed("ui_up"):
		respuesta = 2
	if Input.is_action_just_pressed("ui_right"):
		respuesta = 3
		
func _responder():
	puedes = false;
	timer.start()
		
	
func _on_Timer_timeout():
	puedes = true
	
func _empezar():
	contador+=1
	var texto
	var sprite
	
	match contador:
		1:
			texto = "esta es la pregunta 1"
			sprite = ""
		2:
			texto = "esta es la pregunta 1"
			sprite = ""
		3:
			texto = "esta es la pregunta 1"
			sprite = ""
		4:
			texto = "esta es la pregunta 1"
			sprite = ""
		5:
			texto = "esta es la pregunta 1"
			sprite = ""
		6:
			texto = "esta es la pregunta 1"
			sprite = ""
		7:
			texto = "esta es la pregunta 1"
			sprite = ""
		8:
			texto = "esta es la pregunta 1"
			sprite = ""
		9:
			texto = "esta es la pregunta 1"
			sprite = ""
		10:
			texto = "esta es la pregunta 1"
			sprite = ""

	
	labelPregunta.text = texto
	pataco.texture = sprite
	
