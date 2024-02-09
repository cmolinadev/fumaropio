extends Node2D

onready var timer = $Timer
onready var labelPregunta = $fondo/Node2D/Label
onready var pataco = $Kekos/AnimatedSprite
onready var estrofa = $AnimationEstrofa


var respuestaActual
var seleccion = 1
var puedes

var contador = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationEstrofa.play("pregunta")
	pass # Replace with function body.
	
func _input(event):	
	if !puedes: return
	
	if Input.is_action_just_pressed("ui_left"):
		print("ppe")
		seleccion = 1
	if Input.is_action_just_pressed("ui_up"):
		seleccion = 2
	if Input.is_action_just_pressed("ui_right"):
		seleccion = 3
		
func _responder():
	puedes = false;
	timer.start()		
	
func _on_Timer_timeout():
	puedes = true
	
func _empezar():
	puedes = true
	var respuestaActual = null
	
	contador+=1
	var sprite
	
	match contador:
		1:
			_preguntaNueva("esta es la pregunta 1", "bluey", 2)
		2:
			_preguntaNueva("esta es la pregunta 2", "doraemon", 3)
		3:
			_preguntaNueva("esta es la pregunta 3", "sonic", 1)
		4:
			_preguntaNueva("esta es la pregunta 4", "charmander", 3)
		5:
			_preguntaNueva("esta es la pregunta 5", "estebanco", 2)
		6:
			_preguntaNueva("esta es la pregunta 6", "pocoyo", 1)
		7:
			_preguntaNueva("esta es la pregunta 7", "peppa", 1)
		8:
			_preguntaNueva("esta es la pregunta 8", "bort", 3)
		9:
			_preguntaNueva("esta es la pregunta 1", "eufrasio", 2)
		10:
			_preguntaNueva("esta es la pregunta 1", "miki", 1)
	

	
func _preguntaNueva(pregunta, keko, respuestaCorrecta):
	respuestaActual = respuestaCorrecta
	pataco.play(keko)
	pataco.stop()
	
func _comprobarRespuesta():
	print (seleccion)
	print(respuestaActual)
	if seleccion == respuestaActual:
		pataco.frame = 2
	else:
		pataco.frame = 1
	
		
		
		
	
