class_name PlayerState extends State

const IDLE = "Idle"
const RUNNING = "Running"
const JUMPING = "Jumping"
const FALLING = "Falling"
const ATTACKING = "Attack"

var player : Player

func _ready() -> void:
	await owner.ready
	player = owner as Player
	
