extends Control

var vida = 100
var max_vida = 300
var magia = 20
var max_magia = 100
var monedas = 120

@onready var barra_vida = $"MagicContainer/Barras container/VidaContainer/ProgressBar2"
@onready var texto_vida = $"MagicContainer/Barras container/VidaContainer/Label"
@onready var barra_magia = $"MagicContainer/Barras container/MagiaContainer/ProgressBar2"
@onready var texto_magia = $"MagicContainer/Barras container/MagiaContainer/Label"
@onready var texto_moneda = $MagicContainer/MonedasContainer/Label


func _ready():
	barra_vida.max_value = max_vida
	barra_magia.max_value = max_magia

func _process(delta):
	barra_vida.value = vida
	texto_vida.text = str(vida)
	barra_magia.value = magia
	texto_magia.text = str(magia)
	

func actualizar_valores():
	barra_vida.max_value = max_vida
	barra_magia.max_value = max_magia
