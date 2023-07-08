extends Node2D


@onready var _area : Area2D = $Area2D

var _dragging : bool = false

func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion and _dragging:
		set_global_position(get_global_mouse_position())

func _on_Area2D_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		_dragging = event.pressed
