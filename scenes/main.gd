extends Node2D

onready var timer = $Timer
onready var labelPregunta = $fondo/Node2D/Label
onready var pataco = $Kekos/AnimatedSprite
onready var estrofa = $AnimationEstrofa

onready var labelUNO = $fondo/A/Label
onready var labelDOS = $fondo/B/Label
onready var labelTRES = $fondo/C/Label

onready var musica = $Audio

var respuestaActual
var seleccion = 1
var puedes
var contador = 0

onready var pregunta1 = preload("res://musica/pregunta1.mp3")
onready var pregunta2 = preload("res://musica/pregunta2.mp3")
onready var pregunta3 = preload("res://musica/pregunta3.mp3")
onready var pregunta4 = preload("res://musica/pregunta4.mp3")
onready var pregunta5 = preload("res://musica/pregunta5.mp3")
onready var pregunta6 = preload("res://musica/pregunta6.mp3")
onready var pregunta7 = preload("res://musica/pregunta7.mp3")
onready var pregunta8 = preload("res://musica/pregunta8.mp3")
onready var pregunta9 = preload("res://musica/pregunta9.mp3")
onready var pregunta11 = preload("res://musica/pregunta11.mp3")

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
			_preguntaNueva("¿Es el opio bueno?", "bluey", 2, pregunta1)
			_prepararRespuestas("si", "no", "depende de la ocasión")
		2:
			_preguntaNueva("¿Cuál ha sido la mejor época del opio?", "doraemon", 3, pregunta2)
			_prepararRespuestas("Está por llegar", "Ahora", "¡Nunca!")
		3:
			_preguntaNueva("Cuando tu madre fume opio ¿Qué harás?", "sonic", 1, pregunta3)
			_prepararRespuestas("Denunciarla a la policía", "Pedirle", "Contarlo en el recreo")
		4:
			_preguntaNueva("¿Cómo se escribe '___' ?", "charmander", 3, pregunta4)
			_prepararRespuestas("Opio", "Opio", "Apio")
		5:
			_preguntaNueva("¿De qué color era la ropa del líder del ejercito francés en la segunda guerra del opio en 1856", "estebanco", 2, pregunta5)
			_prepararRespuestas("#008f39", "Azul, roja y blanca", "Verde opio")
		6:
			_preguntaNueva("¿A cuánto está el gramo de opio?", "pocoyo", 1,  pregunta6)
			_prepararRespuestas("¡No quiero saberlo!", "34$", "El que sea necesario")
		7:
			_preguntaNueva("¿Cómo prefieres el opio?", "peppa", 1, pregunta7)
			_prepararRespuestas("Viéndolo (lejos)", "Viéndolo (cerca)", "Fumándolo")
		8:
			_preguntaNueva("¿Dónde guardaría tu tía Marietta el opio?", "bort", 3, pregunta8)
			_prepararRespuestas("En el sujetador", "En la guantera", "Ya no es mi tía.")
		9:
			_preguntaNueva("El 7 de Enero de 1945 ¿Quién dijo en el Condado de Boone, en Arkansas, en la calle Churchill, a las 22:31, vestido con un sombrero vaquero y una corbata roja, la siguiente frase: 'Me gusta el opio'?", "eufrasio", 2, pregunta9)
			_prepararRespuestas("Una persona", "Un criminal", "Optimus Prime")
		10:
			_preguntaNueva("Pregunta trampa: ¿Es el opio bueno?", "miki", 2, pregunta11)
			_prepararRespuestas("si", "no", "depende de la ocasión")			
	
	
func _prepararRespuestas(uno,dos,tres):
	labelUNO.text = uno
	labelDOS.text = dos
	labelTRES.text = tres
	
func _preguntaNueva(pregunta, keko, respuestaCorrecta, track):	
	
	musica.stream = track
	musica.play()
	
	labelPregunta.text = pregunta
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
	
		
		
		
	
