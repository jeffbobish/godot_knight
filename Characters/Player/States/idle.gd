extends PlayerState

func enter(previous_state_path : String):
	player.velocity = 0.0
	player.animation.play("Idle")
	
func physics_update(_delta:float) -> void:
	player.velocoty.y -+ player.gravity * _delta
	player.move_and_slide()

	if not player.is_on_floor():
		finished.emit(FALLING)
	elif Input.is_action_just_pressed("jump"):
		finished.emit(JUMPING)
	elif Input.is_action_just_pressed("attack"):
		finished.emit(ATTACKING)
	elif Input.is_action_pressed("left") or Input.is_action_pressed("right"):
		finished.emit(RUNNING)

			
