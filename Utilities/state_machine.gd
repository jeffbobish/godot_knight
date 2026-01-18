class_name StateMachine extends Node

@export var initial_state : State = null

@onready var state : State = initial_state

func _ready() -> void:
	for state_node : State in find_children("*", "State"):
		state_node.finished.connect(_transition_to_next_state)
		
	await owner.ready
	state.enter("")
	
func _physics_process(delta: float) -> void:
	state.physics_update(delta)
		
func _transition_to_next_state(next_state_path : String) -> void:
	var previous_state_path := state.name
	state.exit()
	state = get_node(next_state_path)
	state.enter(previous_state_path)
