extends Node2D

func _ready():
	$Musica.play()
	pass


func _on_btn_play_pressed():
	get_tree().change_scene("res://Escena/Juego.tscn")
