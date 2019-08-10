extends RigidBody2D

var is_alive = true

func _ready():
	$Anim.play("Run")
	linear_velocity = Vector2(0,0)

func _process(delta):
	
	if is_alive:
		if linear_velocity.y == 0:
			$Anim.play("Run")
		elif linear_velocity.y < -0.1:
			$Anim.play("fly")
		elif linear_velocity.y > 0.1:
			$Anim.play("fall")
		
func flap():
	linear_velocity = Vector2(0, -450)
	$flap_sf.play()

func _input(event):
	if is_alive:
		if event.is_action_pressed("ui_touch"):
			flap()

func die():
	if is_alive:
		is_alive = false
		$Anim.play("die")
		$die_sf.play()
		linear_velocity = Vector2 (0, -350)


func _on_die_sf_finished():
	get_tree().change_scene("res://Escena/Game_Over.tscn")
