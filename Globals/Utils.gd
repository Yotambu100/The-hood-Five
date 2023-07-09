extends Node

func death():
	Game.level_is_running = false
	print("you dead man")
	show_Dead_Message()
	
func show_Dead_Message():
	if get_tree().get_root().get_node("levelReal1"):
		get_tree().get_root().get_node("levelReal1").get_node("CanvasLayer/SpriteDeadMessage2D").show()
		get_tree().get_root().get_node("levelReal1").get_node("CanvasLayer/SpriteDeadMessage2D").set_scale(Vector2(0.5,0.5))
	
	else: if get_tree().get_root().get_node("level_real_2"):
		get_tree().get_root().get_node("level_real_2").get_node("CanvasLayer/SpriteDeadMessage2D").show()
		get_tree().get_root().get_node("level_real_2").get_node("CanvasLayer/SpriteDeadMessage2D").set_scale(Vector2(0.5,0.5))
	#get_node("CanvasLayer/SpriteDeadMessage2D").s

	else: if get_tree().get_root().get_node("level_real_3"):
		get_tree().get_root().get_node("level_real_3").get_node("CanvasLayer/SpriteDeadMessage2D").show()
		get_tree().get_root().get_node("level_real_3").get_node("CanvasLayer/SpriteDeadMessage2D").set_scale(Vector2(0.5,0.5))
	#get_node("CanvasLayer/SpriteDeadMessage2D").s
	else: if get_tree().get_root().get_node("level_real_4"):
		get_tree().get_root().get_node("level_real_4").get_node("CanvasLayer/SpriteDeadMessage2D").show()
		get_tree().get_root().get_node("level_real_4").get_node("CanvasLayer/SpriteDeadMessage2D").set_scale(Vector2(0.5,0.5))
	#get_node("CanvasLayer/SpriteDeadMessage2D").s
	else: if get_tree().get_root().get_node("level_real_5"):
		get_tree().get_root().get_node("level_real_5").get_node("CanvasLayer/SpriteDeadMessage2D").show()
		get_tree().get_root().get_node("level_real_5").get_node("CanvasLayer/SpriteDeadMessage2D").set_scale(Vector2(0.5,0.5))
	#get_node("CanvasLayer/SpriteDeadMessage2D").s
	else: if get_tree().get_root().get_node("level_real_6"):
		get_tree().get_root().get_node("level_real_6").get_node("CanvasLayer/SpriteDeadMessage2D").show()
		get_tree().get_root().get_node("level_real_6").get_node("CanvasLayer/SpriteDeadMessage2D").set_scale(Vector2(0.5,0.5))
	#get_node("CanvasLayer/SpriteDeadMessage2D").s
	else: if get_tree().get_root().get_node("level_real_7"):
		get_tree().get_root().get_node("level_real_7").get_node("CanvasLayer/SpriteDeadMessage2D").show()
		get_tree().get_root().get_node("level_real_7").get_node("CanvasLayer/SpriteDeadMessage2D").set_scale(Vector2(0.5,0.5))
	#get_node("CanvasLayer/SpriteDeadMessage2D").s
	else: if get_tree().get_root().get_node("level_real_8"):
		get_tree().get_root().get_node("level_real_8").get_node("CanvasLayer/SpriteDeadMessage2D").show()
		get_tree().get_root().get_node("level_real_8").get_node("CanvasLayer/SpriteDeadMessage2D").set_scale(Vector2(0.5,0.5))
	#get_node("CanvasLayer/SpriteDeadMessage2D").s
