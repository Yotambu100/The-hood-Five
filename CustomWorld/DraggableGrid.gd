extends Node2D

@onready var area: Area2D = $Area2D
@onready var _old_position : Vector2 = self.global_position

var _dragging : bool = false

func _ready() -> void:
	SignalHub.connect("grid_position", self._handle_drag)



func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		_dragging = event.pressed
		
		if not _dragging:
			SignalHub.emit_signal("grid_drag_stop", self, self.global_position, _old_position)
	
func _handle_drag(pos : Vector2) -> void:
	if _dragging:
		self.set_global_position(pos)

func update_position(pos : Vector2) -> void:
	_old_position = pos
