extends CharacterBody2D
 
@export var hp: int

func herir(cantidad : int):
	hp -= cantidad
	
	if hp <=0:
		morir()

func morir():
	queue_free()
