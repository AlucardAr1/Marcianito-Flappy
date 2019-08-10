extends Node2D

var score = 0
enum game_state {PLAYING, STOPED}
var state = game_state.PLAYING

func _ready():
	$HUD/score.text = str(score)
	state = game_state.PLAYING
	$Musica.play()
	
	
func Contar_Puntaje():
	score += 1
	$HUD/score.text = str(score)
	$Puntaje.play()
	
	
func Game_Over():
	state = game_state.STOPED
	
	save_date.last_score = score
	
	if score > save_date.best_score:
		save_date.best_score = score
	
	$spawn_pipes/timer.stop()
	$Musica.stop()
	$Marcianito.die()
	


