extends Node2D

func _on_body_entered(body):
	if body == $"../Player":
		Game.cur_jump_velocity = Game.JUMP_VELOCITY_SPRING


func _on_body_exited(body):
	if body == $"../Player":
		Game.cur_jump_velocity = Game.JUMP_VELOCITY
		

var _dragging : bool = false

func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion and _dragging:
		if not Game.level_is_running:
			set_global_position(get_global_mouse_position())


func _on_Area2D_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if not Game.level_is_running:
			_dragging = event.pressed
		else:
			_dragging = false

	

