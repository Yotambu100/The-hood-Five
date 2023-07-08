extends Node

func death():
	Game.level_is_running = false
	print("you dead man")
	show_Dead_Message()
	
func show_Dead_Message():

	get_tree().get_root().get_node("levelReal1").get_node("CanvasLayer/SpriteDeadMessage2D").show()
	get_tree().get_root().get_node("levelReal1").get_node("CanvasLayer/SpriteDeadMessage2D").set_scale(Vector2(0.5,0.5))
	#get_node("CanvasLayer/SpriteDeadMessage2D").s

