extends Estado

func enter():
	jugador.sprite.play("Saltar")
	jugador.velocity.y = -jugador.impulso_salto

func physics_update(delta):
	jugador.velocity.y += jugador.gravedad * delta
	
	var direccion = Input.get_axis("mover_izq","mover_der")
	jugador.velocity.x = direccion * jugador.velocidad
	
	jugador.move_and_slide()
	
	if jugador.velocity.y > jugador.gravedad:
		get_parent().ir_a_estado_siguiente("Cayendo")
	
	if jugador.is_on_floor():
		get_parent().ir_a_estado_siguiente("Quieto")
