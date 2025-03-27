extends Estado

func enter():
	jugador.sprite.play("Quieto")

func physics_update(delta):
	if not jugador.is_on_floor():
		get_parent().ir_a_estado_siguiente("Cayendo")
	if Input.is_action_just_pressed("mover_der") or Input.is_action_just_pressed("mover_izq"):
		get_parent().ir_a_estado_siguiente("Corriendo")
	if Input.is_action_pressed("salto"):
		get_parent().ir_a_estado_siguiente("Saltando")
