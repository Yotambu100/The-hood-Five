extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

const ACTIONS_DICT = {
	"l" :-1, 
	"r" : 1,
	"j" : 0,
	"p" : 999
}


#in the parent node you need to have a var level_actions
var actions = ["p"]

func _ready():
	actions = get_parent().level_actions


var cur_action = ACTIONS_DICT[actions.pop_front()]
var jumped_this_move = false


func _on_move_timer_timeout():
	if actions.size() == 0:
		get_node("MoveTimer").queue_free()
		cur_action = ACTIONS_DICT["p"]
		#get_tree().quit()
	else:	
		cur_action = ACTIONS_DICT[actions.pop_front()]

func _physics_process(delta):
	
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
		
	if cur_action != ACTIONS_DICT["p"]:
		# Handle Jump.
		if cur_action == ACTIONS_DICT["j"] and is_on_floor() and not jumped_this_move:
			velocity.y = JUMP_VELOCITY
			jumped_this_move = true
		# Handle left and right.
		if cur_action:
			velocity.x = cur_action * SPEED
			jumped_this_move = false
		else:
			#Stop in the air
			velocity.x = move_toward(velocity.x, 0, SPEED)
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		

	move_and_slide()

