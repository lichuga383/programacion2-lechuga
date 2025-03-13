extends CharacterBody2D

@export var speed = 20

func _physics_process(delta):
	var direccion = Input.get_axis("mover_izq", "mover_der")
	velocity.x = direccion * speed
	move_and_slide()
