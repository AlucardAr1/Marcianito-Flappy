extends Node2D

var game
var speed = 250

func _ready():
	game = get_tree().current_scene
	
func _process(delta):
	
	if game.state == game.game_state.PLAYING:
		var pos_x = position.x
		pos_x -= speed * delta
		position.x = pos_x
		
	if position.x < -100:
		queue_free()
		


func _on_Area_body_entered(body):
	if game.state == game.game_state.PLAYING:
		if body.name == "Marcianito":
			game.Game_Over()



func _on_Area_Score_body_entered(body):
	if game.state == game.game_state.PLAYING:
		if body.name == "Marcianito":
			game.Contar_Puntaje()
