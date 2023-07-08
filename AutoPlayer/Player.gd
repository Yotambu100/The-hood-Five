extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

const ACTIONS_DICT = {
	"l" :-1, 
	"r" : 1,
	"j" : 0,
	"jr" : 2,
	"jl" : -2,
	"p" : 999
}


var actions = ["r", "l", "j", "jr", "jl", "j"]

#func _ready():
#	actions = get_parent().level_actions
#	get_node("AnimatedSprite2D").play("Idle")

var cur_action = ACTIONS_DICT[actions.pop_front()]
var jumped_this_move = false


func _on_move_timer_timeout():
	if actions.size() == 0:
		get_node("MoveTimer").queue_free()
		cur_action = ACTIONS_DICT["p"]
		#get_tree().quit()
	else:	
		jumped_this_move = false
		cur_action = ACTIONS_DICT[actions.pop_front()]

func _physics_process(delta):
	
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
		
		
	match cur_action:
		ACTIONS_DICT["l"]:
			velocity.x = -1 * SPEED
			
		ACTIONS_DICT["r"]:
			velocity.x = SPEED
			
		ACTIONS_DICT["j"]:
			if is_on_floor() and not jumped_this_move:
				velocity.y = JUMP_VELOCITY
				jumped_this_move = true
			else:
				velocity.x = move_toward(velocity.x, 0, SPEED)
				
		ACTIONS_DICT["jr"]:
			if is_on_floor() and not jumped_this_move:
				velocity.y = JUMP_VELOCITY
				jumped_this_move = true
			elif is_on_floor() and jumped_this_move:
				velocity.x = move_toward(velocity.x, 0, SPEED)
			else:
				velocity.x = SPEED

		ACTIONS_DICT["jl"]:
			if is_on_floor() and not jumped_this_move:
				velocity.y = JUMP_VELOCITY
				jumped_this_move = true
			elif is_on_floor() and jumped_this_move:
				velocity.x = move_toward(velocity.x, 0, SPEED)
			else:
				velocity.x = -1 * SPEED
				
		ACTIONS_DICT["p"]:
			velocity.x = move_toward(velocity.x, 0, SPEED)
			
		
#	if cur_action != ACTIONS_DICT["p"]:
#		# Handle Jump.
#		if cur_action == ACTIONS_DICT["j"] and is_on_floor() and not jumped_this_move:
#			velocity.y = JUMP_VELOCITY
#			jumped_this_move = true
#		# Handle left and right.
#		if cur_action:
#			velocity.x = cur_action * SPEED
#			jumped_this_move = false
#		else:
#			#Stop in the air
#			velocity.x = move_toward(velocity.x, 0, SPEED)
#	else:
#		velocity.x = move_toward(velocity.x, 0, SPEED)
#

	move_and_slide()

