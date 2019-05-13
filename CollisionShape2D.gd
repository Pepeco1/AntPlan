extends CollisionShape2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# velocidade do giro
var velGiro = 5

# velocidade movimento
var velMov = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	verificaRotacao(delta)

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
	
	if(Input.is_key_pressed(KEY_UP)):
		velMov += Vector2(sin(get_rot()), cos(get_rot())) * delta
	
	pass