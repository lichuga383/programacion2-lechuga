extends Estado

@export var hitbox : Area2D
@export var poder_ataque : int

func enter():
	jugador.sprite.play("Atacar")

func physics_update(delta):
	for cuerpo in hitbox.get_overlapping_bodies():
		if cuerpo.is_in_group("Enemigos"):
			cuerpo.herir(poder_ataque)
	
	jugador.velocity.x = 0
	jugador.move_and_slide()
	
	if not jugador.sprite.is_playing():
		get_parent().ir_a_estado_siguiente("Quieto")
