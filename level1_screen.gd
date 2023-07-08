extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

	
func _on_show_next_moves_pressed():
	var text = "fwd --> fwd --> jump --> fwd --> fwd --> jump"
	var font_path = "res://my_font.ttf"
	var font_size = 16
	# Create a label node.
	var label = Label.new()
	label.text = text

	# Position the label.
	label.position = Vector2(100, 100)
#	get_parent(get_child("next_steps_label")).
# Draw the label.
	#label.draw_string(Vector2(100, 100))

