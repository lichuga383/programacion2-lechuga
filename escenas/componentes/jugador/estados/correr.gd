extends Estado

func enter():
	jugador.sprite.play("Corriendo")

func physics_update(delta):
	if Input.is_action_pressed("mover_der"):
		jugador.velocity.x = jugador.speed
		jugador.move_and_slide()
		jugador.sprite.flip_h = false
	elif Input.is_action_pressed("mover_izq"):
		jugador.velocity.x = -jugador.speed
		jugador.move_and_slide()
		jugador.sprite.flip_h = true
	
	else:
		get_parent().ir_a_estado_siguiente("Quieto")
		
