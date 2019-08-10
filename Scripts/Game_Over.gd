extends Node2D


func _ready():
	$Musica.play()
	
	$"HUD/Ultimo Puntaje".text = "LAST: " + str(save_date.last_score)
	$"HUD/Mejor Puntaje".text = "BEST: " + str(save_date.best_score)


func _on_btn_volver_pressed():
	get_tree().change_scene("res://Escena/Juego.tscn")


func _on_btn_menu_pressed():
	get_tree().change_scene("res://Escena/Menu.tscn")
