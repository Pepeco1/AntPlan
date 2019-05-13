extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# velocidade do giro
var velGiro = 100

# velocidade movimento
var velMov = 200

# direcao do movimento
var dir = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	verificaRotacao(delta)
	verificaMovimento(delta)

	pass



func verificaRotacao(delta):
	var giro = 0
	
	if(Input.is_key_pressed(KEY_RIGHT)):
		giro += 1
	
	if(Input.is_key_pressed(KEY_LEFT)):
		giro -= 1
	
	rotate(deg2rad(velGiro) * delta * giro);
	
	pass
	
func verificaMovimento(delta):
	
	var rotacao = get_global_transform().get_rotation() 
	
	if(Input.is_key_pressed(KEY_SPACE)):
		$AnimatedSprite.play("Movimento")
		dir = Vector2(-sin(rotacao), cos(rotacao)) * -1
		translate(dir * delta * velMov) 
	
	else:
		$AnimatedSprite.play("Parado")
	

	
	pass