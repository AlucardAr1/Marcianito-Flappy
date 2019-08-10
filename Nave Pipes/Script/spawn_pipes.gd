extends Node2D

onready var naves = preload("res://Nave Pipes/Nave Pipes.tscn")
var start_pos_x = 400

func _ready():
	pass


func _on_timer_timeout():
	Creador_de_naves()
	
func Creador_de_naves():
	var clonar_naves = naves.instance()
	clonar_naves.position = Vector2(start_pos_x, rand_range(30,260))
	add_child(clonar_naves)
