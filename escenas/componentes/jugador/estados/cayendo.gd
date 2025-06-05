extends Estado

func enter():
	jugador.sprite.play("Caer")
func physics_update(delta):
	jugador.velocity.y += jugador.gravedad * delta
	
	var direccion = Input.get_axis("mover_izq", "mover_der")
	jugador.velocity.x = direccion * jugador.velocidad
	jugador.move_and_slide()
	if jugador.is_on_floor():
		get_parent().ir_a_estado_siguiente("Quieto")
	
