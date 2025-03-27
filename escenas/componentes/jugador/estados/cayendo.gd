extends Estado

func enter():
	jugador.sprite.play("Caer")
func physics_update(delta):
	jugador.velocity.y = jugador.gravedad
	jugador.move_and_slide()
	if jugador.is_on_floor():
		get_parent().ir_a_estado_siguiente("Quieto")
	
