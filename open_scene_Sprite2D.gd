extends Node2D

var sprite1=Sprite2D.new()
var sprite2=Sprite2D.new()
var sprite3=Sprite2D.new()

	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_texture_button_pressed():
	next_image()
	
func next_image():
	print("next image")
	if (sprite1.visible):
		sprite1.hide()
		sprite2.show()
		print(7)
	else: if (sprite2.visible):
		sprite2.hide()
		sprite3.show()
		print(8)
	else: if (sprite3.visible):
		print(5)
		get_tree().change_scene_to_file("main.tscn")
	


func _on_ready():
	print(9)
	sprite1.texture=load("res://images/StoryBoard/firstStoryBoard.png")
	sprite2.texture=load("res://images/StoryBoard/secondStoryBoard.png")
	sprite3.texture=load("res://images/StoryBoard/thirdStoryBoard.png")

	sprite1.set_scale(Vector2(1,1))
	sprite2.set_scale(Vector2(1,1))
	sprite3.set_scale(Vector2(1,1))

	sprite1.set_position(Vector2(600,320))
	sprite2.set_position(Vector2(600,320))
	sprite3.set_position(Vector2(600,320))
	
	sprite1.show()
	sprite2.hide()
	sprite3.hide()
	
	add_child(sprite1)
	add_child(sprite2)
	add_child(sprite3)
	


func _on_button_pressed():
	next_image()
