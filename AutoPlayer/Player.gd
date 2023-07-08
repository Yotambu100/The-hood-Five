extends CharacterBody2D

const SPEED = 300.0
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

const ACTIONS_DICT = {
	"l" :-1, 
	"r" : 1,
	"j" : 0,
	"jr" : 2,
	"jl" : -2,
	"p" : 999
}


var actions = ["p"]
@onready var anim = get_node("AnimatedSprite2D")

func _ready():
	
	actions = get_parent().level_actions
	anim.play("Idle")

var cur_action = ACTIONS_DICT[actions.pop_front()]
var jumped_this_move = false
var anim_is_running = false

func _on_move_timer_timeout():
	if Game.level_is_running:
		if actions.size() == 0:
			get_node("MoveTimer").queue_free()
			cur_action = ACTIONS_DICT["p"]
			#get_tree().quit()
		else:
			if anim_is_running:
				anim.play("Run")
				anim_is_running = true
				
			jumped_this_move = false
			cur_action = ACTIONS_DICT[actions.pop_front()]
	else:		
		if not anim_is_running:
			anim.play("Idle")
			anim_is_running = false
			
		cur_action = ACTIONS_DICT["p"]		



func _physics_process(delta):
	
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
		
		
	match cur_action:
		ACTIONS_DICT["l"]:
			anim.flip_h = false
			velocity.x = -1 * SPEED
			
		ACTIONS_DICT["r"]:
			anim.flip_h = true
			velocity.x = SPEED
			
		ACTIONS_DICT["j"]:
			if is_on_floor() and not jumped_this_move:
				velocity.y = Game.cur_jump_velocity
				jumped_this_move = true
			else:
				velocity.x = move_toward(velocity.x, 0, SPEED)
				
		ACTIONS_DICT["jr"]:
			anim.flip_h = true
			if is_on_floor() and not jumped_this_move:
				velocity.y = Game.cur_jump_velocity
				jumped_this_move = true
			elif is_on_floor() and jumped_this_move:
				velocity.x = move_toward(velocity.x, 0, SPEED)
			else:
				velocity.x = SPEED

		ACTIONS_DICT["jl"]:
			anim.flip_h = false
			if is_on_floor() and not jumped_this_move:
				velocity.y = Game.cur_jump_velocity
				jumped_this_move = true
			elif is_on_floor() and jumped_this_move:
				velocity.x = move_toward(velocity.x, 0, SPEED)
			else:
				velocity.x = -1 * SPEED
				
		ACTIONS_DICT["p"]:
			anim.play("Idle")
			velocity.x = move_toward(velocity.x, 0, SPEED)
			

	move_and_slide()


