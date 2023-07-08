extends Node2D

signal spring_loaded()
signal spring_unloaded()

func _on_body_entered(body):
	if body == $"../Player":
		emit_signal("spring_loaded")


func _on_body_exited(body):
	if body == $"../Player":
		emit_signal("spring_unloaded")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
