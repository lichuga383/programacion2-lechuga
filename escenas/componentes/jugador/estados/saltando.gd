extends Estado

func enter():
	jugador.sprite.play("Saltar")
func physics_update(delta):
	if Input.is_action_pressed("salto"):
		jugador.velocity.y = -jugador.gravedad
		jugador.move_and_slide()
