extends Estado

func enter():
	jugador.sprite.play("Quieto")
	jugador.velocity.x = 0

func physics_update(delta):
	jugador.velocity.y = jugador.gravedad
	jugador.move_and_slide()
	
	if jugador.is_on_floor() and Input.is_action_just_pressed("salto"):
		get_parent().ir_a_estado_siguiente("Saltando")
		
	if not jugador.is_on_floor():
		get_parent().ir_a_estado_siguiente("Cayendo")
		
	if Input.is_action_pressed("mover_der") or Input.is_action_pressed("mover_izq"):
		get_parent().ir_a_estado_siguiente("Corriendo")
		
	if Input.is_action_pressed("atacar"):
		get_parent().ir_a_estado_siguiente("Atacar")
