extends Node2D

func _ready():
	$Anim.play("Animacion")
	$timer.start()
	pass


func _on_timer_timeout():
	get_tree().change_scene("res://Escena/Menu.tscn")
