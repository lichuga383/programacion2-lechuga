extends Estado

func enter():
	jugador.sprite.play("Corriendo")

func physics_update(delta):
	if jugador.is_on_floor():
		if Input.is_action_just_pressed("salto"):
			get_parent().ir_a_estado_siguiente("Saltando")
		
		if Input.is_action_pressed("mover_der"):
			jugador.velocity.x = jugador.velocidad
			jugador.move_and_slide()
			jugador.sprite.flip_h = false
		elif Input.is_action_pressed("mover_izq"):
			jugador.velocity.x = -jugador.velocidad
			jugador.move_and_slide()
			jugador.sprite.flip_h = true
		else:
			get_parent().ir_a_estado_siguiente("Quieto")
			
	else:
		get_parent().ir_a_estado_siguiente("Cayendo")
		
